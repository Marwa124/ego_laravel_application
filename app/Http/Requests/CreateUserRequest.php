<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\Models\User;

class CreateUserRequest extends FormRequest
{

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    // public function rules()
    // {
    //     User::$rules['password'] = 'required|string|min:6';
    //     User::$rules['email'] = 'required|string|email|max:255|unique:users';
    //     return User::$rules;
    // }

    public function rules()
    {
        return [
            // 'phone'      => 'required|regex:/(^\+(?:[0-9]?){6,14}[0-9]$)|(^01(1|2|0|5)[0-9]{8}$)/',
            'phone'      => array(
                'required',
                'regex:/(^\+(?:[0-9]?){6,14}[0-9]$)|(^01(1|2|0|5)[0-9]{8}$)/'
            ) ,
            // 'required|regex:/(^\+(?:[0-9]?){6,14}[0-9]$)|(^01(1|2|0|5)[0-9]{8}$)/',
            'password'   => 'required|min:6|confirmed',
            'email'      => 'required|string|email|max:255|unique:users,email|confirmed',
        ];
    }

    public function messages()
    {
        return [
            'phone.regex' => 'enter a valid phone number',
            'phone.required' => 'Phone is required',
            'password.min' => 'password has to be minimum 8 chars',
            'password.confirmed' => 'password confirmation is invalid',
            'email.confirmed' => 'email confirmation is invalid',
            'email.unique' => 'email has to be unique'

        ];
    }
}
