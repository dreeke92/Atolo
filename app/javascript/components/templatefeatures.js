

function templateFeatures() {

    // Used to detect whether the users browser is an mobile browser
  function isMobile() {
      ///<summary>Detecting whether the browser is a mobile browser or desktop browser</summary>
      ///<returns>A boolean value indicating whether the browser is a mobile browser or not</returns>
      if (sessionStorage.desktop) // desktop storage
          return false;
      else if (localStorage.mobile) // mobile storage
          return true;

      // alternative
      var mobile = ['iphone','ipad','android','blackberry','nokia','opera mini','windows mobile','windows phone','iemobile'];
      for (var i in mobile) if (navigator.userAgent.toLowerCase().indexOf(mobile[i].toLowerCase()) > 0) return true;
      // nothing found.. assume desktop
      return false;

  }
  var checkMobile = isMobile();

  var $window = $(window),
  $body = $('body'),
  $wrapper = $('#wrapper');

  // page loads nicely #working
  $window.on('load', function() {
    window.setTimeout(function() {
      $body.removeClass('is-preload');
    }, 100);
  });


  // smooth scroll #working
  $('.smooth-scroll').scrolly();
  $('.smooth-scroll-middle').scrolly({ anchor: 'middle' });

  // Wrapper.
  $wrapper.children()
    .scrollex({
      top:    '30vh',
      bottom:   '30vh',
      initialize: function() {
        $(this).addClass('is-inactive');
      },
      terminate:  function() {
        $(this).removeClass('is-inactive');
      },
      enter:    function() {
        $(this).removeClass('is-inactive');
      },
      leave:    function() {

        var $this = $(this);

        if ($this.hasClass('onscroll-bidirectional'))
          $this.addClass('is-inactive');

      }
    });

  // Items. #working
    $('.items')
      .scrollex({
        top:    '30vh',
        bottom:   '30vh',
        delay:    50,
        initialize: function() {
          $(this).addClass('is-inactive');
        },
        terminate:  function() {
          $(this).removeClass('is-inactive');
        },
        enter:    function() {
          $(this).removeClass('is-inactive');
        },
        leave:    function() {

          var $this = $(this);

          if ($this.hasClass('onscroll-bidirectional'))
            $this.addClass('is-inactive');

        }
      })
      .children()
        .wrapInner('<div class="inner"></div>');

  // Gallery.
    $('.gallery')
      .wrapInner('<div class="inner"></div>')
      .prepend(checkMobile ? '' : '<div class="forward"></div><div class="backward"></div>')
      .prepend('<div class="forward"><i class="fas fa-chevron-right gallery-arrow"></i></div><div class="backward"><i class="fas fa-chevron-left gallery-arrow"></div>')
      .scrollex({
        top:    '30vh',
        bottom:   '30vh',
        loop: true,
        delay:    50,
        initialize: function() {
          $(this).addClass('is-inactive');
        },
        terminate:  function() {
          $(this).removeClass('is-inactive');
        },
        enter:    function() {
          $(this).removeClass('is-inactive');
        },
        leave:    function() {

          var $this = $(this);

          if ($this.hasClass('onscroll-bidirectional'))
            $this.addClass('is-inactive');

        }
      })
      .children('.inner')
        .css('overflow', 'hidden')
        // .css('overflow-y', browser.mobile ? 'visible' : 'hidden')
        // .css('overflow-x', browser.mobile ? 'scroll' : 'hidden')
        // .css('overflow-y', browser.mobile ? 'visible' : 'hidden')
        // .css('overflow-x', browser.mobile ? 'scroll' : 'hidden')
        .css('overflow-y', checkMobile ? 'visible' : 'hidden')
        .css('overflow-x', checkMobile ? 'scroll' : 'hidden')
        .scrollLeft(0);

    // Style #1.
      // ...

    // Style #2.
      $('.gallery')
        .on('wheel', '.inner', function(event) {
          var $this = $(this),
            delta = (event.originalEvent.deltaX * 10);

          // Cap delta.
            if (delta > 0)
              delta = Math.min(25, delta);
            else if (delta < 0)
              delta = Math.max(-25, delta);

          // Scroll.
            $this.scrollLeft( $this.scrollLeft() + delta );
        })
        .on('mouseenter', '.forward, .backward', function(event) {

          var $this = $(this),
            $inner = $this.siblings('.inner'),
            direction = ($this.hasClass('forward') ? 1 : -1);

          // Clear move interval.
            clearInterval(this._gallery_moveIntervalId);

          // Start interval.
            this._gallery_moveIntervalId = setInterval(function() {
              $inner.scrollLeft( $inner.scrollLeft() + (5 * direction) );
            }, 10);

        })
        .on('mouseleave', '.forward, .backward', function(event) {

          // Clear move interval.
            clearInterval(this._gallery_moveIntervalId);

        });

  // Lightbox.
      $('.gallery.lightbox')
        .on('click', 'a', function(event) {

          var $a = $(this),
            $gallery = $a.parents('.gallery'),
            $modal = $gallery.children('.modal'),
            $modalImg = $modal.find('img'),
            href = $a.attr('href');

          // Not an image? Bail.
            if (!href.match(/\.(jpg|gif|png|mp4)$/))
              return;

          // Prevent default.
            event.preventDefault();
            event.stopPropagation();

          // Locked? Bail.
            if ($modal[0]._locked)
              return;

          // Lock.
            $modal[0]._locked = true;

          // Set src.
            $modalImg.attr('src', href);

          // Set visible.
            $modal.addClass('visible');

          // Focus.
            $modal.focus();

          // Delay.
            setTimeout(function() {

              // Unlock.
                $modal[0]._locked = false;

            }, 600);

        })
        .on('click', '.modal', function(event) {

          var $modal = $(this),
            $modalImg = $modal.find('img');

          // Locked? Bail.
            if ($modal[0]._locked)
              return;

          // Already hidden? Bail.
            if (!$modal.hasClass('visible'))
              return;

          // Lock.
            $modal[0]._locked = true;

          // Clear visible, loaded.
            $modal
              .removeClass('loaded')

          // Delay.
            setTimeout(function() {

              $modal
                .removeClass('visible')

              setTimeout(function() {

                // Clear src.
                  $modalImg.attr('src', '');

                // Unlock.
                  $modal[0]._locked = false;

                // Focus.
                  $body.focus();

              }, 475);

            }, 125);

        })
        .on('keypress', '.modal', function(event) {

          var $modal = $(this);

          // Escape? Hide modal.
            if (event.keyCode == 27)
              $modal.trigger('click');

        })
        .prepend('<div class="modal" tabIndex="-1"><div class="inner"><img src="" /></div></div>')
          .find('img')
            .on('load', function(event) {

              var $modalImg = $(this),
                $modal = $modalImg.parents('.modal');

              setTimeout(function() {

                // No longer visible? Bail.
                  if (!$modal.hasClass('visible'))
                    return;

                // Set loaded.
                  $modal.addClass('loaded');

              }, 275);

            });
};

export { templateFeatures };




