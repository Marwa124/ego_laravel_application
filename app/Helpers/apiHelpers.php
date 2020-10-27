<?php

use App\Models\Address;

function checkOrCreate($pickupAddress='', $dropOffAddress='', $returnAddress='')
{
    if ($pickupAddress) {
        $addressData = Address::where('firstLine', $pickupAddress['firstLine'])->where('city', $pickupAddress['city'])->first();
        if (!$addressData) {
            $addressData = Address::create($pickupAddress);
        }
    }

    if ($dropOffAddress) {
        $dropOfAddressData = Address::where('firstLine', $dropOffAddress['firstLine'])->where('city', $dropOffAddress['city'])->first();
        if (!$dropOfAddressData) {
            $dropOfAddressData = Address::create($dropOffAddress);
        }
    }

    if ($returnAddress) {
        $returnAddressData = Address::where('firstLine', $returnAddress['firstLine'])->where('city', $returnAddress['city'])->first();
        if (!$returnAddressData) {
            $returnAddressData = Address::create($returnAddress);
        }
    }

    return [
        'pickupAddress' => $pickupAddress ? $addressData->id : '',
        'dropOffAddress' => $dropOffAddress ? $dropOfAddressData->id : '',
        'returnAddress' => $returnAddress ? $returnAddressData->id : '',
    ];
}