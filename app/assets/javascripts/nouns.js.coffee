# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'click', ".addWordBtn", ->
	console.log("button click")
	form = $("#new_noun")
	submitNounForm form
	return false


$("#new_noun").submit ->
	console.log("form submit")
	form = $(this)
	submitNounForm form
	return false


submitNounForm = (form) ->
	console.log "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
	wordForm = $('#new_noun').serialize()
	console.log(wordForm)
	console.log "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
	$.post $("#new_noun").attr("action"), wordForm, null, "script"
	return false