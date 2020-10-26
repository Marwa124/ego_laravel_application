<?php

namespace App\Http\Controllers\Imports;

use App\Http\Imports\ProductsImport;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class ImportProductController extends Controller
{



    public function product(){
        return view('imports.product');
    }

    public function storeProduct(){
        $data = (new ProductsImport)->toArray(request()->file('file'), null, \Maatwebsite\Excel\Excel::XLSX);
        // dd($data[0]);
        foreach ($data[0] as $key => $value) {
            // $last = Product::where('name', $value[6])->update([ 'discount_price' => $value[11] ]);
            $last = Product::where('name', $value[6])->update([ 'gender_category' => $value[3] ]);
            // $last->update([
            //     'discount_price' => $value[11]

            // ]);
            // $x = new Product([
                // 'name' => $value[6],
                // 'gender_category' => $value[6],
                // // 'color' => $value[7],
                // 'description' => $value[9],
                // 'price' => $value[10],
                // 'ego_code' => $value[1],
                // 'supplier_code' => $value[2],

            // ]);

            // $x->save();

        }

       $v = Excel::import(new ProductsImport(), request()->file('file'), NULL, \Maatwebsite\Excel\Excel::XLSX);
       dd($v);
        return back();
    }
}
