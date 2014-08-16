
//Do not load default js for ASP Menu
//Remove all inline style
$(function () {

    //Remove added styles on menu from from ASP
    $('#Menu1').removeAttr('style');
    $('#Menu1 [style]').children().removeAttr('style');
    $('#Menu1 [role]').children().removeAttr('role');
    $('#Menu1 [class]').children().removeAttr('class');
    $('#Menu1 [tabindex]').children().removeAttr('tabindex');

    //Added navigation class css needed to render bootstrap menu.
    $('#Menu1 > ul').removeClass().removeAttr('style').removeAttr('role').removeAttr('tabindex').addClass('nav navbar-nav ');
    $('#Menu1 > ul > li > ul').parent().addClass('dropdown').removeAttr('aria-haspopup');
    //Enter dropdown a and put data toggle
    $('.dropdown > a').attr('data-toggle', 'dropdown').append('  <i class="fa fa-caret-square-o-down"></i>');
    //$('.dropdown > a').append(' <a class="caret"></a>');
    //$('.caret').attr('data-toggle', 'dropdown');

    $('.dropdown > a').addClass('dropdown-toggle');
    //$('.caret').addClass('dropdown-toggle');
    $('.dropdown > ul > li').removeAttr('role');
    $('.dropdown > ul').removeAttr('id');
    $('.dropdown > ul').addClass('dropdown-menu').attr('role', 'menu');
    $('.dropdown > ul').removeAttr('style');

    $('#Menu1').removeAttr('id');

    //This is to make active selection
    //Adapted from http://stackoverflow.com/questions/11813498/make-twitter-bootstrap-navbar-link-active
    $('a[href="' + this.location.pathname + '"]').closest('li').addClass('active');

    //Unbind default hover
    $('.dropdown-toggle').attr('onclick', '').off('click');
});
