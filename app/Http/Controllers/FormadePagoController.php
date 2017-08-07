<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\FormadePago;

class FormadePagoController extends Controller
{
    /**
     * @api {get} /formadepagos Show all the resource.
     * @apiVersion 0.1.0
     * @apiName Getformadepagos
     * @apiGroup FormadePago
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
        $formadepagos = FormadePago::all();
        return response()->json(compact('formadepagos', 200));
    }

    /**
     * @api {post} /formadepagos Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostOrden
     * @apiGroup FormadePago
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
        $FormadePago = new FormadePago();
        $FormadePago->create($request->all());
        return response()->json(compact('FormadePago', 200));
    }

    /**
     * @api {get} /formadepagos/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetOrden
     * @apiGroup FormadePago
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
        $FormadePago = FormadePago::find($id);
        return response()->json(compact('FormadePago', 200));
    }

    /**
     * @api {patch} /formadepagos/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchOrden
     * @apiGroup FormadePago
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
        $FormadePago = FormadePago::find($id);
        $FormadePago->update($request->all());
        // $FormadePago->menuitems()->attach(json_decode($request->idsMenuItem));

        return response()->json(compact('FormadePago', 200));
    }

    public function destroy($id)
    {
    }
}
