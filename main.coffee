key.filter = (event) ->
  tagName = (event.target || event.srcElement).tagName
  return !(tagName == 'INPUT' || tagName == 'SELECT')

key '⌘+enter', (e) ->
  $target = $(event.target || event.srcElement)
  tagName = $target[0].tagName

  return unless tagName == 'TEXTAREA'
  
  return unless $target.is(':focus')

  $note_form = $target.parents('.common-note-form')

  $add_comment_button = $note_form.find('.js-comment-button')

  return if $add_comment_button.hasClass('disabled')

  $add_comment_button.click()
