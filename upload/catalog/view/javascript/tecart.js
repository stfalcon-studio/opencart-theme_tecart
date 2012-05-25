$(document).ready(function () {
    $('#cart > .heading a').die('click');
    $('#cart').die('mouseleave');
    $('#cart > .heading').live('click', function () {
		$('#cart').addClass('active');

		$('#cart').load('index.php?route=module/cart #cart > *');

		$('#cart').live('mouseleave', function () {
			$(this).removeClass('active');
		});
	});
});