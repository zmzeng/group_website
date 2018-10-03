% include('header.tpl')
    <!-- image -->
    <div class="ui container vertical segment">
        <div class="flexslider">
          <ul class="slides">
            % for toc in tocs:
            <li>
              <img src="/media/toc_image/{{toc}}" alt="">
            </li>
            % end
          </ul>
        </div>
      </div>

      <!-- image play -->
      <link rel="stylesheet" href="static/css/flexslider.css" media="screen" title="no title" charset="utf-8">
      <script src="static/jquery.min.js"></script>
      <script defer="" src="static/jquery.flexslider.js"></script>
      <script type="text/javascript">
      $(window).load(function() {
        $('.flexslider').flexslider({
          animation: "slide",
          directionNav: false,
        });
      });
      </script>
  
      <!-- introduction -->
      <div class="ui vertical container segment">
        <div class="ui stackable grid">
          <div class="ten wide column">
            <div class="ui basic segment">
              % for d in description:
              <p id="introduction">{{d}}</p>
              % end
            </div>
          </div>
          <div class="six wide column">
            <div class="ui segments">
              <div class="ui segment">
                <h4>News</h4>
                <div class="flexslider">
                  <ul class="slides">
                  % for new, new_link in zip(news, news_link):
                    <li id="news">
                      <a href="{{new_link}}" target="_blank"><p>{{new}}</p></a>
                    </li>
                  % end
                  </ul>
                </div>
              </div>
            </div>    
          </div>
        </div>
      </div>
% include('footer.tpl')  