<?php

namespace App\Http\Resources;

use App\Models\DeliveryAddress;
use Illuminate\Http\Resources\Json\ResourceCollection;

use Illuminate\Pagination\LengthAwarePaginator;

class DeliveryCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        // return $request;
        
        // 'deliveries' => $this->collection,
        return [
            'deliveries' => [
                'receiver' => (object) [
                    $this->collection
                ],
            ],
        ];
    }

    public function paginate($perPage, $total = null, $page = null, $pageName = 'page')
    {
        $page = $page ?: LengthAwarePaginator::resolveCurrentPage($pageName);
      
        return new LengthAwarePaginator(
            $this->forPage($page, $perPage),
            $total ?: $this->count(),
            $perPage,
            $page,
            [
                'path' => LengthAwarePaginator::resolveCurrentPath(),
                'pageName' => $pageName,
            ]
        );
    }
}
