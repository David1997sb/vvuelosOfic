function postLogin() {
    $.ajax({
        url: "http://localhost:53069/api/login/getUserAuthentication",
        type: "POST",
        data: { apiKey: "23462", method: "POST", ip: "208.74.35.5" },
        dataType: "json",
        success: function (result) {
            switch (result) {
                case true:
                    processResponse(result);
                    break;
                default:
                    resultDiv.html(result);
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
        }
    });
}