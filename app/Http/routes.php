<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
use App\User;

Route::auth();
Route::post('/refresh-token', 'Auth\AuthController@refresh');
Route::post('/reset-password', 'Auth\AuthController@recovery_password');
Route::post('/xxx', 'UserController@index');

Route::group(['middleware' => 'jwt.auth'], function() {
    Route::resource('users', 'UserController');
    Route::resource('roles', 'RolEmpleadoController');
    Route::resource('empleados', 'EmpleadoController');

    Route::resource('tipo_ingredientes', 'TipoIngredienteController');
    Route::resource('ingredientes', 'IngredienteController');
    Route::resource('oferta_items', 'OfertaItemController');
    Route::resource('categorias', 'CategoriaController');
    Route::resource('categoria_items', 'CategoriaItemController');
    Route::resource('menu_items', 'MenuItemController');

    Route::resource('ordenes', 'OrdenController');

    Route::resource('mesas', 'MesaController');
    Route::resource('modo_consumos', 'ModoConsumoController');
    Route::resource('apartamentos', 'ApartamentoController');

    Route::resource('reservaciones', 'ReservacionController');
    Route::resource('facturas', 'FacturaController');
    Route::resource('formadepagos', 'FormadePagoController');
    Route::resource('cierredecajas', 'CierreDeCajaController');

    Route::resource('modocierredecajas', 'ModoCierreDeCajaController');
});
