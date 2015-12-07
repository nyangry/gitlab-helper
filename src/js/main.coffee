$ ->
  return if $('meta[name="description"]').attr('content') isnt 'GitLab Community Edition'

  common_selectors =
    main_target_form_md_header_ul: '.js-main-target-form .md-header ul'
    new_note_form_md_header_ul: '.js-new-note-form .md-header ul'

  $elements =
    main_target_form_md_header_ul: $(common_selectors['main_target_form_md_header_ul'])
    new_note_form_md_header_ul: $(common_selectors['new_note_form_md_header_ul'])

  spinner_image = 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPgo8c3ZnIHdpZHRoPSI0MHB4IiBoZWlnaHQ9IjQwcHgiIHZpZXdCb3g9IjAgMCA0MCA0MCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4bWw6c3BhY2U9InByZXNlcnZlIiBzdHlsZT0iZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjEuNDE0MjE7IiB4PSIwcHgiIHk9IjBweCI+CiAgICA8ZGVmcz4KICAgICAgICA8c3R5bGUgdHlwZT0idGV4dC9jc3MiPjwhW0NEQVRBWwogICAgICAgICAgICBALXdlYmtpdC1rZXlmcmFtZXMgc3BpbiB7CiAgICAgICAgICAgICAgZnJvbSB7CiAgICAgICAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKDBkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIHRvIHsKICAgICAgICAgICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiByb3RhdGUoLTM1OWRlZykKICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH0KICAgICAgICAgICAgQGtleWZyYW1lcyBzcGluIHsKICAgICAgICAgICAgICBmcm9tIHsKICAgICAgICAgICAgICAgIHRyYW5zZm9ybTogcm90YXRlKDBkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIHRvIHsKICAgICAgICAgICAgICAgIHRyYW5zZm9ybTogcm90YXRlKC0zNTlkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICB9CiAgICAgICAgICAgIHN2ZyB7CiAgICAgICAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybS1vcmlnaW46IDUwJSA1MCU7CiAgICAgICAgICAgICAgICAtd2Via2l0LWFuaW1hdGlvbjogc3BpbiAxLjVzIGxpbmVhciBpbmZpbml0ZTsKICAgICAgICAgICAgICAgIC13ZWJraXQtYmFja2ZhY2UtdmlzaWJpbGl0eTogaGlkZGVuOwogICAgICAgICAgICAgICAgYW5pbWF0aW9uOiBzcGluIDEuNXMgbGluZWFyIGluZmluaXRlOwogICAgICAgICAgICB9CiAgICAgICAgXV0+PC9zdHlsZT4KICAgIDwvZGVmcz4KICAgIDxnIGlkPSJvdXRlciI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCwwQzIyLjIwNTgsMCAyMy45OTM5LDEuNzg4MTMgMjMuOTkzOSwzLjk5MzlDMjMuOTkzOSw2LjE5OTY4IDIyLjIwNTgsNy45ODc4MSAyMCw3Ljk4NzgxQzE3Ljc5NDIsNy45ODc4MSAxNi4wMDYxLDYuMTk5NjggMTYuMDA2MSwzLjk5MzlDMTYuMDA2MSwxLjc4ODEzIDE3Ljc5NDIsMCAyMCwwWiIgc3R5bGU9ImZpbGw6YmxhY2s7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNNS44NTc4Niw1Ljg1Nzg2QzcuNDE3NTgsNC4yOTgxNSA5Ljk0NjM4LDQuMjk4MTUgMTEuNTA2MSw1Ljg1Nzg2QzEzLjA2NTgsNy40MTc1OCAxMy4wNjU4LDkuOTQ2MzggMTEuNTA2MSwxMS41MDYxQzkuOTQ2MzgsMTMuMDY1OCA3LjQxNzU4LDEzLjA2NTggNS44NTc4NiwxMS41MDYxQzQuMjk4MTUsOS45NDYzOCA0LjI5ODE1LDcuNDE3NTggNS44NTc4Niw1Ljg1Nzg2WiIgc3R5bGU9ImZpbGw6cmdiKDIxMCwyMTAsMjEwKTsiLz4KICAgICAgICA8L2c+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCwzMi4wMTIyQzIyLjIwNTgsMzIuMDEyMiAyMy45OTM5LDMzLjgwMDMgMjMuOTkzOSwzNi4wMDYxQzIzLjk5MzksMzguMjExOSAyMi4yMDU4LDQwIDIwLDQwQzE3Ljc5NDIsNDAgMTYuMDA2MSwzOC4yMTE5IDE2LjAwNjEsMzYuMDA2MUMxNi4wMDYxLDMzLjgwMDMgMTcuNzk0MiwzMi4wMTIyIDIwLDMyLjAxMjJaIiBzdHlsZT0iZmlsbDpyZ2IoMTMwLDEzMCwxMzApOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTI4LjQ5MzksMjguNDkzOUMzMC4wNTM2LDI2LjkzNDIgMzIuNTgyNCwyNi45MzQyIDM0LjE0MjEsMjguNDkzOUMzNS43MDE5LDMwLjA1MzYgMzUuNzAxOSwzMi41ODI0IDM0LjE0MjEsMzQuMTQyMUMzMi41ODI0LDM1LjcwMTkgMzAuMDUzNiwzNS43MDE5IDI4LjQ5MzksMzQuMTQyMUMyNi45MzQyLDMyLjU4MjQgMjYuOTM0MiwzMC4wNTM2IDI4LjQ5MzksMjguNDkzOVoiIHN0eWxlPSJmaWxsOnJnYigxMDEsMTAxLDEwMSk7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNMy45OTM5LDE2LjAwNjFDNi4xOTk2OCwxNi4wMDYxIDcuOTg3ODEsMTcuNzk0MiA3Ljk4NzgxLDIwQzcuOTg3ODEsMjIuMjA1OCA2LjE5OTY4LDIzLjk5MzkgMy45OTM5LDIzLjk5MzlDMS43ODgxMywyMy45OTM5IDAsMjIuMjA1OCAwLDIwQzAsMTcuNzk0MiAxLjc4ODEzLDE2LjAwNjEgMy45OTM5LDE2LjAwNjFaIiBzdHlsZT0iZmlsbDpyZ2IoMTg3LDE4NywxODcpOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTUuODU3ODYsMjguNDkzOUM3LjQxNzU4LDI2LjkzNDIgOS45NDYzOCwyNi45MzQyIDExLjUwNjEsMjguNDkzOUMxMy4wNjU4LDMwLjA1MzYgMTMuMDY1OCwzMi41ODI0IDExLjUwNjEsMzQuMTQyMUM5Ljk0NjM4LDM1LjcwMTkgNy40MTc1OCwzNS43MDE5IDUuODU3ODYsMzQuMTQyMUM0LjI5ODE1LDMyLjU4MjQgNC4yOTgxNSwzMC4wNTM2IDUuODU3ODYsMjguNDkzOVoiIHN0eWxlPSJmaWxsOnJnYigxNjQsMTY0LDE2NCk7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNMzYuMDA2MSwxNi4wMDYxQzM4LjIxMTksMTYuMDA2MSA0MCwxNy43OTQyIDQwLDIwQzQwLDIyLjIwNTggMzguMjExOSwyMy45OTM5IDM2LjAwNjEsMjMuOTkzOUMzMy44MDAzLDIzLjk5MzkgMzIuMDEyMiwyMi4yMDU4IDMyLjAxMjIsMjBDMzIuMDEyMiwxNy43OTQyIDMzLjgwMDMsMTYuMDA2MSAzNi4wMDYxLDE2LjAwNjFaIiBzdHlsZT0iZmlsbDpyZ2IoNzQsNzQsNzQpOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTI4LjQ5MzksNS44NTc4NkMzMC4wNTM2LDQuMjk4MTUgMzIuNTgyNCw0LjI5ODE1IDM0LjE0MjEsNS44NTc4NkMzNS43MDE5LDcuNDE3NTggMzUuNzAxOSw5Ljk0NjM4IDM0LjE0MjEsMTEuNTA2MUMzMi41ODI0LDEzLjA2NTggMzAuMDUzNiwxMy4wNjU4IDI4LjQ5MzksMTEuNTA2MUMyNi45MzQyLDkuOTQ2MzggMjYuOTM0Miw3LjQxNzU4IDI4LjQ5MzksNS44NTc4NloiIHN0eWxlPSJmaWxsOnJnYig1MCw1MCw1MCk7Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K'


  # csrf_methods = {
  #   csrfToken: ->
  #     $("meta[name=csrf-token]").attr "content"
  #
  #
  #   # URL param that must contain the CSRF token
  #   csrfParam: ->
  #     $("meta[name=csrf-param]").attr "content"
  # }


  # insert plus one
  class InsertPlusOne
    selectors:
      note_text: '.js-note-text'

    constructor: ->
      @init()

    init: ->
      @insertButton()
      @bindEvents()

    bindEvents: ->
      $('body').on 'click', '.js-insert-plus-one', (e) =>
        $current_form = $(e.target).parents('form')

        $current_form.find(@selectors['note_text']).val ':+1:'

        # コメント追加ボタン
        $submit_button = $current_form.find('.js-comment-button')

        # コメント追加ボタンのdisabledを解除する
        $submit_button.removeClass('disabled').removeAttr('disabled')

        # コメント送信
        $submit_button.click()

    insertButton: ->
      $icon_node = $('<li/>').append $('<i/>').attr
        class: 'fa fa-thumbs-o-up'
        style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer; color: #268BD2;'
      $icon_node.addClass 'js-insert-plus-one'

      $elements['main_target_form_md_header_ul'].append $icon_node.clone()
      $elements['new_note_form_md_header_ul'].append $icon_node.clone()


  # add emoji pallet
  class EmojiPallet
    constructor: ->
      @init()

    init: ->
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
        $pallet_node.css 'top', $self.offset().top + 42
        # $pallet_node.css 'left', $self.offset().left + 18
        $pallet_node.css 'left', '25%'

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
        style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer; color: #586E75;'
      $icon_node.addClass 'js-open-icon-pallet'

      $elements['main_target_form_md_header_ul'].append $icon_node.clone()
      $elements['new_note_form_md_header_ul'].append $icon_node.clone()

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

      emojis = emojis.filter (emoji) -> !/(1F1|1F56|1F55)/.test emoji.path

      # emojis.sort (a, b) ->
      #   return 1 if a.name > b.name
      #   return -1 if a.name < b.name
      #   0

      @buildAndInsertPallet(emojis)

    buildAndInsertPallet: (emojis) ->
      $pallet_backdrop_node = $('<div/>').attr
        class: 'js-pallet-backdrop'
        style: 'z-index: 100; display:none; position:fixed; top:0; left:0; width:100%; height:120%;'

      $pallet_node = $('<div/>').attr
        class: 'js-pallet'
        style: 'z-index: 200; display: none; position: absolute; width: 50%; background: #efefef; padding: 5px; border: 1px solid #ddd;'

      $.each emojis, ->
        $icon_node = $('<span/>').attr
          class: 'js-pallet-icon'
          style: 'cursor: pointer;'

        $icon_node.data 'emoji', ':' + @.name + ':'

        $icon_node.append $('<img/>').attr
          src: @.path
          class: 'emoji'
          style: 'width: 15px; height: 15px;'

        $pallet_node.append $icon_node

      $pallet_backdrop_node.appendTo 'body'
      $pallet_node.appendTo 'body'


  # insert lgtm image
  class InsertLGTMImage
    selectors:
      note_text: '.js-note-text'

    constructor: ->
      @init()

    init: ->
      @insertButton()
      @insertSpinnerImage()
      @bindEvents()

    bindEvents: ->
      loading = false

      $('body').on 'click', '.js-insert-lgtm-image', (e) =>
        return if loading

        loading = true
        $('.js-lgtm-spinner-image').show()

        $current_form = $(e.target).parents('form')
        $text_area    = $current_form.find(@selectors['note_text'])

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
        style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer; color: #2faa60;'
      $icon_node.addClass 'js-insert-lgtm-image'

      $elements['main_target_form_md_header_ul'].append $icon_node.clone()
      $elements['new_note_form_md_header_ul'].append $icon_node.clone()

    insertSpinnerImage: ->
      $icon_node = $('<li/>').css
        display: 'none'
      $icon_node.addClass 'js-lgtm-spinner-image'

      $icon_node.append $('<img/>').attr
        style: 'width: 34px; padding: 6px;'
        src: spinner_image

      $elements['main_target_form_md_header_ul'].append $icon_node.clone()
      $elements['new_note_form_md_header_ul'].append $icon_node.clone()


  # hide merge note in notes list
  class HideMergeNotes
    constructor: ->
      @init()

    init: ->
      @on()

    on: ->
      $('#notes-list > li.timeline-entry.note').each ->
        return true unless /Added \d+ commit[s]?/.test $(@).text()

        $(@).css
          display: 'none'


  class EmphasizeOutdatedDiff
    constructor: ->
      @init()

    init: ->
      @on()

    on: ->
      $('#notes-list > div.timeline-entry').find('.discussion-header:contains(outdated diff)').each ->
        $strong_text = $(@).find('strong')

        $strong_text.css
          color: '#c7254e'

        $block = $(@).parents('.timeline-entry')

        $block.css
          backgroundColor: 'rgba(170, 170, 170, 0.5)'


  class ScrollToCorrectPostionOfAnchor
    constructor: ->
      @init()

    init: ->
      # アンカーなしなら何もしない
      return if location.hash is ''

      @on()

    on: ->
      $anchor_element = $(location.hash)

      current_top_position = $anchor_element.offset().top - $anchor_element.height() - 30

      $(document).scrollTop current_top_position
  #
  #
  # # prevent discuss-body to hide
  # class PreventDiscussBodyToHide
  #   constructor: ->
  #     @init()
  #
  #   init: ->
  #     @on()
  #
  #   on: ->
  #     $('.discussion-body').removeClass 'hide'
  #
  #
  # # close side bar
  # class CloseSideBar
  #   constructor: ->
  #     @init()
  #
  #   init: ->
  #     @on()
  #
  #   on: ->
  #     $('.sidebar-wrapper').css(
  #       width: 52,
  #       position: 'absolute',
  #       overflowX: 'hidden'
  #     )
  #     $navSidebar = $('.nav-sidebar')
  #     $navSidebar.css(
  #       width: 52
  #       position: 'absolute',
  #     )
  #     $navSidebar.find('li a>span').hide()
  #     $('.page-with-sidebar').css 'padding-left', 52
  #

  # add MR created by own button
  class AddLinkToOwnMRButtonIntoSideMenu
    constructor: ->
      @init()

    init: ->
      @on()

    on: ->
      $link_to_own_mr = $('.shortcuts-merge_requests').parent().clone()

      return if $link_to_own_mr.length is 0

      $link_to_own_mr.find('a').attr
        href: $link_to_own_mr.find('a').attr('href').replace(/assignee_id/g, 'author_id')

      $link_to_own_mr.find('a > span').text('Own Merge Requests')

      $link_to_own_mr.find('i').replaceWith(
        $('.sidebar-wrapper').find('img.avatar').clone().css
          float: 'none'
          width: '16px'
          height: '15px'
          marginRight: '13px'
      )

      $('.shortcuts-merge_requests').parent().after($link_to_own_mr)

  # # always open diff stas
  # class AlwaysOpenDiffStats
  #   selectors:
  #     component: '.diffs'
  #     stats_content: '.js-toggle-content'
  #
  #   constructor: ->
  #     @init()
  #
  #   init: ->
  #     @on()
  #
  #   on: ->
  #     $component = $('body').find(@selectors['component'])
  #
  #     return if $component.length is 0
  #
  #     $stats_content = $component.find(@selectors['stats_content'])
  #
  #     $stats_content.removeClass('hide')
  #
  #
  # class AddMileStoneSelectionToEasilyVisiblePlaceOnMR
  #   selectors:
  #     form: '.edit-merge_request'
  #     milestone: 'select[name="merge_request[milestone_id]"]'
  #     slead: '.slead'
  #
  #   constructor: ->
  #     @init()
  #
  #   init: ->
  #     @$form      = $(@selectors['form'])
  #     @$milestone = $(@selectors['milestone'])
  #     @$slead     = $(@selectors['slead']).first()
  #
  #     @on()
  #
  #   on: ->
  #     return if @$form.length is 0
  #
  #     $cloned_form = @$form.clone()
  #     $cloned_form.find('.prepend-top-20').remove()
  #     $cloned_form.css 'display', 'inline-block'
  #
  #     @$slead.append $cloned_form
  #
  #     $cloned_milestone = @$milestone.clone().removeAttr('class style')
  #     $cloned_form.append $cloned_milestone
  #     $cloned_milestone.select2()
  #
  #     $cloned_form.append $('<input>').attr(
  #       name: csrf_methods.csrfParam
  #       type: 'hidden'
  #     ).val csrf_methods.csrfToken
  #
  #     $cloned_form.on 'change', ->
  #       $(@).submit()


  activateExtensions = ->
    new InsertPlusOne
    new EmojiPallet
    new InsertLGTMImage
    new HideMergeNotes
    new EmphasizeOutdatedDiff
    new ScrollToCorrectPostionOfAnchor
    new AddLinkToOwnMRButtonIntoSideMenu


  $ ->
    activateExtensions()


  # bind for TurboLinks
  $(document).on 'page:load', ->
    activateExtensions()
