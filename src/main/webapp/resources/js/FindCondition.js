
function selectAll(source) {
    // var checkboxes = document.getElementsByName('box');
    var checkboxes = $('input[name="box"]');
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = source.checked; // '모두 체크'에 체크가 되면 다 체크하고 아니면 다 해제하고!
    }
}



