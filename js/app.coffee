anchor = document.querySelectorAll 'button'

menuLeft = document.getElementById 'cbp-spmenu-s1'
menuRight = document.getElementById 'cbp-spmenu-s2'
menuTop = document.getElementById 'cbp-spmenu-s3'
menuBottom = document.getElementById 'cbp-spmenu-s4'
showLeftPush = document.getElementById 'showLeftPush'
body = document.body

showLeftPush.onclick = () ->
  classie.toggle this, 'active'
  classie.toggle this, 'close'
  classie.toggle body, 'cbp-spmenu-push-toright'
  classie.toggle menuLeft, 'cbp-spmenu-open'
  disableOther 'showLeftPush'

disableOther = (button) ->
  classie.toggle showLeft, 'disabled' if button isnt 'showLeft'
  classie.toggle showRight, 'disabled' if button isnt 'showRight'
  classie.toggle showTop, 'disabled' if button isnt 'showTop' 
  classie.toggle showBottom, 'disabled' if button isnt 'showBottom'
  classie.toggle showLeftPush, 'disabled' if button isnt 'showLeftPush'
  classie.toggle showRightPush, 'disabled' if button isnt 'showRightPush' 