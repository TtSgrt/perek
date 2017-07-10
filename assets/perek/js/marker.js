// stupid way to call
$(document).ready(function(){
    $('.date').each(function(){
        var row_date = Date.parse($(this).text().replace(/(\d{2})\/(\d{2})\/(\d{4})/, '$2/$1/$3'));
        var now_date = new Date().getTime();
        if(row_date < now_date){
            $(this).addClass('expired');
        }
    });
});

// stupid way to recall
$(document).ajaxComplete(function(){
    $('.date').each(function(){
        var row_date = Date.parse($(this).text().replace(/(\d{2})\/(\d{2})\/(\d{4})/, '$2/$1/$3'));
        var now_date = new Date().getTime();
        if(row_date < now_date){
            $(this).addClass('expired');
        }
    });
});
