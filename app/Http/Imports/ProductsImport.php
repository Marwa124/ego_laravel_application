<?php

namespace App\Http\Imports;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\Importable;

class ProductsImport implements ToModel
{
    use Importable;
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        // dd($row[6]);
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
