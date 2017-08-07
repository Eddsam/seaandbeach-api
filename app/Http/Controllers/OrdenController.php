<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Orden;

class OrdenController extends Controller
{
    /**
     * @api {get} /ordenes Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetOrdenes
     * @apiGroup Orden
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
    {// no me esta trayendo todas las relaciones pero si se estan almacenando.
        $ordenes = Orden::all();
        foreach ($ordenes as $obj) {
            $obj->menuitems = $obj->menuitems;
            $obj->mesero = $obj->mesero;
            $obj->cajero = $obj->cajero;

        }
        return response()->json(compact('ordenes', 200));
    }

    /**
     * @api {post} /ordenes Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostOrden
     * @apiGroup Orden
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
        $Orden = new Orden();
        $Orden->Fecha = $request->Fecha;
        $Orden->Empleado_Cedula_Mesero = $request->Empleado_Cedula_Mesero;
        $Orden->Empleado_Cedula_Cajero = $request->Empleado_Cedula_Cajero;
        $Orden->save();
        return response()->json(compact('Orden', 200));
    }

    /**
     * @api {get} /ordenes/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetOrden
     * @apiGroup Orden
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
        $Orden = Orden::find($id);
        $Orden->menuitems = $Orden->menuitems;
        $Orden->mesero = $Orden->mesero;
        $Orden->cajero = $Orden->cajero;
        return response()->json(compact('Orden', 200));
    }

    /**
     * @api {patch} /ordenes/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchOrden
     * @apiGroup Orden
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
        $Orden = Orden::find($id);
        $Orden->update($request->all());
        $Orden->menuitems()->attach(json_decode($request->idsMenuItem));

        return response()->json(compact('Orden', 200));
    }

    public function destroy($id)
    {
    }
}
