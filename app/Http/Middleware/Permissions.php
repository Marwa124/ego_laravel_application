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
        'debugbar*'
    ];

    private $exceptControllers = [
        'LoginController',
        'ForgotPasswordController',
        'ResetPasswordController',
        'RegisterController',
        'PayPalController'
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
        // $permission = $request->route()->getName();

        // $routes = app()->routes->getRoutes();
        // $arr = [];
        // foreach ($routes as $key => $value) {
        //     if ($value->getPrefix() == '/client') {
        //         $arr[] = $value->getPrefix();
        //         $arr[] = $value->uri;
        //         $arr[] = $value->getActionMethod();
        //         // $arr[] = $value;
        //         $arr[] = $value->action;
        //         $arr[] = url($value->uri);
        
        //         $routeFormat = str_replace('App\Http\Controllers\\', '', $value->action['controller']);
        //         // dd($v);
        //         return redirect()->action($routeFormat);
        //     }
        // }
        // dd($arr);
        $routeName = $request->route()->getName(); //user.create
        //routes is the name of the column add in permissions table
        $permission = Permission::whereRaw("FIND_IN_SET ('$routeName', name)")->first();
        if($permission)
        {
            if(!auth()->user()->can($permission->name))
            {
            abort('401');
            }
        }
            return $next($request);

        // if ($this->match($request->route()) && auth()->user()->canNot($permission)) {
        //     if ($permission == 'dashboard') {
        //         return redirect(route('users.profile'));
        //     }
        //     throw new UnauthorizedException(403, trans('error.permission') . ' <b>' . $permission . '</b>');
        // }

        // return $next($request);
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