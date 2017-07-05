// 전체 선택 스크립트
$(document).ready(function () {
    $("input[type='checkbox']").click(function () {
        if ($(this).attr("id") == "checkAll") {
            $("input[id!='checkAll']").attr("checked", $(this).is(":checked"));
        } else {
            var checked = $(this).is(":checked");
            if (!checked) {
                $("#checkAll").attr("checked", false);
            }
        }
    });

    $('.chk').on("click", function () {

        // var chkBox = [];

        var eqValue = [];

        var toValue = "";

        // $("input[name='chk']:checked").val(function (i) {
        $("input[name='box']:checked").each(function (i) {
            eqValue.push($(this).val());

            // toValue = $(this).val();

            // var eqValue = $("input[name=box]:eq(" + i + ")").val() ;

            console.log("투 밸류 : " + eqValue) ;
            // console.log(value + ":" + eqValue) ;

            // console.log("체크박스 : " + chkBox.push($(this).val()));
            // console.log("이큐 밸류 eqValue : " + eqValue + "");
        });

        var allData = {toData: eqValue};

        // console.log("올 데이터 allData : " + allData);

        $.ajax({
            url: '/findCondition',
            type: 'GET',
            // dataType: 'text',
            contentType:"application/x-www-form-urlencoded;charset=utf-8", //한글 깨짐 방지
            cache: false,
            // data: JSON.stringify(allData),
            data: allData,
            success: function (data) {

                console.log("성공 : " + data);

                alert("성공!" + data);

                // location.reload();
            },
            error: function (data) {

                alert("실패!" + data + " : " + allData + " : ");

                console.log("실패 : " + data);

            }
        });
    });
});


function selectAll(source) {
    // var checkboxes = document.getElementsByName('box');
    var checkboxes = $('input[name="box"]');
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = source.checked; // '모두 체크'에 체크가 되면 다 체크하고 아니면 다 해제하고!
    }
}



