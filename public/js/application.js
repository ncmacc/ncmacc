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
    $("#events-link").parent().hover(function() {
	$("#events-link").addClass("selected");
	$("#event-dropdown").show();
    }, function() {
	$("#events-link").removeClass("selected");
	$("#event-dropdown").hide();
    });
});
