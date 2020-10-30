<?php

namespace App\Http\Imports;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
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
        // dd($rows);
        $array = [];
        foreach ($rows as $key => $value) {
            // dd($key);
            if ($key > 0) {

                preg_match('#\((.*?)\)#', $value[7], $match);
                // echo $match[1];
                // dd($match[preg_match('#\((.*?)\)#', $value[7], $match)]);

                

                Color::create([
                    'code' => "#".preg_replace("/\([^)]+\)/","",$value[7]) ?? $value[7],
                    'name' => $match[1] ?? '',
                ]);

                // $array['category'] = $value[5];
                // $array['product'] = $value[6];
                
                // $cat = Category::where('name', $value[5])->first();
                // $prod = Product::where('name', $value[6])->first();
                // if ($prod) {
                //     $prod->update(['category_id' => $cat['id']]);
                // }
                // echo "<pre>";
                // var_dump($prod['category_id']);

            }

            // dd($array);
        }

        // foreach ($array as $key => $v) {
        //     $cat = Category::where('name', $v)->first();
        // }

        // dd(count($array));

        // $subArr = [];
        // for ($i=0; $i < count($array); $i++) { 
        //     dd($array[$i]);
        // }
        // foreach ($array as $key => $v) {
        //     $subArr[] = $v;
        // }
        // dd($subArr);
// dd();
//         $rows->forget(0);


//         $path = public_path('uploads/images');
//         $files = File::files($path);
//         $order = 31;
//         $custom_properties  = [
//             'user_id'   => 1,
//             'generated_conversions'   => [
//                 'thumb'   => true,
//                 'icon'   => true,
//             ]
//         ];


//         foreach ($rows as $row) {
//             $product = Product::where('ego_code', $row[1])->first();
//             $images = explode('/', $row[8]);

//             foreach ($images as $image) {
//                 foreach ($files as $file) {

//                     if ($file->getFilenameWithoutExtension() == trim($image)) {
// //                        dd($file->getFilename());
//                         $media = new Media([
//                             'model_type' => 'App\Models\Product',
//                             'model_id' => $product->id,
//                             'collection_name' => 'image',
//                             'name' => $file->getFilenameWithoutExtension(),
//                             'file_name' => $file->getFilename(),
//                             'mime_type' => 'image/' . $file->getExtension(),
//                             'disk' => 'public',
//                             'size' => $file->getSize(),
//                             'manipulations' => [],
//                             'custom_properties' => $custom_properties,
//                             'responsive_images' => [],
//                             'order_column' => $order,
//                         ]);

//                         $media->save();
//                         $order++;

//                     }
//                 }
//             }

//         }


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
