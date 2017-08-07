<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\RolEmpleado;

class RolEmpleadoController extends Controller
{
    /**
     * @api {get} /roles Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetRolEmpleados
     * @apiGroup ROLEMPLEADO
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
        $roles = RolEmpleado::all();
        foreach ($roles as $obj) {
            $obj->empleado = $obj->empleado;
        }
        return response()->json(compact('roles', 200));
    }

    /**
     * @api {post} /roles Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostRolEmpleado
     * @apiGroup ROLEMPLEADO
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
        $rolempleado = new RolEmpleado();
        $rolempleado->DescripcionRol = $request->DescripcionRol;
        $rolempleado->save();

        return response()->json(compact('rolempleado', 200));
    }

    /**
     * @api {get} /roles/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetRolEmpleado
     * @apiGroup ROLEMPLEADO
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
        $rolempleado = RolEmpleado::find($id);
        return response()->json(compact('rolempleado', 200));
    }

    /**
     * @api {patch} /roles/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchRolEmpleado
     * @apiGroup ROLEMPLEADO
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
        $rolempleado = RolEmpleado::find($id);
        $rolempleado->DescripcionRol = $request->DescripcionRol;
        $rolempleado->save();

        return response()->json(compact('rolempleado', 200));
    }

    public function destroy($id)
    {
    }
}
