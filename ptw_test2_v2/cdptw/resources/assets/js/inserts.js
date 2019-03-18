function getProvince() {
    var city_id = document.getElementById('from').value;

    $.get('searchbyid/' + city_id, function (provinces) {
        $('#to').empty();
        $('#to').append('<option value="">--Chọn thành phố--</option>');
        $.each(provinces, function (index, province) {
            $('#to').append('<option value="'+ province.to_id +'">'+ province.name +'</option>');
        });
    });
}