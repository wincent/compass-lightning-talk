$('section').click ->
  section = $(this)

  section.toggleClass('active')
    .find('h1').siblings().fadeToggle()

  section.siblings('.active')
    .removeClass('active')
    .find('h1').siblings().hide()
