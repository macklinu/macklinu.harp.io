body = document.body

menuLeft = document.getElementById 'cbp-spmenu-s1'
menuRight = document.getElementById 'cbp-spmenu-s2'
menuTop = document.getElementById 'cbp-spmenu-s3'
menuBottom = document.getElementById 'cbp-spmenu-s4'
showLeftPush = document.getElementById 'showLeftPush'
header = document.getElementById 'nav-header'

showLeftPush.onclick = () ->
  classie.toggle this, 'active'
  classie.toggle this, 'close'
  classie.toggle body, 'cbp-spmenu-push-toright'
  classie.toggle menuLeft, 'cbp-spmenu-open'
  classie.toggle header, 'cbp-spmenu-push-toright'

disableOther = (button) ->
  classie.toggle showTop, 'disabled' if button isnt 'showTop' 
  classie.toggle showBottom, 'disabled' if button isnt 'showBottom'
  classie.toggle showLeftPush, 'disabled' if button isnt 'showLeftPush'
  classie.toggle showRightPush, 'disabled' if button isnt 'showRightPush' 

hideMenu = () ->
  classie.remove showLeftPush, 'active'
  classie.remove showLeftPush, 'close'
  classie.remove body, 'cbp-spmenu-push-toright'
  classie.remove menuLeft, 'cbp-spmenu-open'
  classie.remove header, 'cbp-spmenu-push-toright'

document.onkeydown = (event) ->
  event = event || window.event
  hideMenu() if event.keyCode is 27