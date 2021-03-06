var tableRow;
var table;
var mapOfMovies = {};
var responsiveHelper_datatable_tabletools = undefined;
var ifUserSelectedFlag = false;
var breakpointDefinition = {
    tablet: 1024,
    phone: 480
};

$(document).ready(function () {
    listAllMoviesWithRatings();
});

function saveRatings() {
    $('#user-rating-form').on('change', '[name="rating"]', function () {
        alert("hello");
        //$('#selected-rating').text($('[name="rating"]:checked').val());
    });
}



function listAllMoviesWithRatings() {
    $('#loadingModal').modal('show');
    $.ajax({
        type: "GET",
        dataType: "json",
        url: "getAllMoviesWithRatings",
        success: function (data) {
            loadTable(data);
            $('#loadingModal').modal('hide');

        }, error: function (data, status) {
        }
    });
}

function loadTable(data) {
    if (data['returnCode'] == '200') {
        var movieTable = $('#movies_table').DataTable({
            "bLengthChange": false,
            "pageLength": 7,
            "columnDefs": [
                {className: "dt-body-right", "targets": []},
                {
                    "targets": [0],
                    "visible": false,
                    "searchable": false
                }
            ],
            "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-12'f>" +
            "t" +
            "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",

            "preDrawCallback": function () {
                // Initialize the responsive datatables helper once.
                if (!responsiveHelper_datatable_tabletools) {
                    responsiveHelper_datatable_tabletools =
                        new ResponsiveDatatablesHelper($('#movies_table'), breakpointDefinition);
                }
            },
            "rowCallback": function (nRow) {
                responsiveHelper_datatable_tabletools.createExpandIcon(nRow);
            },
            "drawCallback": function (oSettings) {
                responsiveHelper_datatable_tabletools.respond();
            }
        });

        movieTable.clear();

        jQuery.each(data['Payload'], function (index, value) {
            var r = [];

            r[0] = value['movieId'];
            r[1] = value['name'];
            r[2] = value['genres'];
            r[3] = averageStar(value['avgRating']);
            r[4] = userStar(value['movieId']);



            movieTable.row.add(r);

        });

        movieTable.draw();
    } else {
        showToastr(data['message'], 'Error', 'error');
    }
}

function averageStar(value) {
    var stmt = "<td>";
    for(var i=0; i< value ;i++){
        stmt+='<i style="color: red; font-size: x-large;" class="fa fa-star fa-lg fa-fw"></i>';
    }
    stmt+='</td>';
    return stmt;
}

function check(val, value) {
    if (val == value) {
        return 'checked';
    }
}

function userStar(movieId) {
    var stmt = "";
    stmt = "<span><div>" +
        "<form id='user-rating-form'>" +
        "<span class='user-rating'>" +
        "<input type='radio' name='user-ratings' style='margin-left:2px' value='" + movieId + "~5'><span class='star'></span>" +
        "<input type='radio' name='user-ratings' style='margin-left:2px' value='" + movieId + "~4'><span class='star'></span>" +
        "<input type='radio' name='user-ratings' style='margin-left:2px' value='" + movieId + "~3'><span class='star'></span>" +
        "<input type='radio' name='user-ratings' style='margin-left:2px' value='" + movieId + "~2'><span class='star'></span>" +
        "<input type='radio' name='user-ratings' style='margin-left:2px' value='" + movieId + "~1'><span class='star'></span>" +
        "</span>" +
        "</form> </div> </span> ";
    return stmt;
}
$("#movies_table").on('click', 'input[name=user-ratings]', function (e) {
    $('#saveRatings').css('-webkit-transform', 'scale(1.1)');
    $('#saveRatings').css('background-color', '#003153');
    var value = $(this).val();
    var movieId = value.split('~')[0];
    var rating = value.split('~')[1];
    mapOfMovies[movieId] = rating;
    ifUserSelectedFlag = true;

})

$("#saveRatings").click(function (e) {
    if(ifUserSelectedFlag){
        $('#loadingModal').modal('show');
        $.ajax({
            type: "POST",
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            url: "saveRatings",
            data: JSON.stringify(mapOfMovies),
            dataType: "json",
            success: function (data, status) {
                if (data['returnCode'] == '200') {
                    //$('#test').text("HELLO");
                    $('#modalHeaderContent').text("Congratulation");
                    $('#modalBodyContent').text("You Have Successfully Rated..!!!");
                    $('#redirect-btn').show();
                    $('#success-close').show();
                    $('#error-close').hide();
                    $('#myModal').modal('show');
                    $('#loadingModal').modal('hide');

                }
                else {
                }
            }, error: function (xhr) {
            }
        });
    }else{
        $('#modalHeaderContent').text("Sorry");
        $('#modalBodyContent').text("You Have Not Rated");
        $('#redirect-btn').hide();
        $('#success-close').hide();
        $('#myModal').modal('show');

    }
});

$('#redirect-btn').click(function(){
    window.location.replace("home");
});

$('#success-close').click(function(){
    window.location.replace("rateMovies");
});


