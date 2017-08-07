<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;

class UserController extends Controller
{
    /**
     * @api {get} /users Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetUsers
     * @apiGroup USER
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of users.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
     *      "users": [
     *          {
     *              "id": 1,
     *              "identifier": "1082940074",
     *              "created_at": "2016-12-11 17:22:08",
     *	            "updated_at": "2016-12-11 17:22:08"
     *	        },
     *          { ... },
     *          { ... },
     *      ]
     *  }
     */
    public function index()
    {
        $users = User::all();
        foreach ($users as $user) {
            $user->empleado = $user->empleado;
        }
        return response()->json(compact('users', 200));
    }

    /**
     * @api {post} /users Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostUsers
     * @apiGroup USER
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of users.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
     *      "users": [
     *          {
     *              "id": 1,
     *              "identifier": "1082940074",
     *              "created_at": "2016-12-11 17:22:08",
     *              "updated_at": "2016-12-11 17:22:08"
     *          }
     *      ]
     *  }
     */
    public function store(Request $request)
    {
        $user = new User();
        $user->identifier = $request->identifier; 
        $user->password = \Hash::make($request->password); 
        $user->save();

        return response()->json(compact('user', 200));
    }

    /**
     * @api {get} /users/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetUser
     * @apiGroup USER
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of users.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
     *      "users": [
     *          {
     *              "id": 1,
     *              "identifier": "1082940074",
     *              "created_at": "2016-12-11 17:22:08",
     *              "updated_at": "2016-12-11 17:22:08"
     *          }
     *      ]
     *  }
     */
    public function show($id)
    {
        $user = User::find($id);
        return response()->json(compact('user', 200));
    }

    /**
     * @api {post} /users/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PostUser
     * @apiGroup USER
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of users.
     * @apiSuccessExample {JSON} Success-Response:
     *  HTTP/1.1 200 OK
     *  {
     *      "users": [
     *          {
     *              "id": 1,
     *              "identifier": "1082940074",
     *              "created_at": "2016-12-11 17:22:08",
     *              "updated_at": "2016-12-11 17:22:08"
     *          }
     *      ]
     *  }
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->identifier = $request->identifier; 
        $user->password = \Hash::make($request->password); 
        $user->save();

        return response()->json(compact('user', 200));
    }

    /**
     * @api {delete} /users/:id Delete a single element.
     * @apiVersion 0.1.0
     * @apiName DeleteUser
     * @apiGroup USER
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {JSON} Header-Example:
     *  {
     *      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9..."
     *  }
     *
     * @apiSuccess {JSON} Json list of users.
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
        $user = User::find($id);
        if($user->delete())
            return response()->json(['msg' => 'ok'], 200);
        else
            return response()->json(['msg' => 'error'], 500);
    }
}
