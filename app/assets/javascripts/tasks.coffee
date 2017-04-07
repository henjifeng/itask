# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


events:
	"click a.rucaptcha-image-box": "reLoadRucaptchaImage"

	reLoadRucaptchaImage: (e) ->
	    btn = $(e.currentTarget)
	    img = btn.find('img:first')
	    currentSrc = img.attr('src')
	    img.attr('src', currentSrc.split('?')[0] + '?' + (new Date()).getTime())
	    return false