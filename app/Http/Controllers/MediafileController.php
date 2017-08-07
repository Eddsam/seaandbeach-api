<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class MediafileController extends Controller
{
    /**
     * Validate video.
     **/
    static public function get_file_url($file)
    {
    	$fileName = $file->getClientOriginalName();
    	$urlFile = pathInfo($fileName);
    	$name = \Uuid::generate(4);

    	$input = array('file' => $file);
    	$rule  = array('file' => 'image');

    	if(!\Validator::make( $input, $rule )->fails())
    		$path = '/assets/images';
    	else
    		$path = '/assets/videos';

    	$file->move( public_path() . $path, $name .'.'. $urlFile['extension'] );
    	$url = $path . '/' . $name .'.'. $urlFile['extension'];
    	return $url;
    }

}
