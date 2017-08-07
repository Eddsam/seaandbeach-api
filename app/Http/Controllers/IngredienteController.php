<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Ingrediente;

class IngredienteController extends Controller
{
   /**
     * @api {get} /ingredientes Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetIngredientes
     * @apiGroup INGREDIENTE
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
        $ingredientes = Ingrediente::all();
        foreach ($ingredientes as $obj) {
            $obj->tipoingrediente = $obj->tipoingrediente;
        }
        return response()->json(compact('ingredientes', 200));
    }

   
    /**
     * @api {post} /ingredientes Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostIngrediente
     * @apiGroup INGREDIENTE
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
        $ingrediente = new Ingrediente();
        $ingrediente->Nombre = $request->Nombre;
        $ingrediente->idTipoIngrediente = $request->idTipoIngrediente;
        $ingrediente->save();

        return response()->json(compact('ingrediente', 200));
    }


    /**
     * @api {get} /ingredientes/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetIngrediente
     * @apiGroup INGREDIENTE
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
        $ingrediente = Ingrediente::find($id);
        return response()->json(compact('ingrediente', 200));
    }

    /**
     * @api {patch} /ingredientes/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchIngrediente
     * @apiGroup INGREDIENTE
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
        $ingrediente = Ingrediente::find($id);
        $ingrediente->Nombre = $request->Nombre;
        $ingrediente->idTipoIngrediente = $request->idTipoIngrediente;
        $ingrediente->save();

        return response()->json(compact('ingrediente', 200));
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
