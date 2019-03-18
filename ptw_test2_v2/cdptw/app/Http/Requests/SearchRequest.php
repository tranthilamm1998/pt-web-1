<?php

namespace App\Http\Requests;

use Carbon\Carbon;
use Illuminate\Foundation\Http\FormRequest;

class SearchRequest extends FormRequest
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
        $now = Carbon::now()->toDateString();
        return [

            'from' => 'different:to',
            'to' => 'different:from',
            'departure' => 'required|date|date_format:Y-m-d|after_or_equal:now',
            'return' => 'required|date|after:departure',

        ];
    }
    public function messages()
    {
        return  [
            'from.different' => 'Thành phố đi phải khác thành phố đến',
            'to.different' => 'Thành phố đến phải khác thành phố đi',
            'departure.required' => 'Phải chọn ngày đi',
            'departure.date' => 'Kiểm tra lại ngày đi',
            'departure.after_or_equal' => 'Ngày đi phải lớn hơn hoặc bằng ngày hiện tại',
            'return.required' => 'Phải chọn ngày đến',
            'return.date' => 'Kiểm tra lại ngày đến',
            'return.after' => 'Ngày đến phải lớn hơn ngày hiện tại',

        ];
    }
}
