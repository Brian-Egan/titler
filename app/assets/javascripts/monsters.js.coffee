# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).delegate ".refreshMonster", "click", ->
  $.get('/random', "allData", null, "script")
  return false

$(document).delegate ".saveMonster", "click", ->
	$(this).text("Saving...")
	myAdj = $('#myAdj').text();
	myNoun = $('#myNoun').text();
	naMe = myAdj + " " + myNoun
	mData = {name: naMe, adjective: myAdj, noun: myNoun}
	subMit = {utf: "✓", monster: mData}
	$.post('/monsters', subMit, createSavedBtn($(this)), "script")
	# $(this).addClass('text-success', function() {
	# 	$(this).text('Saved!');
	# 	})
		

	#alert(naMe + " has been saved")

	return false

createSavedBtn = (elm) ->
	console.log "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
	console.log(elm + " - sub function")
	elm.addClass('btn-text-success')
	elm.text('Saved!')
	elm.fadeOut('fast')
	elm.fadeIn('slow')

	# console.log(wordForm)
	# console.log "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
	# $.post $("#new_noun").attr("action"), wordForm, null, "script"
	# return false

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

# $(document).delegate ".mPageNum", "click", ->
# 	console.log("delegate worked!");
# 	theLi = $(this).parent();
# 	theUl = theLi.parent();
# 	console.log(theLi);
# 	console.log(theUl.children());
# 	$.each theUl.children(), ->
# 	  $(this).removeClass "active"  if $(this).hasClass("active")
# 	console.log(theLi.hasClass('active'));
	# myLi = $(this).parent();
	# myLi.addClass("active");
	# $(this).parent().addClass('active');

