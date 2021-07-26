/**
 * 
 */
let file = $('#input-file');
file.on('change', function () {
    let rv = $('#input-file').val();
    $('.file-button').text(rv);
    console.log('hi');
    console.log($('.file-button').text(rv));
});