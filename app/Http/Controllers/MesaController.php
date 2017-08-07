<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Mesa;

class MesaController extends Controller
{
    /**
     * @api {get} /mesas Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetMesas
     * @apiGroup Mesa
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
        $mesas = Mesa::all();
        return response()->json(compact('mesas', 200));
    }

    /**
     * @api {post} /mesas Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostMesa
     * @apiGroup Mesa
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
        $Mesa = new Mesa();
        $Mesa->DetalleMesa = $request->DetalleMesa;
        $Mesa->save();

        return response()->json(compact('Mesa', 200));
    }

    /**
     * @api {get} /mesas/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetMesa
     * @apiGroup Mesa
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
        $Mesa = Mesa::find($id);
        return response()->json(compact('Mesa', 200));
    }

    /**
     * @api {patch} /mesas/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchMesa
     * @apiGroup Mesa
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
        $Mesa = Mesa::find($id);
        $Mesa->DetalleMesa = $request->DetalleMesa;
        $Mesa->save();

        return response()->json(compact('Mesa', 200));
    }

    public function destroy($id)
    {
    }
}
