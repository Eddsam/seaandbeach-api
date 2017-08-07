<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\ModoCierreDeCaja;

class ModoCierredeCajaController extends Controller
{
    /**
     * @api {get} /modocierredecajas Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetModocierredecajas
     * @apiGroup ModoCierreDeCaja
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
        $modocierredecajas = ModoCierreDeCaja::all();
        return response()->json(compact('modocierredecajas', 200));
    }

    /**
     * @api {post} /modocierredecajas Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostOrden
     * @apiGroup ModoCierreDeCaja
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
        $ModoCierreDeCaja = new ModoCierreDeCaja();
        $ModoCierreDeCaja->idModoCierreDeCaja = $request->idModoCierreDeCaja;
        $ModoCierreDeCaja->Descripcion = $request->Descripcion;
        $ModoCierreDeCaja->save();
        return response()->json(compact('ModoCierreDeCaja', 200));
    }

    /**
     * @api {get} /modocierredecajas/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetOrden
     * @apiGroup ModoCierreDeCaja
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
        $ModoCierreDeCaja = ModoCierreDeCaja::find($id);
        return response()->json(compact('ModoCierreDeCaja', 200));
    }

    /**
     * @api {patch} /modocierredecajas/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchOrden
     * @apiGroup ModoCierreDeCaja
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
        $ModoCierreDeCaja = ModoCierreDeCaja::find($id);
        $ModoCierreDeCaja->update($request->all());
        // $ModoCierreDeCaja->menuitems()->attach(json_decode($request->idsMenuItem));

        return response()->json(compact('ModoCierreDeCaja', 200));
    }

    public function destroy($id)
    {
    }}
