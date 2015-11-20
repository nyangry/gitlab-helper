var bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

$(function() {
  var $elements, EmojiPallet, InsertLGTMImage, InsertPlusOne, activateExtensions, common_selectors, spinner_image;
  if ($('meta[name="description"]').attr('content') !== 'GitLab Community Edition') {
    return;
  }
  common_selectors = {
    main_target_form_md_header_ul: '.js-main-target-form .md-header ul',
    new_note_form_md_header_ul: '.js-new-note-form .md-header ul'
  };
  $elements = {
    main_target_form_md_header_ul: $(common_selectors['main_target_form_md_header_ul']),
    new_note_form_md_header_ul: $(common_selectors['new_note_form_md_header_ul'])
  };
  spinner_image = 'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPgo8c3ZnIHdpZHRoPSI0MHB4IiBoZWlnaHQ9IjQwcHgiIHZpZXdCb3g9IjAgMCA0MCA0MCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4bWw6c3BhY2U9InByZXNlcnZlIiBzdHlsZT0iZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjEuNDE0MjE7IiB4PSIwcHgiIHk9IjBweCI+CiAgICA8ZGVmcz4KICAgICAgICA8c3R5bGUgdHlwZT0idGV4dC9jc3MiPjwhW0NEQVRBWwogICAgICAgICAgICBALXdlYmtpdC1rZXlmcmFtZXMgc3BpbiB7CiAgICAgICAgICAgICAgZnJvbSB7CiAgICAgICAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKDBkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIHRvIHsKICAgICAgICAgICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiByb3RhdGUoLTM1OWRlZykKICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH0KICAgICAgICAgICAgQGtleWZyYW1lcyBzcGluIHsKICAgICAgICAgICAgICBmcm9tIHsKICAgICAgICAgICAgICAgIHRyYW5zZm9ybTogcm90YXRlKDBkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIHRvIHsKICAgICAgICAgICAgICAgIHRyYW5zZm9ybTogcm90YXRlKC0zNTlkZWcpCiAgICAgICAgICAgICAgfQogICAgICAgICAgICB9CiAgICAgICAgICAgIHN2ZyB7CiAgICAgICAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybS1vcmlnaW46IDUwJSA1MCU7CiAgICAgICAgICAgICAgICAtd2Via2l0LWFuaW1hdGlvbjogc3BpbiAxLjVzIGxpbmVhciBpbmZpbml0ZTsKICAgICAgICAgICAgICAgIC13ZWJraXQtYmFja2ZhY2UtdmlzaWJpbGl0eTogaGlkZGVuOwogICAgICAgICAgICAgICAgYW5pbWF0aW9uOiBzcGluIDEuNXMgbGluZWFyIGluZmluaXRlOwogICAgICAgICAgICB9CiAgICAgICAgXV0+PC9zdHlsZT4KICAgIDwvZGVmcz4KICAgIDxnIGlkPSJvdXRlciI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCwwQzIyLjIwNTgsMCAyMy45OTM5LDEuNzg4MTMgMjMuOTkzOSwzLjk5MzlDMjMuOTkzOSw2LjE5OTY4IDIyLjIwNTgsNy45ODc4MSAyMCw3Ljk4NzgxQzE3Ljc5NDIsNy45ODc4MSAxNi4wMDYxLDYuMTk5NjggMTYuMDA2MSwzLjk5MzlDMTYuMDA2MSwxLjc4ODEzIDE3Ljc5NDIsMCAyMCwwWiIgc3R5bGU9ImZpbGw6YmxhY2s7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNNS44NTc4Niw1Ljg1Nzg2QzcuNDE3NTgsNC4yOTgxNSA5Ljk0NjM4LDQuMjk4MTUgMTEuNTA2MSw1Ljg1Nzg2QzEzLjA2NTgsNy40MTc1OCAxMy4wNjU4LDkuOTQ2MzggMTEuNTA2MSwxMS41MDYxQzkuOTQ2MzgsMTMuMDY1OCA3LjQxNzU4LDEzLjA2NTggNS44NTc4NiwxMS41MDYxQzQuMjk4MTUsOS45NDYzOCA0LjI5ODE1LDcuNDE3NTggNS44NTc4Niw1Ljg1Nzg2WiIgc3R5bGU9ImZpbGw6cmdiKDIxMCwyMTAsMjEwKTsiLz4KICAgICAgICA8L2c+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCwzMi4wMTIyQzIyLjIwNTgsMzIuMDEyMiAyMy45OTM5LDMzLjgwMDMgMjMuOTkzOSwzNi4wMDYxQzIzLjk5MzksMzguMjExOSAyMi4yMDU4LDQwIDIwLDQwQzE3Ljc5NDIsNDAgMTYuMDA2MSwzOC4yMTE5IDE2LjAwNjEsMzYuMDA2MUMxNi4wMDYxLDMzLjgwMDMgMTcuNzk0MiwzMi4wMTIyIDIwLDMyLjAxMjJaIiBzdHlsZT0iZmlsbDpyZ2IoMTMwLDEzMCwxMzApOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTI4LjQ5MzksMjguNDkzOUMzMC4wNTM2LDI2LjkzNDIgMzIuNTgyNCwyNi45MzQyIDM0LjE0MjEsMjguNDkzOUMzNS43MDE5LDMwLjA1MzYgMzUuNzAxOSwzMi41ODI0IDM0LjE0MjEsMzQuMTQyMUMzMi41ODI0LDM1LjcwMTkgMzAuMDUzNiwzNS43MDE5IDI4LjQ5MzksMzQuMTQyMUMyNi45MzQyLDMyLjU4MjQgMjYuOTM0MiwzMC4wNTM2IDI4LjQ5MzksMjguNDkzOVoiIHN0eWxlPSJmaWxsOnJnYigxMDEsMTAxLDEwMSk7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNMy45OTM5LDE2LjAwNjFDNi4xOTk2OCwxNi4wMDYxIDcuOTg3ODEsMTcuNzk0MiA3Ljk4NzgxLDIwQzcuOTg3ODEsMjIuMjA1OCA2LjE5OTY4LDIzLjk5MzkgMy45OTM5LDIzLjk5MzlDMS43ODgxMywyMy45OTM5IDAsMjIuMjA1OCAwLDIwQzAsMTcuNzk0MiAxLjc4ODEzLDE2LjAwNjEgMy45OTM5LDE2LjAwNjFaIiBzdHlsZT0iZmlsbDpyZ2IoMTg3LDE4NywxODcpOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTUuODU3ODYsMjguNDkzOUM3LjQxNzU4LDI2LjkzNDIgOS45NDYzOCwyNi45MzQyIDExLjUwNjEsMjguNDkzOUMxMy4wNjU4LDMwLjA1MzYgMTMuMDY1OCwzMi41ODI0IDExLjUwNjEsMzQuMTQyMUM5Ljk0NjM4LDM1LjcwMTkgNy40MTc1OCwzNS43MDE5IDUuODU3ODYsMzQuMTQyMUM0LjI5ODE1LDMyLjU4MjQgNC4yOTgxNSwzMC4wNTM2IDUuODU3ODYsMjguNDkzOVoiIHN0eWxlPSJmaWxsOnJnYigxNjQsMTY0LDE2NCk7Ii8+CiAgICAgICAgPC9nPgogICAgICAgIDxnPgogICAgICAgICAgICA8cGF0aCBkPSJNMzYuMDA2MSwxNi4wMDYxQzM4LjIxMTksMTYuMDA2MSA0MCwxNy43OTQyIDQwLDIwQzQwLDIyLjIwNTggMzguMjExOSwyMy45OTM5IDM2LjAwNjEsMjMuOTkzOUMzMy44MDAzLDIzLjk5MzkgMzIuMDEyMiwyMi4yMDU4IDMyLjAxMjIsMjBDMzIuMDEyMiwxNy43OTQyIDMzLjgwMDMsMTYuMDA2MSAzNi4wMDYxLDE2LjAwNjFaIiBzdHlsZT0iZmlsbDpyZ2IoNzQsNzQsNzQpOyIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTI4LjQ5MzksNS44NTc4NkMzMC4wNTM2LDQuMjk4MTUgMzIuNTgyNCw0LjI5ODE1IDM0LjE0MjEsNS44NTc4NkMzNS43MDE5LDcuNDE3NTggMzUuNzAxOSw5Ljk0NjM4IDM0LjE0MjEsMTEuNTA2MUMzMi41ODI0LDEzLjA2NTggMzAuMDUzNiwxMy4wNjU4IDI4LjQ5MzksMTEuNTA2MUMyNi45MzQyLDkuOTQ2MzggMjYuOTM0Miw3LjQxNzU4IDI4LjQ5MzksNS44NTc4NloiIHN0eWxlPSJmaWxsOnJnYig1MCw1MCw1MCk7Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K';
  InsertPlusOne = (function() {
    InsertPlusOne.prototype.selectors = {
      note_text: '.js-note-text'
    };

    function InsertPlusOne() {
      this.init();
    }

    InsertPlusOne.prototype.init = function() {
      this.insertButton();
      return this.bindEvents();
    };

    InsertPlusOne.prototype.bindEvents = function() {
      return $('body').on('click', '.js-insert-plus-one', (function(_this) {
        return function(e) {
          var $current_form, $submit_button;
          $current_form = $(e.target).parents('form');
          $current_form.find(_this.selectors['note_text']).val(':+1:');
          $submit_button = $current_form.find('.js-comment-button');
          $submit_button.removeClass('disabled').removeAttr('disabled');
          return $submit_button.click();
        };
      })(this));
    };

    InsertPlusOne.prototype.insertButton = function() {
      var $icon_node;
      $icon_node = $('<li/>').append($('<i/>').attr({
        "class": 'fa fa-thumbs-o-up',
        style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer; color: #268BD2;'
      }));
      $icon_node.addClass('js-insert-plus-one');
      $elements['main_target_form_md_header_ul'].append($icon_node.clone());
      return $elements['new_note_form_md_header_ul'].append($icon_node.clone());
    };

    return InsertPlusOne;

  })();
  EmojiPallet = (function() {
    function EmojiPallet() {
      this.successLoadEmojis = bind(this.successLoadEmojis, this);
      this.init();
    }

    EmojiPallet.prototype.init = function() {
      if (!(location.pathname.split('/').length >= 5)) {
        return;
      }
      this.insertSmileIcon();
      this.loadEmojiSource();
      return this.bindEvents();
    };

    EmojiPallet.prototype.bindEvents = function() {
      var $current_form;
      $current_form = null;
      $('body').on('click', '.js-open-icon-pallet', function(e) {
        var $pallet_backdrop_node, $pallet_node, $self;
        $self = $(this);
        $pallet_backdrop_node = $('.js-pallet-backdrop');
        $pallet_backdrop_node.show();
        $pallet_node = $('.js-pallet');
        $pallet_node.show();
        $pallet_node.css('top', $self.offset().top + 42);
        $pallet_node.css('left', '25%');
        return $current_form = $(this).parents('form');
      });
      $('body').on('click', '.js-pallet-backdrop', function(e) {
        var $pallet_node;
        $(this).hide();
        $pallet_node = $('.js-pallet');
        return $pallet_node.hide();
      });
      return $('body').on('click', '.js-pallet-icon', function(e) {
        var $pallet_backdrop_node, $pallet_node, $text_area;
        $text_area = $current_form.find('.js-note-text');
        $text_area.val($text_area.val() + ' ' + $(this).data('emoji'));
        $current_form.find('.js-comment-button').removeClass('disabled').removeAttr('disabled');
        $pallet_backdrop_node = $('.js-pallet-backdrop');
        $pallet_backdrop_node.hide();
        $pallet_node = $('.js-pallet');
        $pallet_node.hide();
        return $text_area.focus();
      });
    };

    EmojiPallet.prototype.insertSmileIcon = function() {
      var $icon_node;
      $icon_node = $('<li/>').append($('<i/>').attr({
        "class": 'fa fa-smile-o',
        style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer; color: #586E75;'
      }));
      $icon_node.addClass('js-open-icon-pallet');
      $elements['main_target_form_md_header_ul'].append($icon_node.clone());
      return $elements['new_note_form_md_header_ul'].append($icon_node.clone());
    };

    EmojiPallet.prototype.loadEmojiSource = function() {
      var emoji_data_source, emojis;
      emoji_data_source = ['', location.pathname.split('/')[1], location.pathname.split('/')[2], 'autocomplete_sources'].join('/');
      emojis = [];
      return $.ajax(emoji_data_source).done(this.successLoadEmojis);
    };

    EmojiPallet.prototype.successLoadEmojis = function(data, status, xhr) {
      var emojis;
      emojis = data.emojis;
      console.log(emojis.length);
      emojis = emojis.filter(function(emoji) {
        return !/(1F1|1F56|1F55)/.test(emoji.path);
      });
      console.log(emojis.length);
      return this.buildAndInsertPallet(emojis);
    };

    EmojiPallet.prototype.buildAndInsertPallet = function(emojis) {
      var $pallet_backdrop_node, $pallet_node;
      $pallet_backdrop_node = $('<div/>').attr({
        "class": 'js-pallet-backdrop',
        style: 'z-index: 100; display:none; position:fixed; top:0; left:0; width:100%; height:120%;'
      });
      $pallet_node = $('<div/>').attr({
        "class": 'js-pallet',
        style: 'z-index: 200; display: none; position: absolute; width: 70%; background: #efefef; padding: 5px; border: 1px solid #ddd;'
      });
      $.each(emojis, function() {
        var $icon_node;
        $icon_node = $('<span/>').attr({
          "class": 'js-pallet-icon',
          style: 'cursor: pointer;'
        });
        $icon_node.data('emoji', ':' + this.name + ':');
        $icon_node.append($('<img/>').attr({
          src: this.path,
          "class": 'emoji',
          style: 'width: 15px; height: 15px;'
        }));
        return $pallet_node.append($icon_node);
      });
      $pallet_backdrop_node.appendTo('body');
      return $pallet_node.appendTo('body');
    };

    return EmojiPallet;

  })();
  InsertLGTMImage = (function() {
    InsertLGTMImage.prototype.selectors = {
      note_text: '.js-note-text'
    };

    function InsertLGTMImage() {
      this.init();
    }

    InsertLGTMImage.prototype.init = function() {
      this.insertButton();
      this.insertSpinnerImage();
      return this.bindEvents();
    };

    InsertLGTMImage.prototype.bindEvents = function() {
      var loading;
      loading = false;
      return $('body').on('click', '.js-insert-lgtm-image', (function(_this) {
        return function(e) {
          var $current_form, $text_area;
          if (loading) {
            return;
          }
          loading = true;
          $('.js-lgtm-spinner-image').show();
          $current_form = $(e.target).parents('form');
          $text_area = $current_form.find(_this.selectors['note_text']);
          return $.getJSON('http://www.lgtm.in/g', function(data) {
            var lgtm_image;
            lgtm_image = data.markdown.split('\n\n')[0];
            $text_area.val($text_area.val() + ' ' + lgtm_image);
            $current_form.find('.js-comment-button').removeClass('disabled').removeAttr('disabled');
            $text_area.focus();
            loading = false;
            return $('.js-lgtm-spinner-image').hide();
          });
        };
      })(this));
    };

    InsertLGTMImage.prototype.insertButton = function() {
      var $icon_node;
      $icon_node = $('<li/>').append($('<i/>').attr({
        "class": 'fa fa-github-alt',
        style: 'font-size: 28px; line-height: 28px; padding: 6px; display: block; cursor: pointer; color: #2faa60;'
      }));
      $icon_node.addClass('js-insert-lgtm-image');
      $elements['main_target_form_md_header_ul'].append($icon_node.clone());
      return $elements['new_note_form_md_header_ul'].append($icon_node.clone());
    };

    InsertLGTMImage.prototype.insertSpinnerImage = function() {
      var $icon_node;
      $icon_node = $('<li/>').css({
        display: 'none'
      });
      $icon_node.addClass('js-lgtm-spinner-image');
      $icon_node.append($('<img/>').attr({
        style: 'width: 34px; padding: 6px;',
        src: spinner_image
      }));
      $elements['main_target_form_md_header_ul'].append($icon_node.clone());
      return $elements['new_note_form_md_header_ul'].append($icon_node.clone());
    };

    return InsertLGTMImage;

  })();
  activateExtensions = function() {
    new InsertPlusOne;
    new EmojiPallet;
    return new InsertLGTMImage;
  };
  $(function() {
    return activateExtensions();
  });
  return $(document).on('page:load', function() {
    return activateExtensions();
  });
});
