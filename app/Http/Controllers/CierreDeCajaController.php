<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\CierreDeCaja;

class CierreDeCajaController extends Controller
{
   /**
     * @api {get} /cierredecajas Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetCierredecajas
     * @apiGroup CierreDeCaja
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
        $cierredecajas = CierreDeCaja::all();
        return response()->json(compact('cierredecajas', 200));
    }

    /**
     * @api {post} /cierredecajas Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostOrden
     * @apiGroup CierreDeCaja
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
        $CierreDeCaja = new CierreDeCaja();
        $CierreDeCaja->create($request->all());
        return response()->json(compact('CierreDeCaja', 200));
    }

    /**
     * @api {get} /cierredecajas/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetOrden
     * @apiGroup CierreDeCaja
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
        $CierreDeCaja = CierreDeCaja::find($id);
        return response()->json(compact('CierreDeCaja', 200));
    }

    /**
     * @api {patch} /cierredecajas/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchOrden
     * @apiGroup CierreDeCaja
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
        $CierreDeCaja = CierreDeCaja::find($id);
        $CierreDeCaja->update($request->all());
        // $CierreDeCaja->menuitems()->attach(json_decode($request->idsMenuItem));

        return response()->json(compact('CierreDeCaja', 200));
    }

    public function destroy($id)
    {
    }
}
