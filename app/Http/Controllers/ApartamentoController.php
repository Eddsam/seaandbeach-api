<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Apartamento;

class ApartamentoController extends Controller
{
    /**
     * @api {get} /apartamentos Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetApartamentos
     * @apiGroup Apartamento
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
        $apartamentos = Apartamento::all();
        return response()->json(compact('apartamentos', 200));
    }

    /**
     * @api {post} /apartamentos Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostApartamento
     * @apiGroup Apartamento
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
        $Apartamento = new Apartamento();
        $Apartamento->Apartamento = $request->Apartamento;
        $Apartamento->Apto = $request->Apto;
        $Apartamento->save();

        return response()->json(compact('Apartamento', 200));
    }

    /**
     * @api {get} /apartamentos/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetApartamento
     * @apiGroup Apartamento
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
        $Apartamento = Apartamento::find($id);
        return response()->json(compact('Apartamento', 200));
    }

    /**
     * @api {patch} /apartamentos/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchApartamento
     * @apiGroup Apartamento
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
        $Apartamento = Apartamento::find($id);
        $Apartamento->Apartamento = $request->Apartamento;
        $Apartamento->Apto = $request->Apto;
        $Apartamento->save();

        return response()->json(compact('Apartamento', 200));
    }

    public function destroy($id)
    {
    }
}
