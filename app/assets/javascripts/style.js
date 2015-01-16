var ready;
ready = function() {

	var datepickerSelector = $('#payment_date');
	datepickerSelector.datepicker({
	  showOtherMonths: true,
	  selectOtherMonths: true,
	  dateFormat: 'd/m/yy',
	  yearRange: '-1:+1'
	}).prev('.input-group-btn').on('click', function (e) {
	  e && e.preventDefault();
	  datepickerSelector.focus();
	});
	$.extend($.datepicker, { _checkOffset: function (inst,offset,isFixed) { return offset; } });

	// Now let's align datepicker with the prepend button
	datepickerSelector.datepicker('widget').css({ 'margin-left': -datepickerSelector.prev('.input-group-btn').find('.btn').outerWidth() + 3 });

	var datepickerSelector = $('#landing_date');
	datepickerSelector.datepicker({
	  showOtherMonths: true,
	  selectOtherMonths: true,
	  dateFormat: 'd/m/yy',
	  yearRange: '-1:+1'
	}).prev('.input-group-btn').on('click', function (e) {
	  e && e.preventDefault();
	  datepickerSelector.focus();
	});
	$.extend($.datepicker, { _checkOffset: function (inst,offset,isFixed) { return offset; } });

	// Now let's align datepicker with the prepend button
	datepickerSelector.datepicker('widget').css({ 'margin-left': -datepickerSelector.prev('.input-group-btn').find('.btn').outerWidth() + 3 });

};

$(document).ready(ready);
$(document).on('page:load', ready);