<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\TipoIngrediente;

class TipoIngredienteController extends Controller
{
    /**
     * @api {get} /tipo_ingredientes Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetTipoIngredientes
     * @apiGroup TIPOINGREDIENTE
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
        $tipo_ingredientes = TipoIngrediente::all();
        foreach ($tipo_ingredientes as $obj) {
            $obj->ingredientes = $obj->ingredientes;
        }
        return response()->json(compact('tipo_ingredientes', 200));
    }

   
    /**
     * @api {post} /tipo_ingredientes Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostTipoIngrediente
     * @apiGroup TIPOINGREDIENTE
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
        $tipo_ingrediente = new TipoIngrediente();
        $tipo_ingrediente->Descripcion = $request->Descripcion;
        $tipo_ingrediente->save();

        return response()->json(compact('tipo_ingrediente', 200));
    }


    /**
     * @api {get} /tipo_ingredientes/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetTipoIngrediente
     * @apiGroup TIPOINGREDIENTE
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
        $tipo_ingrediente = TipoIngrediente::find($id);
        return response()->json(compact('tipo_ingrediente', 200));
    }

    /**
     * @api {patch} /tipo_ingredientes/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchTipoIngrediente
     * @apiGroup TIPOINGREDIENTE
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
        $tipo_ingrediente = TipoIngrediente::find($id);
        $tipo_ingrediente->Descripcion = $request->Descripcion;
        $tipo_ingrediente->save();

        return response()->json(compact('tipo_ingrediente', 200));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
