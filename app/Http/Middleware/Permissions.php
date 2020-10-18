<?php
/**
 * File name: Permissions.php
 * Last modified: 2020.06.07 at 07:02:57
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Exceptions\UnauthorizedException;
use Spatie\Permission\Models\Permission;

class Permissions
{
    private $exceptNames = [
        'LaravelInstaller*',
        'LaravelUpdater*',
        'debugbar*',
        'login',
        'login.submit',

       
    ];

    private $exceptControllers = [
        'LoginController',

        'ForgotPasswordController',
        'ResetPasswordController',
        'RegisterController',
        'PayPalController',

    ];

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(auth()->check()){
            $permission = $request->route()->getName();
          
        if($permission == 'login'){
            return  redirect('front/home');

        }

         $permissions = auth()->user()->getAllPermissions()->pluck('name')->toarray();   

        if ($this->match($request->route()) && !in_array($permission,$permissions) ) {
            throw new UnauthorizedException(403, trans('error.permission') . ' <b>' . $permission . '</b>');
        }

        return $next($request);
    } else {

        $route_name = $request->route()->getName();


         if(in_array($route_name,$this->exceptNames)){
            return $next($request);


         } else {
           return   redirect('login');
         }


    }


    }

    private function match(\Illuminate\Routing\Route $route)
    {
        if ($route->getName() == '' || $route->getName() === null) {
            return false;
        } else {
            if (in_array(class_basename($route->getController()), $this->exceptControllers)) {
                return false;
            }
            foreach ($this->exceptNames as $except) {
                if (str_is($except, $route->getName())) {
                    return false;
                }
            }
        }
        return true;
    }

}