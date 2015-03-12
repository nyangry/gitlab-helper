return if $('meta[name="description"]').attr('content') isnt 'GitLab Community Edition'


spinner_image = 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPgo8c3ZnIHdpZHRoPSI0MHB4IiBoZWlnaHQ9IjQwcHgiIHZpZXdCb3g9IjAgMCA0MCA0MCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4bWw6c3BhY2U9InByZXNlcnZlIiBzdHlsZT0iZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjEuNDE0MjE7IiB4PSIwcHgiIHk9IjBweCI+CiAgICA8ZGVmcz4KICAgICAgICA8c3R5bGUgdHlwZT0idGV4dC9jc3MiPjwhW0NEQVRBWwogICAgICAgICAgICBALXdlYmtpdC1rZXlmcmFtZXMgc3BpbiB7CiAgICAgICAgICAgICAgZnJvbSB7CiAgICAgICAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKDBkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIHRvIHsKICAgICAgICAgICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiByb3RhdGUoLTM1OWRlZykKICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH0KICAgICAgICAgICAgQGtleWZyYW1lcyBzcGluIHsKICAgICAgICAgICAgICBmcm9tIHsKICAgICAgICAgICAgICAgIHRyYW5zZm9ybTogcm90YXRlKDBkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIHRvIHsKICAgICAgICAgICAgICAgIHRyYW5zZm9ybTogcm90YXRlKC0zNTlkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICB9CiAgICAgICAgICAgIHN2ZyB7CiAgICAgICAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybS1vcmlnaW46IDUwJSA1MCU7CiAgICAgICAgICAgICAgICAtd2Via2l0LWFuaW1hdGlvbjogc3BpbiAxLjVzIGxpbmVhciBpbmZpbml0ZTsKICAgICAgICAgICAgICAgIC13ZWJraXQtYmFja2ZhY2UtdmlzaWJpbGl0eTogaGlkZGVuOwogICAgICAgICAgICAgICAgYW5pbWF0aW9uOiBzcGluIDEuNXMgbGluZWFyIGluZmluaXRlOwogICAgICAgICAgICB9CiAgICAgICAgXV0+PC9zdHlsZT4KICAgIDwvZGVmcz4KICAgIDxnIGlkPSJvdXRlciI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCwwQzIyLjIwNTgsMCAyMy45OTM5LDEuNzg4MTMgMjMuOTkzOSwzLjk5MzlDMjMuOTkzOSw2LjE5OTY4IDIyLjIwNTgsNy45ODc4MSAyMCw3Ljk4NzgxQzE3Ljc5NDIsNy45ODc4MSAxNi4wMDYxLDYuMTk5NjggMTYuMDA2MSwzLjk5MzlDMTYuMDA2MSwxLjc4ODEzIDE3Ljc5NDIsMCAyMCwwWiIgc3R5bGU9ImZpbGw6YmxhY2s7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNNS44NTc4Niw1Ljg1Nzg2QzcuNDE3NTgsNC4yOTgxNSA5Ljk0NjM4LDQuMjk4MTUgMTEuNTA2MSw1Ljg1Nzg2QzEzLjA2NTgsNy40MTc1OCAxMy4wNjU4LDkuOTQ2MzggMTEuNTA2MSwxMS41MDYxQzkuOTQ2MzgsMTMuMDY1OCA3LjQxNzU4LDEzLjA2NTggNS44NTc4NiwxMS41MDYxQzQuMjk4MTUsOS45NDYzOCA0LjI5ODE1LDcuNDE3NTggNS44NTc4Niw1Ljg1Nzg2WiIgc3R5bGU9ImZpbGw6cmdiKDIxMCwyMTAsMjEwKTsiLz4KICAgICAgICA8L2c+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCwzMi4wMTIyQzIyLjIwNTgsMzIuMDEyMiAyMy45OTM5LDMzLjgwMDMgMjMuOTkzOSwzNi4wMDYxQzIzLjk5MzksMzguMjExOSAyMi4yMDU4LDQwIDIwLDQwQzE3Ljc5NDIsNDAgMTYuMDA2MSwzOC4yMTE5IDE2LjAwNjEsMzYuMDA2MUMxNi4wMDYxLDMzLjgwMDMgMTcuNzk0MiwzMi4wMTIyIDIwLDMyLjAxMjJaIiBzdHlsZT0iZmlsbDpyZ2IoMTMwLDEzMCwxMzApOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTI4LjQ5MzksMjguNDkzOUMzMC4wNTM2LDI2LjkzNDIgMzIuNTgyNCwyNi45MzQyIDM0LjE0MjEsMjguNDkzOUMzNS43MDE5LDMwLjA1MzYgMzUuNzAxOSwzMi41ODI0IDM0LjE0MjEsMzQuMTQyMUMzMi41ODI0LDM1LjcwMTkgMzAuMDUzNiwzNS43MDE5IDI4LjQ5MzksMzQuMTQyMUMyNi45MzQyLDMyLjU4MjQgMjYuOTM0MiwzMC4wNTM2IDI4LjQ5MzksMjguNDkzOVoiIHN0eWxlPSJmaWxsOnJnYigxMDEsMTAxLDEwMSk7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNMy45OTM5LDE2LjAwNjFDNi4xOTk2OCwxNi4wMDYxIDcuOTg3ODEsMTcuNzk0MiA3Ljk4NzgxLDIwQzcuOTg3ODEsMjIuMjA1OCA2LjE5OTY4LDIzLjk5MzkgMy45OTM5LDIzLjk5MzlDMS43ODgxMywyMy45OTM5IDAsMjIuMjA1OCAwLDIwQzAsMTcuNzk0MiAxLjc4ODEzLDE2LjAwNjEgMy45OTM5LDE2LjAwNjFaIiBzdHlsZT0iZmlsbDpyZ2IoMTg3LDE4NywxODcpOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTUuODU3ODYsMjguNDkzOUM3LjQxNzU4LDI2LjkzNDIgOS45NDYzOCwyNi45MzQyIDExLjUwNjEsMjguNDkzOUMxMy4wNjU4LDMwLjA1MzYgMTMuMDY1OCwzMi41ODI0IDExLjUwNjEsMzQuMTQyMUM5Ljk0NjM4LDM1LjcwMTkgNy40MTc1OCwzNS43MDE5IDUuODU3ODYsMzQuMTQyMUM0LjI5ODE1LDMyLjU4MjQgNC4yOTgxNSwzMC4wNTM2IDUuODU3ODYsMjguNDkzOVoiIHN0eWxlPSJmaWxsOnJnYigxNjQsMTY0LDE2NCk7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNMzYuMDA2MSwxNi4wMDYxQzM4LjIxMTksMTYuMDA2MSA0MCwxNy43OTQyIDQwLDIwQzQwLDIyLjIwNTggMzguMjExOSwyMy45OTM5IDM2LjAwNjEsMjMuOTkzOUMzMy44MDAzLDIzLjk5MzkgMzIuMDEyMiwyMi4yMDU4IDMyLjAxMjIsMjBDMzIuMDEyMiwxNy43OTQyIDMzLjgwMDMsMTYuMDA2MSAzNi4wMDYxLDE2LjAwNjFaIiBzdHlsZT0iZmlsbDpyZ2IoNzQsNzQsNzQpOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTI4LjQ5MzksNS44NTc4NkMzMC4wNTM2LDQuMjk4MTUgMzIuNTgyNCw0LjI5ODE1IDM0LjE0MjEsNS44NTc4NkMzNS43MDE5LDcuNDE3NTggMzUuNzAxOSw5Ljk0NjM4IDM0LjE0MjEsMTEuNTA2MUMzMi41ODI0LDEzLjA2NTggMzAuMDUzNiwxMy4wNjU4IDI4LjQ5MzksMTEuNTA2MUMyNi45MzQyLDkuOTQ2MzggMjYuOTM0Miw3LjQxNzU4IDI4LjQ5MzksNS44NTc4NloiIHN0eWxlPSJmaWxsOnJnYig1MCw1MCw1MCk7Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K'


