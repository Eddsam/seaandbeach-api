<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\MenuItem;

class MenuItemController extends Controller
{
    /**
     * @api {get} /menu_items Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetMenuItems
     * @apiGroup MenuItem
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
        $menu_items = MenuItem::all();
        foreach ($menu_items as $obj) {
            $obj->ofertaitems = $obj->ofertaitems;
            $obj->categoriaitem = $obj->categoriaitem;
            $obj->ingredientes = $obj->ingredientes;
        }
        return response()->json(compact('menu_items', 200));
    }

    /**
     * @api {post} /menu_items Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostMenuItem
     * @apiGroup MenuItem
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
        $MenuItem = new MenuItem();
        $MenuItem->NombrePlato = $request->NombrePlato;
        $MenuItem->Descripcion = $request->Descripcion;
        $MenuItem->Precio = $request->Precio;
        $MenuItem->Estado = $request->Estado;
        $MenuItem->idCategoriaItem = $request->idCategoriaItem;
        $MenuItem->ingredientes()->attach(json_decode($request->idsIngredientes));
        $MenuItem->save();

        return response()->json(compact('MenuItem', 200));
    }

    /**
     * @api {get} /menu_items/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetMenuItem
     * @apiGroup MenuItem
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
        $MenuItem = MenuItem::find($id);
        return response()->json(compact('MenuItem', 200));
    }

    /**
     * @api {patch} /menu_items/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchMenuItem
     * @apiGroup MenuItem
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
        $MenuItem = MenuItem::find($id);
        $MenuItem->NombrePlato = $request->NombrePlato;
        $MenuItem->Descripcion = $request->Descripcion;
        $MenuItem->Precio = $request->Precio;
        $MenuItem->Estado = $request->Estado;
        $MenuItem->idCategoriaItem = $request->idCategoriaItem;
        $MenuItem->ingredientes()->attach(json_decode($request->idsIngredientes));
        $MenuItem->save();

        return response()->json(compact('MenuItem', 200));
    }

    public function destroy($id)
    {
    }
}
