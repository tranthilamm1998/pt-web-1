<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
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
    public function rules()
    {
        return [
            //
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'name' => 'required',
            'phone' => 'required|between:10,11',

        ];
    }
    public function messages()
    {

        return  [
            'email.required' => 'Bạn phải nhập địa chỉ e-mail!',
            'email.email' => 'Kiểm tra lại địa chỉ email',
            'email.unique' => 'Email đã tồn tại',
            'password.required' => 'Bạn phải nhập password',
            'password.min' => 'Password phải có ít nhất 6 kí tự',
            'name.required' => 'Bạn phải nhập tên',
            'phone.required' => 'Bạn phải nhập số điện thoại',
            'phone.between' => 'Số phải nằm giữa 10 và 11 số',
        ];
//        return parent::messages(); // TODO: Change the autogenerated stub
    }
}