# cmd + Enter to Post
class CommandPlusEnterToPost
  constructor: ->
    @bindEvents()

  bindEvents: ->
    key.filter = (event) ->
      tagName = (event.target || event.srcElement).tagName
      return !(tagName is 'INPUT' || tagName is 'SELECT')

    key '⌘+enter', (e) ->
      $target = $(event.target || event.srcElement)
      tagName = $target[0].tagName

      return unless tagName is 'TEXTAREA'
      
      return unless $target.is(':focus')

      $note_form = $target.parents('form')

      $submit_button = $note_form.find('.js-comment-button')

      return if $submit_button.hasClass('disabled')

      $submit_button.click()


# insert plus one
class InsertPlusOne
  constructor: ->
    @insertButton()
    @bindEvents()

  bindEvents: ->
    $('body').on 'click', '.js-insert-plus-one', (e) ->
      $current_form = $(@).parents('form')

      $current_form.find('.js-note-text').val '+1 :+1:'

      # コメント追加ボタン
      $submit_button = $current_form.find('.js-comment-button')

      # コメント追加ボタンのdisabledを解除する
      $submit_button.removeClass('disabled').removeAttr('disabled')

      # コメント送信
      $submit_button.click()

  insertButton: ->
    $icon_node = $('<li/>').append $('<i/>').attr
      class: 'fa fa-thumbs-o-up'
      style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer;'
    $icon_node.addClass 'js-insert-plus-one'

    $('.js-main-target-form').find('.nav-tabs').append $icon_node.clone()
    $('.js-new-note-form').find('.nav-tabs').append $icon_node.clone()
    $('.edit_note').find('.nav-tabs').append $icon_node.clone()


