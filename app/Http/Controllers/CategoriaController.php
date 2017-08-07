<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Categoria;

class CategoriaController extends Controller
{
   /**
     * @api {get} /categorias Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetCategoriaas
     * @apiGroup Categoria
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
        $categorias = Categoria::all();
        return response()->json(compact('categorias', 200));
    }

    /**
     * @api {post} /categorias Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostCategoria
     * @apiGroup Categoria
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
        $Categoria = new Categoria();
        $Categoria->TipoCategoria = $request->TipoCategoria;
        $Categoria->save();

        return response()->json(compact('Categoria', 200));
    }

    /**
     * @api {get} /categorias/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetCategoria
     * @apiGroup Categoria
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
        $Categoria = Categoria::find($id);
        return response()->json(compact('Categoria', 200));
    }

    /**
     * @api {patch} /categorias/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchCategoria
     * @apiGroup Categoria
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
        $Categoria = Categoria::find($id);
        $Categoria->TipoCategoria = $request->TipoCategoria;
        $Categoria->save();

        return response()->json(compact('Categoria', 200));
    }

    public function destroy($id)
    {
    }
}
