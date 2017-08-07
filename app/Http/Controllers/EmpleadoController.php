<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Empleado;

class EmpleadoController extends Controller
{

     /**
     * @api {get} /empleados Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetEmpleados
     * @apiGroup EMPLEADO
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of resource.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
     *      "empleados": [
     *      {
     *          "Cedula": 1082940074,
     *          "RUT": "1082940074",
     *          "Nombre": "Eduardo",
     *          "Apellido": "Boada",
     *          "Telefono": "3008339122",
     *          "Direccion": "Calle falsa 123",
     *          "Password": "$2y$10$5yS.ea6vQsA3qHa83KipN.7dwQ5yc9orVsiaCSvkLT53qfe5DIa9S",
     *          "CodigoRol": 1,
     *          "Usuario": 1,
     *          "usuario": {
     *              "id": 1,
     *              "identifier": "eddsama",
     *              "password": "$2y$10$H04thcxFujWT6Fs9hRoMr.B4zRkNRIvfrxD0MP7DXrHvjKwyQ42Pa",
     *              "remember_token": null,
     *              "created_at": "2017-06-26 05:12:16",
     *              "updated_at": "2017-06-26 05:12:16",
     *              "deleted_at": null
     *          },
     *          "rolempleado": {
     *              "CodigoRol": 1,
     *              "DescripcionRol": "Administrador"
     *          }
     *      }
     *      ]
     *  }
     */
    public function index()
    {
        $empleados = Empleado::all();
        foreach ($empleados as $obj) {
            $obj->usuario = $obj->usuario;
            $obj->rolempleado = $obj->rolempleado;
        }
        return response()->json(compact('empleados', 200));
    }

    /**
     * @api {post} /empleados Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostEmpleados
     * @apiGroup EMPLEADO
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of resource.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
     *      "empleados": [
     *      {
     *          "Cedula": 1082940074,
     *          "RUT": "1082940074",
     *          "Nombre": "Eduardo",
     *          "Apellido": "Boada",
     *          "Telefono": "3008339122",
     *          "Direccion": "Calle falsa 123",
     *          "Password": "$2y$10$5yS.ea6vQsA3qHa83KipN.7dwQ5yc9orVsiaCSvkLT53qfe5DIa9S",
     *          "CodigoRol": 1,
     *          "idUsuario": 1,
     *          "usuario": {
     *              "id": 1,
     *              "identifier": "eddsama",
     *              "password": "$2y$10$H04thcxFujWT6Fs9hRoMr.B4zRkNRIvfrxD0MP7DXrHvjKwyQ42Pa",
     *              "remember_token": null,
     *              "created_at": "2017-06-26 05:12:16",
     *              "updated_at": "2017-06-26 05:12:16",
     *              "deleted_at": null
     *          },
     *          "rolempleado": {
     *              "CodigoRol": 1,
     *              "DescripcionRol": "Administrador"
     *          }
     *      }
     *    ]
     *  }
     */
    public function store(Request $request)
    {
        $empleado = new Empleado();
        $empleado->Cedula = $request->Cedula;
        $empleado->RUT = $request->RUT;
        $empleado->Nombre = $request->Nombre;
        $empleado->Apellido = $request->Apellido;
        $empleado->Telefono = $request->Telefono;
        $empleado->Direccion = $request->Direccion;
        $empleado->Password = \Hash::make($request->Password); 
        $empleado->idUsuario = $request->idUsuario;
        $empleado->CodigoRol = $request->CodigoRol;
        $empleado->save();

        return response()->json(compact('empleado', 200));
    }

    /**
     * @api {get} /empleados/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetEmpleado
     * @apiGroup EMPLEADO
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of resource.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
      *      "empleados": [
     *      {
     *          "Cedula": 1082940074,
     *          "RUT": "1082940074",
     *          "Nombre": "Eduardo",
     *          "Apellido": "Boada",
     *          "Telefono": "3008339122",
     *          "Direccion": "Calle falsa 123",
     *          "Password": "$2y$10$5yS.ea6vQsA3qHa83KipN.7dwQ5yc9orVsiaCSvkLT53qfe5DIa9S",
     *          "CodigoRol": 1,
     *          "Usuario": 1,
     *          "usuario": {
     *              "id": 1,
     *              "identifier": "eddsama",
     *              "password": "$2y$10$H04thcxFujWT6Fs9hRoMr.B4zRkNRIvfrxD0MP7DXrHvjKwyQ42Pa",
     *              "remember_token": null,
     *              "created_at": "2017-06-26 05:12:16",
     *              "updated_at": "2017-06-26 05:12:16",
     *              "deleted_at": null
     *          },
     *          "rolempleado": {
     *              "CodigoRol": 1,
     *              "DescripcionRol": "Administrador"
     *          }
     *      }
     *      ]
     *  }
     */
    public function show($id)
    {
        $empleado = Empleado::find($id);
        return response()->json(compact('empleado', 200));
    }


    /**
     * @api {patch} /empleados/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchEmpleado
     * @apiGroup EMPLEADO
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of resource.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
     *      "empleados": [
     *      {
     *          "Cedula": 1082940074,
     *          "RUT": "1082940074",
     *          "Nombre": "Eduardo",
     *          "Apellido": "Boada",
     *          "Telefono": "3008339122",
     *          "Direccion": "Calle falsa 123",
     *          "Password": "$2y$10$5yS.ea6vQsA3qHa83KipN.7dwQ5yc9orVsiaCSvkLT53qfe5DIa9S",
     *          "CodigoRol": 1,
     *          "idUsuario": 1,
     *          "usuario": {
     *              "id": 1,
     *              "identifier": "eddsama",
     *              "password": "$2y$10$H04thcxFujWT6Fs9hRoMr.B4zRkNRIvfrxD0MP7DXrHvjKwyQ42Pa",
     *              "remember_token": null,
     *              "created_at": "2017-06-26 05:12:16",
     *              "updated_at": "2017-06-26 05:12:16",
     *              "deleted_at": null
     *          },
     *          "rolempleado": {
     *              "CodigoRol": 1,
     *              "DescripcionRol": "Administrador"
     *          }
     *      }
     *    ]
     *  }
     */
    public function update(Request $request, $id)
    {
        \Log::info($request);
        $empleado = Empleado::find($id);
        // $empleado->Cedula = $request->Cedula;
        $empleado->RUT = $request->RUT;
        $empleado->Nombre = $request->Nombre;
        $empleado->Apellido = $request->Apellido;
        $empleado->Telefono = $request->Telefono;
        $empleado->Direccion = $request->Direccion;
        $empleado->Password = \Hash::make($request->Password);
        $empleado->idUsuario = $request->idUsuario;
        $empleado->CodigoRol = $request->CodigoRol;
        $empleado->save();

        return response()->json(compact('empleado', 200));
    }

    /**
     * @api {delete} /empleados/:id Delete a single element.
     * @apiVersion 0.1.0
     * @apiName DeleteEmpleado
     * @apiGroup EMPLEADO
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of resource.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
     *      "msg": "ok"
     *  }
     *
     * @apiError {JSON} Json error message.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 500 internal server error
     *  {
     *      "msg": "error"
     *  }
     */
    public function destroy($id)
    {
        $empleado = Empleado::find($id);
        $empleado->Estado = 0;
        $empleado->save();
        return response()->json(['msg' => 'ok'], 200);
    }
}