# add emoji pallet
class EmojiPallet
  constructor: ->
    return unless location.pathname.split('/').length >= 5
    @insertSmileIcon()
    @loadEmojiSource()
    @bindEvents()

  bindEvents: ->
    $current_form = null

    # パレットを開く
    $('body').on 'click', '.js-open-icon-pallet', (e) ->
      $self = $(@)

      $pallet_backdrop_node = $('.js-pallet-backdrop')
      $pallet_backdrop_node.show()

      $pallet_node = $('.js-pallet')
      $pallet_node.show()
      $pallet_node.css 'top', $self.offset().top + 32
      $pallet_node.css 'left', $self.offset().left + 18

      # 現在開いているコメント欄を保存しておく
      $current_form = $(@).parents('form')

    # 絵文字パレット以外の領域クリックでパレットを閉じる
    $('body').on 'click', '.js-pallet-backdrop', (e) ->
      $(@).hide()
      $pallet_node = $('.js-pallet')
      $pallet_node.hide()

    # 絵文字を選択する
    $('body').on 'click', '.js-pallet-icon', (e) ->
      $text_area = $current_form.find('.js-note-text')

      # 絵文字タグを挿入する
      $text_area.val $text_area.val() + ' ' + $(@).data 'emoji'

      # コメント追加ボタンのdisabledを解除する
      $current_form.find('.js-comment-button').removeClass('disabled').removeAttr('disabled')

      # パレットを閉じる
      $pallet_backdrop_node = $('.js-pallet-backdrop')
      $pallet_backdrop_node.hide()

      $pallet_node = $('.js-pallet')
      $pallet_node.hide()

      # テキストエリアにフォーカスする
      $text_area.focus()

  insertSmileIcon: ->
    $icon_node = $('<li/>').append $('<i/>').attr
      class: 'fa fa-smile-o'
      style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer;'
    $icon_node.addClass 'js-open-icon-pallet'

    $('.js-main-target-form').find('.nav-tabs').append $icon_node.clone()
    $('.js-new-note-form').find('.nav-tabs').append $icon_node.clone()
    $('.edit_note').find('.nav-tabs').append $icon_node.clone()

  loadEmojiSource: ->
    emoji_data_source = [
      '',
      location.pathname.split('/')[1],
      location.pathname.split('/')[2],
      'autocomplete_sources'
    ].join('/')

    emojis = []

    $.ajax(emoji_data_source).done @successLoadEmojis

  successLoadEmojis: (data, status, xhr) =>
    emojis = data.emojis

    emojis.sort (a, b) ->
      return 1 if a.name > b.name
      return -1 if a.name < b.name
      0

    @buildAndInsertPallet(emojis)

  buildAndInsertPallet: (emojis) ->
    $pallet_backdrop_node = $('<div/>').attr
      class: 'js-pallet-backdrop'
      style: 'z-index: 100; display:none; position:fixed; top:0; left:0; width:100%; height:120%;'

    $pallet_node = $('<div/>').attr
      class: 'js-pallet'
      style: 'z-index: 200; display: none; position: absolute; width: 552px; background: #efefef; padding: 5px; border: 1px solid #ddd;'

    $.each emojis, ->
      $icon_node = $('<span/>').attr
        class: 'js-pallet-icon'
        style: 'cursor: pointer;'
      
      $icon_node.data 'emoji', ':' + @.name + ':'

      $icon_node.append $('<img/>').attr
        src: @.path
        class: 'emoji'

      $pallet_node.append $icon_node

    $pallet_backdrop_node.appendTo 'body'
    $pallet_node.appendTo 'body'


