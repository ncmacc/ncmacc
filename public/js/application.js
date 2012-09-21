$(document).ready(function() {
    $("#about-link").parent().hover(function() {
	$("#about-link").addClass("selected");
	$("#about-dropdown").show();
    }, function() {
	$("#about-link").removeClass("selected");
	$("#about-dropdown").hide();
    });
    $("#programs-link").parent().hover(function() {
	$("#programs-link").addClass("selected");
	$("#programs-dropdown").show();
    }, function() {
	$("#programs-link").removeClass("selected");
	$("#programs-dropdown").hide();
    });
    $("#event-link").parent().hover(function() {
	$("#event-link").addClass("selected");
	$("#event-dropdown").show();
    }, function() {
	$("#event-link").removeClass("selected");
	$("#event-dropdown").hide();
    });
});
