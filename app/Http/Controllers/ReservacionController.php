<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Reservacion;

class ReservacionController extends Controller
{
        /**
     * @api {get} /resercaciones Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetResercaciones
     * @apiGroup Reservacion
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
        $resercaciones = Reservacion::all();
        foreach ($resercaciones as $obj) {
            $obj->mesa = $obj->mesa;
            $obj->modoconsumo = $obj->modoconsumo;
            $obj->apartamento = $obj->apartamento;
        }
        return response()->json(compact('resercaciones', 200));
    }

    /**
     * @api {post} /resercaciones Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostReservacion
     * @apiGroup Reservacion
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
        $Reservacion = new Reservacion();
        $Reservacion->create($request->all());
        return response()->json(compact('Reservacion', 200));
    }

    /**
     * @api {get} /resercaciones/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetReservacion
     * @apiGroup Reservacion
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
        $Reservacion = Reservacion::where('Comanda',$id)->first();
        $Reservacion->mesa = $Reservacion->mesa;
        $Reservacion->modoconsumo = $Reservacion->modoconsumo;
        $Reservacion->apartamento = $Reservacion->apartamento;
        $Reservacion->orden = $Reservacion->orden;
        return response()->json(compact('Reservacion', 200));
    }

    /**
     * @api {patch} /resercaciones/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchReservacion
     * @apiGroup Reservacion
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
        // $Reservacion = Reservacion::where('Comanda',$id)->first();
        // $Reservacion->update($request->all());

        // $Reservacion->mesa()->detach();
        // $Reservacion->mesa()->attach(json_decode($request->idMesa));
        // $Reservacion->modoconsumo()->detach();
        // $Reservacion->modoconsumo()->attach(json_decode($request->idModoConsumo));
        // $Reservacion->apartamento()->detach();
        // $Reservacion->apartamento()->attach(json_decode($request->Apartamento));
        // $Reservacion->orden()->detach();
        // $Reservacion->orden()->attach(json_decode($request->idOrden));

        // return response()->json(compact('Reservacion', 200));
    }

    public function destroy($id)
    {
    }
}
