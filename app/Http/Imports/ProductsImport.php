<?php

namespace App\Http\Imports;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\Importable;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Illuminate\Support\Facades\File;
use Spatie\MediaLibrary\Models\Media;


class ProductsImport implements ToCollection
{
    use Importable;

    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function collection(Collection $rows)
    {


        $rows->forget(0);


        $path = public_path('uploads/images');
        $files = File::files($path);
        $order = 31;
        $custom_properties  = [
            'user_id'   => 1,
            'generated_conversions'   => [
                'thumb'   => true,
                'icon'   => true,
            ]
        ];


        foreach ($rows as $row) {
            $product = Product::where('ego_code', $row[1])->first();
            $images = explode('/', $row[8]);

            foreach ($images as $image) {
                foreach ($files as $file) {

                    if ($file->getFilenameWithoutExtension() == trim($image)) {
//                        dd($file->getFilename());
                        $media = new Media([
                            'model_type' => 'App\Models\Product',
                            'model_id' => $product->id,
                            'collection_name' => 'image',
                            'name' => $file->getFilenameWithoutExtension(),
                            'file_name' => $file->getFilename(),
                            'mime_type' => 'image/' . $file->getExtension(),
                            'disk' => 'public',
                            'size' => $file->getSize(),
                            'manipulations' => [],
                            'custom_properties' => $custom_properties,
                            'responsive_images' => [],
                            'order_column' => $order,
                        ]);

                        $media->save();
                        $order++;

                    }
                }
            }

        }


        // return new Product([
        //     'name' => $row[6],
        //     'color' => $row[7],
        //     'description' => $row[9],
        //     'price' => $row[10],
        //     'ego_code' => $row[1],
        //     'supplier_code' => $row[2],
        // ]);
        // return new Product([
        //     'id' => $row[0],
        //     'name' => $row[1],
        //     'description' => $row[2],
        //     'brand_id' => $row[3],
        // ]);
    }
}