# insert lgtm image
class InsertLGTMImage
  constructor: ->
    @insertButton()
    @insertSpinnerImage()
    @bindEvents()

  bindEvents: ->
    loading = false
    $('body').on 'click', '.js-insert-lgtm-image', (e) ->
      return if loading

      loading = true
      $('.js-lgtm-spinner-image').show()

      $current_form = $(@).parents('form')
      $text_area    = $current_form.find('.js-note-text')

      $.getJSON 'http://www.lgtm.in/g', (data) ->
        # LGTM画像を挿入する
        lgtm_image = data.markdown.split('\n\n')[0]
        $text_area.val $text_area.val() + ' ' + lgtm_image

        # コメント追加ボタンのdisabledを解除する
        $current_form.find('.js-comment-button').removeClass('disabled').removeAttr('disabled')

        # テキストエリアにフォーカスする
        $text_area.focus()

        loading = false
        $('.js-lgtm-spinner-image').hide()

  insertButton: ->
    $icon_node = $('<li/>').append $('<i/>').attr
      class: 'fa fa-github-alt'
      style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer;'
    $icon_node.addClass 'js-insert-lgtm-image'

    $('.js-main-target-form').find('.nav-tabs').append $icon_node.clone()
    $('.js-new-note-form').find('.nav-tabs').append $icon_node.clone()
    $('.edit_note').find('.nav-tabs').append $icon_node.clone()

  insertSpinnerImage: ->
    $icon_node = $('<li/>').css
      display: 'none'
    $icon_node.addClass 'js-lgtm-spinner-image'

    $icon_node.append $('<img/>').attr
      style: 'width: 34px; padding: 6px;'
      src: spinner_image

    $('.js-main-target-form').find('.nav-tabs').append $icon_node.clone()
    $('.js-new-note-form').find('.nav-tabs').append $icon_node.clone()


# hide merge note in notes list
class HideMergeNotes
  constructor: ->
    @on()

  on: ->
    $('#notes-list').find('.note').filter('li').each ->
      $auto_added_commit_message = $(@).find('.note-text').children('p')
      return true if $auto_added_commit_message.length isnt 1
      return true unless $auto_added_commit_message.is(':contains(new commit)')
      $(@).css
        display: 'none'


# prevent discuss-body to hide
class PreventDiscussBodyToHide
  constructor: ->
    @on()

  on: ->
    $('.discussion-body').removeClass 'hide'


# close side bar
class CloseSideBar
  constructor: ->
    @on()

  on: ->
    $('.sidebar-wrapper').css(
      width: 52,
      position: 'absolute',
      overflowX: 'hidden'
    )
    $navSidebar = $('.nav-sidebar')
    $navSidebar.css(
      width: 52
      position: 'absolute',
    )
    $navSidebar.find('li a>span').hide()
    $('.page-with-sidebar').css 'padding-left', 52

# add MR created by own button
class LinkToOwnMRButton
  constructor: ->
    @on()

  on: ->
    $link_to_mr = $('.shortcuts-merge_requests').parent().clone()

    return if $link_to_mr.length is 0

    $link_to_mr.find('a').attr
      href: $link_to_mr.find('a').attr('href').replace(/assignee/g, 'author')

    $link_to_mr.find('i').replaceWith(
      $('.profile-pic').find('img').clone().css('width', 12)
    )

    $('.nav-sidebar').append($link_to_mr)

# always open diff stas
class AlwaysOpenDiffStats
  selectors:
    component: '.diffs'
    stats_content: '.js-toggle-content'

  constructor: ->
    @on()

  on: ->
    $component = $('body').find(@selectors['component'])

    return if $component.length is 0

    $stats_content = $component.find(@selectors['stats_content'])

    $stats_content.removeClass('hide')



activateExtension = ->
  command_enter_to_post         = new CommandPlusEnterToPost
  insert_plus_one               = new InsertPlusOne
  emoji_pallet                  = new EmojiPallet
  insert_lgtm_image             = new InsertLGTMImage
  hide_merge_notes              = new HideMergeNotes
  prevent_disucuss_body_to_hide = new PreventDiscussBodyToHide
  close_side_bar                = new CloseSideBar
  link_to_own_mr_button         = new LinkToOwnMRButton
  always_open_diff_stats        = new AlwaysOpenDiffStats


$ ->
  activateExtension()


# bind for TurboLinks
$(document).on 'page:load', ->
  activateExtension()
