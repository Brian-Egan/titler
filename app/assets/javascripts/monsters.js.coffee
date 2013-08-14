# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).delegate ".refreshMonster", "click", ->
  mPanel = $("#MyMonster")
  mPanel.fadeOut "fast"
  $.get('/random', "allData", null, "script")
  return false
  

  # tPanel.fadeOut "slow"
  # tPanel.empty()
  # tPanel.append "Hey