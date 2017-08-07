<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\CategoriaItem;

class CategoriaItemController extends Controller
{
    /**
     * @api {get} /categoria_items Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetCategoriaItems
     * @apiGroup CategoriaItem
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of users.
     */
    public function index()
    {
        $categoria_items = CategoriaItem::all();
        return response()->json(compact('categoria_items', 200));
    }

    /**
     * @api {post} /categoria_items Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostCategoriaItem
     * @apiGroup CategoriaItem
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of resource.
     */
    public function store(Request $request)
    {
        $categoria_item = new CategoriaItem();
        $categoria_item->Nombre = $request->Nombre;
        $categoria_item->Foto = $request->Foto;
        $categoria_item->idCategoria = $request->idCategoria;
        $categoria_item->save();

        return response()->json(compact('categoria_item', 200));
    }

    /**
     * @api {get} /categoria_items/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetCategoriaItem
     * @apiGroup CategoriaItem
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of resource.
     */
    public function show($id)
    {
        $categoria_item = CategoriaItem::find($id);
        return response()->json(compact('categoria_item', 200));
    }

    /**
     * @api {patch} /categoria_items/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchCategoriaItem
     * @apiGroup CategoriaItem
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of resource.
     */
    public function update(Request $request, $id)
    {
        $categoria_item = CategoriaItem::find($id);
        $categoria_item->Nombre = $request->Nombre;
        $categoria_item->Foto = $request->Foto;
        $categoria_item->idCategoria = $request->idCategoria;
        $categoria_item->save();

        return response()->json(compact('categoria_item', 200));
    }

    public function destroy($id)
    {
    }
}
