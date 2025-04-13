<?php
 // Added by BGU
namespace App\Http\Middleware;

use Closure;

class MustBeLoggedIn
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // return $next($request); //By default code
        if (auth()->check()) { // Added by BGU
            return $next($request);
        }
        return redirect('/')->with('failure', 'You must be logged in!!'); // Added by BGU
    }
}
