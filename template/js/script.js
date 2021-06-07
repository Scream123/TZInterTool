$(function(){
    //changes the order of the button when clicked
    $('button').on('click', function(){
        $(this).parent().append( $('button')[0] );
    });
});