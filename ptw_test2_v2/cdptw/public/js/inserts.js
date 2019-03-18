function getCountriesCity() {
    var country_id = document.getElementById('countryfrom').value;
    $.get('get-cities-by-country-id/' + country_id, function (provinces) {
        $('#cityfrom').empty();
        $('#cityfrom').append('<option value="">--Chọn thành phố--</option>');
        $.each(provinces, function (index, province) {
            $('#cityfrom').append('<option value="'+ province.id +'">'+ province.name +'</option>');
        });
    });
    $.get('get-rela-country-by-country-id/' + country_id, function (countries) {
        $('#countryto').empty();
        $('#countryto').append('<option value="">--Chọn thành phố--</option>');
        $.each(countries, function (index, country) {
            $('#countryto').append('<option value="'+ country.id +'">'+ country.name +'</option>');
        });
    });
}



function getCity() {
    var country_id = document.getElementById('countryto').value;
    $.get('get-cities-by-country-id/' + country_id, function (provinces) {
        $('#cityto').empty();
        $('#cityto').append('<option value="">--Chọn thành phố--</option>');
        $.each(provinces, function (index, province) {
            $('#cityto').append('<option value="'+ province.id +'">'+ province.name +'</option>');
        });
    });

}