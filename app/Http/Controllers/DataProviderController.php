<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;

class DataProviderController extends Controller
{
    public function saveService(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'price' => 'required',
        ]);

        Service::create([
            'title' => $request->title,
            'price' => $request->price,
        ]);
    }

    public function showServices(Request $request)
    {
        return Service::get();
    }

    public function updateServices(Request $request, Service $id)
    {
        $id->update($request->all());

        return response(['message' => 'Service Updated!']);
    }
}
