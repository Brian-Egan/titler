# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'click', ".addWordBtn", ->
	console.log("button click")
	form = $("#new_adjective")
	submitAdjectiveForm form
	return false


$("#new_adjective").submit ->
	console.log("form submit")
	form = $(this)
	submitAdjectiveForm form
	return false


submitAdjectiveForm = (form) ->
	console.log "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
	wordForm = $('#new_adjective').serialize()
	console.log(wordForm)
	console.log "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
	$.post $("#new_adjective").attr("action"), wordForm, null, "script"
	return false