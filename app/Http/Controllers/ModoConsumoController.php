<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\ModoConsumo;

class ModoConsumoController extends Controller
{
    /**
     * @api {get} /modo_consumos Show all the resource.
     * @apiVersion 0.1.0
     * @apiName Getmodo_consumos
     * @apiGroup ModoConsumo
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
        $modo_consumos = ModoConsumo::all();
        return response()->json(compact('modo_consumos', 200));
    }

    /**
     * @api {post} /modo_consumos Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostModoConsumo
     * @apiGroup ModoConsumo
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
        $ModoConsumo = new ModoConsumo();
        $ModoConsumo->TipoConsumo = $request->TipoConsumo;
        $ModoConsumo->save();

        return response()->json(compact('ModoConsumo', 200));
    }

    /**
     * @api {get} /modo_consumos/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetModoConsumo
     * @apiGroup ModoConsumo
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
        $ModoConsumo = ModoConsumo::find($id);
        return response()->json(compact('ModoConsumo', 200));
    }

    /**
     * @api {patch} /modo_consumos/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchModoConsumo
     * @apiGroup ModoConsumo
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
        $ModoConsumo = ModoConsumo::find($id);
        $ModoConsumo->TipoConsumo = $request->TipoConsumo;
        $ModoConsumo->save();

        return response()->json(compact('ModoConsumo', 200));
    }

    public function destroy($id)
    {
    }
}
