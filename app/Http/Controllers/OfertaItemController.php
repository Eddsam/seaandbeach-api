<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\OfertaItem;

class OfertaItemController extends Controller
{
    /**
     * @api {get} /oferta_items Show all the resource.
     * @apiVersion 0.1.0
     * @apiName GetOfertaItems
     * @apiGroup OfertaItem
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
        $oferta_items = OfertaItem::all();
        foreach ($oferta_items as $obj) {
            $obj->menuitem = $obj->menuitem;
        }
        return response()->json(compact('oferta_items', 200));
    }

    /**
     * @api {post} /oferta_items Creates a new element.
     * @apiVersion 0.1.0
     * @apiName PostOfertaItem
     * @apiGroup OfertaItem
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
        $OfertaItem = new OfertaItem();
        $OfertaItem->Descripcion = $request->Descripcion;
        $OfertaItem->Nombre = $request->Nombre;
        $OfertaItem->Descuento = $request->Descuento;
        $OfertaItem->Fecha = $request->Fecha;
        $OfertaItem->idMenuItem = $request->idMenuItem;
        $OfertaItem->save();

        return response()->json(compact('OfertaItem', 200));
    }

    /**
     * @api {get} /oferta_items/:id Show single resource.
     * @apiVersion 0.1.0
     * @apiName GetOfertaItem
     * @apiGroup OfertaItem
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
        $OfertaItem = OfertaItem::find($id);
        return response()->json(compact('OfertaItem', 200));
    }

    /**
     * @api {patch} /oferta_items/:id Update a single element.
     * @apiVersion 0.1.0
     * @apiName PatchOfertaItem
     * @apiGroup OfertaItem
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
        $OfertaItem = OfertaItem::find($id);
        $OfertaItem->Descripcion = $request->Descripcion;
        $OfertaItem->Nombre = $request->Nombre;
        $OfertaItem->Descuento = $request->Descuento;
        $OfertaItem->Fecha = $request->Fecha;
        $OfertaItem->idMenuItem = $request->idMenuItem;
        $OfertaItem->save();

        return response()->json(compact('OfertaItem', 200));
    }

    public function destroy($id)
    {
    }
}
