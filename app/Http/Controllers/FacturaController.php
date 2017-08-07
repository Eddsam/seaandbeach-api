<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Factura;

class FacturaController extends Controller
{
    /**
     * @api {get} /facturas Show all the resource.
     * @apiVersion 0.1.0
     * @apiName Getfacturas
     * @apiGroup Factura
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
        $facturas = Factura::all();
        foreach ($facturas as $obj) {
            $obj->apartamento = $obj->apartamento;
            $obj->cierredecajas = $obj->cierredecajas;
            $obj->formadepagos = $obj->formadepagos;
            $obj->ordenes = $obj->ordenes;
        }
        return response()->json(compact('facturas', 200));
    }

    /**
     * @api {post} /facturas Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostOrden
     * @apiGroup Factura
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
        $Factura = new Factura();
        // $Factura->create($request->all());
        $Factura->NumFactura = $request->NumFactura;
        $Factura->EstadoFactura = $request->EstadoFactura;
        $Factura->fecha = $request->fecha;
        $Factura->cajero = $request->cajero;
        $Factura->Apartamento = $request->Apartamento;
        $Factura->save();
        $Factura->ordenes()->attach(json_decode($request->idsOrdenes));
        // => ['NumFactura'=>$request->NumFactura]
        $Factura->formadepagos()->attach(json_decode($request->idsFormasDePago));
        $Factura->cierredecajas()->attach(json_decode($request->idsCierreDeCaja));
        return response()->json(compact('Factura', 200));
    }

    /**
     * @api {get} /facturas/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetOrden
     * @apiGroup Factura
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
        $Factura = Factura::find($id);
        return response()->json(compact('Factura', 200));
    }

    /**
     * @api {patch} /facturas/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchOrden
     * @apiGroup Factura
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
        $Factura = Factura::find($id);
        $Factura->update($request->all());
        //faltaria quitar 
        $Factura->cierredecajas()->attach(json_decode($request->idsCierreDeCaja));
        $Factura->formadepagos()->attach(json_decode($request->idsFormasDePago));
        $Factura->ordenes()->attach(json_decode($request->idsOrdenes));
        $Factura->save();

        return response()->json(compact('Factura', 200));
    }

    public function destroy($id)
    {
    }
}
