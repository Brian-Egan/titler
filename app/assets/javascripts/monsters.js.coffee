# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).delegate ".refreshMonster", "click", ->
  $.get('/random', "allData", null, "script")
  return false


$(document).delegate ".sortDate", "click", ->
	console.log "hello"
	sStyle = {sort: "sortDate"}
	console.log sStyle
	$.get('/monsters', sStyle, null, "script")
	return false

$(document).delegate ".sortLikes", "click", ->
	console.log "hello"
	sStyle = {sort: "sortLikes"}
	console.log sStyle
	$.get('/monsters', sStyle, null, "script")
	return false

# $(document).delegate ".likeBtn", "click", ->
# 	aID = this.id;
# 	mID = aID.substr(aID.length - 1);
# 	idObj = {id: mID}
# 	# console.log(mID);
# 	# console.log("got id?");
# 	mPath = "/monsters/" + mID + "/likeMon"
# 	console.log(mPath);
# 	$.get(mPath, idObj, null, "script");
# 	return false;


$('.likeBtn').click ->
	aID = this.id;
	mID = aID.substr(aID.length - 1);
	idObj = {id: mID}
	# console.log(mID);
	# console.log("got id?");
	mPath = "/monsters/" + mID + "/likeMon"
	console.log(mPath);
	$.get(mPath, idObj, null, "script");
	return false;


# $('.mPageNum').click ->
# 	console.log("page num clicked");
	# return false


$(document).delegate ".mPageNum", "click", ->
	console.log("delegate worked!");
	console.log($(this).parent());
	myLi = $(this).parent();
	myLi.addClass("active");
	# $(this).parent().addClass('active');



