# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.eval.example .menu .item')
  .tab({
    evaluateScripts : 'once',
    context         : 'parent',
    auto            : true,
    path            : '/'
  })
;
$('.menu .item')
  .tab()
;
