<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Service;
use App\Models\Treatment;
use Illuminate\Http\Request;

class DataProviderController extends Controller
{
    public function saveService(Request $request)
    {
        $request->validate([
            'type' => 'required',
            'price' => 'required',
        ]);

        Service::create([
            'type' => $request->type,
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

    public function saveArticle(Request $request)
    {
        $request->validate([
            'author' => 'required',
            'title' => 'required',
            'description' => 'required',
        ]);

        $articleImage = null;
        if ($request->ArticleImage) {
            $articleImage = $request->ArticleImage->store(
                '/article/' . date('Y') . '/' . date('m')
            );
        }

        Article::create([
            'author' => $request->author,
            'title' => $request->title,
            'description' => $request->description,
            'articleImage' => $articleImage,
        ]);
    }

    public function showArticles(Request $request)
    {
        if ($request->type) {
            if ($request->type == 'frontendmain') {
                if ($request->search) {
                    $articles = Article::where(
                        'title',
                        'like',
                        '%' . $request->search . '%'
                    )->paginate(5);
                } else {
                    $articles = Article::paginate(5);
                }
            } elseif ($request->type == 'backendmain') {
                $articles = Article::paginate(10);
            } elseif ($request->type == 'frontendpartial') {
                $articles = Article::orderBy('updated_at', 'DESC')
                    ->limit(10)
                    ->get();
            } elseif ($request->type == 'singlearticle') {
                $articles = Article::where('id', $request->id)->get();
            }
        }

        return $articles;
    }

    public function updateArticles(Request $request, Article $id)
    {
        $id->update($request->all());

        return response(['message' => 'Article Updated!']);
    }
}
