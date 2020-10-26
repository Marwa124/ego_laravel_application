<?php

namespace App\Http\Controllers;

use App\Models\Address;
use GuzzleHttp\Client;
use App\Repositories\RoleRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use Illuminate\Http\Request;

// use GuzzleHttp\Psr7\Request;

class ApiBostaController extends Controller
{

    public function index(Request $request)
    {
        $client = new Client();
        $res = $client->request('GET', env('API_URL') . 'deliveries', [
            'headers' => [
                'Authorization' => 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Im05bGpsQktLTiIsInJvbGVzIjpbIkJVU0lORVNTX0FETUlOIl0sImJ1c2luZXNzQWRtaW5JbmZvIjp7ImJ1c2luZXNzSWQiOiJMQm5lTWpITloiLCJidXNpbmVzc05hbWUiOiJNYXJ3YSBNb3N0YWZhIn0sImVtYWlsIjoibWFyd2FAb25ldGVjZ3JvdXAuY29tIiwiaWF0IjoxNjAzNzE3MzA2LCJleHAiOjE2MDM4MDM3MDZ9.7jopmgEbcRa9uLk-cuV3pnSU5gEFKsgwXQ1Lxfc4aa4',
                'Accept'     => 'application/json',
                // 'X-Foo'      => ['Bar', 'Baz']
            ]
        ]);

        if ($res->getStatusCode() == 200) {
            echo "<pre>";
            echo $allDeliveries = json_decode($res->getBody()->getContents());

            // dd(json_decode($res->getBody()->getContents()));
            foreach ($allDeliveries->deliveries as $key => $value) {

                $dropOffAddress = Address::where('firstLine', $value->dropOffAddress->firstLine)
                    ->where('zone_id', $value->dropOffAddress->zone->_id)
                    ->where('city_id', $value->dropOffAddress->city->_id)->first();
                $pickupAddress = Address::where('firstLine', $value->dropOffAddress->firstLine)
                ->where('zone_id', $value->dropOffAddress->zone->_id)
                ->where('city_id', $value->dropOffAddress->city->_id)->first();

                if (!$dropOffAddress) {

                    Address::create([
                        'district' => $value->dropOffAddress->district,
                        'firstLine' =>  $value->dropOffAddress->firstLine,
                        'secondLine' => $value->dropOffAddress->secondLine,
                        'buildingNumber' => $value->dropOffAddress->buildingNumber,
                        'floor' => $value->dropOffAddress->floor,
                        'apartment' => $value->dropOffAddress->apartment,
                        'buildingNumber' => $value->dropOffAddress->buildingNumber,
                        'zone_id' => $value->dropOffAddress->zone->_id ?? '',
                        'city_id' => $value->dropOffAddress->city->_id,
                    ]);

                }
                if (!$pickupAddress) {

                    Address::create([
                        'district' => $value->pickupAddress->district,
                        'firstLine' =>  $value->pickupAddress->firstLine,
                        'secondLine' => $value->pickupAddress->secondLine,
                        'buildingNumber' => $value->pickupAddress->buildingNumber,
                        'floor' => $value->pickupAddress->floor,
                        'apartment' => $value->pickupAddress->apartment,
                        'buildingNumber' => $value->pickupAddress->buildingNumber,
                        'zone_id' => $value->pickupAddress->zone->_id ?? '',
                        'city_id' => $value->pickupAddress->city->_id,
                    ]);

                }
            }
        }
        // echo $res->getStatusCode();
        // // "200"
        // echo $res->getHeader('content-type')[0];
        // // 'application/json; charset=utf8'
        // echo $res->getBody();

    }

}