<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class InsertflyRequest extends FormRequest
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
            'from' => 'different:to',
            'to' => 'different:from',
            'caltime' => 'required|date|after: 1 month',

        ];
    }
    public function messages()
    {
        return  [
            'from.different' => 'Thành phố đi phải khác thành phố đến',
            'to.different' => 'Thành phố đến phải khác thành phố đi',
            'departure.required' => 'Phải chọn ngày đi',
            'departure.date' => 'Kiểm tra lại ngày đi',
            'caltime.after' => 'Ngày tạo chuyến bay phải lớn hơn hoặc bằng 1 tháng',


        ];
    }
}
