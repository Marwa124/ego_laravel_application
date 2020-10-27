<?php

namespace App\Http\Controllers;

use App\Models\Address;
use App\Models\City;
use App\Models\CityCode;
use App\Models\DeliveryAddress;
use App\Models\DeliveryState;
use App\Models\DeliveryType;
use App\Models\Receiver;
use App\Models\Zone;
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
            $allDeliveries = json_decode($res->getBody()->getContents());
            // var_dump($allDeliveries);
            // dd($allDeliveries);
            
            foreach ($allDeliveries->deliveries as $key => $value) {
                
                $deliveryAddress = DeliveryAddress::where('trackingNumber', $value->trackingNumber)
                ->where('id_api', $value->_id)->first();
                
                if (!$deliveryAddress) {

                    $receiver = Receiver::where('phone', $value->receiver->phone)
                        ->where('email', $value->receiver->email)->first();

                    $dropOffZone = Zone::firstOrCreate([
                        'name' => $value->dropOffAddress->zone->name,
                    ]);

                    $dropOffCity = CityCode::firstOrCreate([
                        'city' => $value->dropOffAddress->city->name,
                    ]);

                    $pickupCity = CityCode::firstOrCreate([
                        'city' => $value->pickupAddress->city->name,
                    ]);

                    $dropOffAddress = Address::firstOrCreate([
                        'district' => $value->dropOffAddress->district,
                        'firstLine' =>  $value->dropOffAddress->firstLine,
                        'secondLine' => $value->dropOffAddress->secondLine,
                        'buildingNumber' => $value->dropOffAddress->buildingNumber,
                        'floor' => $value->dropOffAddress->floor,
                        'apartment' => $value->dropOffAddress->apartment,
                        'zone_id' => $dropOffZone ? $dropOffZone->id : '',
                        'city_id' => $dropOffCity ? $dropOffCity->id : '',
                    ]);

                    $pickupAddress = Address::firstOrCreate([
                        'district' => $value->pickupAddress->district,
                        'firstLine' =>  $value->pickupAddress->firstLine,
                        'secondLine' => $value->pickupAddress->secondLine,
                        'buildingNumber' => $value->pickupAddress->buildingNumber,
                        'floor' => $value->pickupAddress->floor,
                        'apartment' => $value->pickupAddress->apartment,
                        'city_id' => $pickupCity ? $pickupCity->id : '',
                    ]);
                    // dd($pickupAddress);

                    if (!$receiver) {
                        $receiver = Receiver::create([
                            'firstName' => $value->receiver->firstName,
                            'lastName' =>  $value->receiver->lastName,
                            'phone' => $value->receiver->phone,
                            'email' => $value->receiver->email,
                        ]);
                    } //end receiver

                    $deliveryType = DeliveryType::firstOrCreate([
                        'code' => $value->type->code,
                        'type' => $value->type->value,
                    ]);

                    $deliveryState = DeliveryState::firstOrCreate([
                        'code' => $value->state->code,
                        'state' => $value->state->value,
                    ]);

                    $deliveryAddress = DeliveryAddress::create([
                        'id_api'            => $value->_id,
                        'isPaid'            => $value->isPaid,
                        'type_id'           => $deliveryType->id,
                        'notes'             => $value->notes,
                        'dropOffAddress'    => $dropOffAddress->id,
                        'businessReference' => $value->businessReference,
                        'pickupAddress'     => $pickupAddress->id,
                        'receiver_id'       => $receiver->id,
                        'state_id'          => $deliveryState->id,
                        'cod'               => $value->cod,
                        // 'holder'            => $value (Object),
                        'trackingNumber'  => $value->trackingNumber,
                        'createdAtFormat' => $value->creationTimestamp,
                    ]);

                }  
            }
        }

        $fetchDeliveries = DeliveryAddress::all();
        dd($fetchDeliveries);
        

    }

    public function show($id)
    {
        $client = new Client();
        $res = $client->request('GET', env('API_URL') . 'deliveries', [
            'headers' => [
                'Authorization' => 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Im05bGpsQktLTiIsInJvbGVzIjpbIkJVU0lORVNTX0FETUlOIl0sImJ1c2luZXNzQWRtaW5JbmZvIjp7ImJ1c2luZXNzSWQiOiJMQm5lTWpITloiLCJidXNpbmVzc05hbWUiOiJNYXJ3YSBNb3N0YWZhIn0sImVtYWlsIjoibWFyd2FAb25ldGVjZ3JvdXAuY29tIiwiaWF0IjoxNjAzNzE3MzA2LCJleHAiOjE2MDM4MDM3MDZ9.7jopmgEbcRa9uLk-cuV3pnSU5gEFKsgwXQ1Lxfc4aa4',
                'Accept'     => 'application/json',
                // 'X-Foo'      => ['Bar', 'Baz']
            ],
            'query' => [$id],
        ]);
        echo "<pre>";
        echo $res->getStatusCode();
        // "200"
        echo $res->getHeader('content-type')[0];
        // 'application/json; charset=utf8'
        echo $res->getBody();
        dd($res->getStatusCode());

        $deliveryAddress = DeliveryAddress::where('id_api', $id)->first();
        
        dd($deliveryAddress);

    }

}