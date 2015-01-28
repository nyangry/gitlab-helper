return if $('meta[name="description"]').attr('content') isnt 'GitLab Community Edition'

# cmd + Enter to Post
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


# add emoji panel
loadEmojiSource = ->
  emoji_data_source = [
    '',
    location.pathname.split('/')[1],
    location.pathname.split('/')[2],
    'autocomplete_sources'
  ].join('/')

  emojis = []

  buildAndInsertPallet = (emojis) ->
    $pallet_node = $('<div/>').attr
      class: 'js-pallet'
      style: 'display: none; position: absolute; width: 552px; background: #efefef; padding: 5px; border: 1px solid #ddd;'

    $.each emojis, ->
      $icon_node = $('<span/>').attr
        class: 'js-pallet-icon'
        style: 'cursor: pointer;'
      
      $icon_node.data 'emoji', ':' + @.name + ':'

      $icon_node.append $('<img/>').attr
        src: @.path
        class: 'emoji'

      $pallet_node.append $icon_node

    $pallet_node.appendTo 'body'

  successLoadEmojis = (data, status, xhr) ->
    emojis = data.emojis

    emojis.sort (a, b) ->
      return 1 if a.name > b.name
      return -1 if a.name < b.name
      0

    buildAndInsertPallet(emojis)


  $.ajax(emoji_data_source).done successLoadEmojis

insertSmileIcon = ->
  $icon_node = $('<li/>').append $('<i/>').addClass('icon-smile').attr
    style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer;'
  $icon_node.addClass 'js-open-icon-pallet'

  $('.js-main-target-form').find('.nav-tabs').append $icon_node.clone()
  $('.js-new-note-form').find('.nav-tabs').append $icon_node.clone()

bindEvents = ->
  $current_form = null

  # パレットを開く
  $('body').on 'click', '.js-open-icon-pallet', (e) ->
    $pallet_node = $('.js-pallet')
    $pallet_node.show()
    $pallet_node.css 'top', e.pageY + 30
    $pallet_node.css 'left', e.pageX

    # 現在開いているコメント欄を保存しておく
    $current_form = $(@).parents('form')

  # 絵文字を選択する
  $('body').on 'click', '.js-pallet-icon', (e) ->
    $text_area = $current_form.find('.js-note-text')

    # 絵文字タグを挿入する
    $text_area.val $text_area.val() + $(@).data 'emoji'

    # コメント追加ボタンのdisabledを解除する
    $current_form.find('.js-comment-button').removeClass('disabled').removeAttr('disabled')

    # パレットを閉じる
    $pallet_node = $('.js-pallet')
    $pallet_node.hide()



if location.pathname.split('/').length >= 5
  loadEmojiSource()

  insertSmileIcon()

  bindEvents()

# hide merge note in notes list
$('#notes-list').find('.note').filter('li').each ->
  $auto_added_commit_message = $(@).find('.note-text').children('p')
  return true if $auto_added_commit_message.length isnt 1
  return true unless $auto_added_commit_message.is(':contains(new commit)')
  $(@).css
    display: 'none'

# prevent discuss-body to hide
$('.discussion-body').removeClass 'hide'
