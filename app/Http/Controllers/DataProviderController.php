<?php

namespace App\Http\Controllers;

use App\Models\Service;
use App\Models\Treatment;
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

    public function saveTreatment(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
        ]);

        $beforeOperationImage = null;
        if ($request->BeforeOperationImage) {
            $beforeOperationImage = $request->BeforeOperationImage->store(
                '/treatment/beforeop/' . date('Y') . '/' . date('m')
            );
        }

        $afterOperationImage = null;
        if ($request->AfterOperationImage) {
            $afterOperationImage = $request->AfterOperationImage->store(
                '/treatment/afterop/' . date('Y') . '/' . date('m')
            );
        }

        Treatment::create([
            'name' => $request->name,
            'description' => $request->description,
            'beforeOperationImage' => $beforeOperationImage,
            'afterOperationImage' => $afterOperationImage,
        ]);
    }

    public function showTreatments(Request $request)
    {
        return Treatment::get();
    }

    public function updateTreatments(Request $request, Treatment $id)
    {
        $id->update($request->all());

        return response(['message' => 'Treatment Updated!']);
    }
}
