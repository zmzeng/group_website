% include('header.tpl')
    <!-- title -->
    <div class="ui vertical center aligned container segment">
        <h1 class="ui header">Publications</h1>
      </div>
  
      <!-- article -->
      <style type="text/css"unselectable="on">
        a{ color: black; } /* CSS link color */
      </style>
      <div class="ui container vertical segment ">
        <div class="ui two doubling cards">
        % for i, article in enumerate(sorted(articles, key=lambda x:x["publish_date"], reverse=True)):
          <div class="ui card" id="article">
            <div class="ui basic segment">
              <a class="article title" href="{{ article['link'] }}" target="_blank"><h4><I>{{ len(articles)-i }}.&nbsp;&nbsp;</I>{{ article['title'] }}</h4></a>
              <a class="article info" href="{{ article['link'] }}" target="_blank"><p>{{ article['info'] }}</p></a>
              <a class="article doi" href="{{ article['link'] }}" target="_blank"><p>{{ article['doi'] }}</p></a>
              <a class="article toc" href="{{ article['link'] }}"  target="_blank"><img class="ui centered image" src="/media/article_image/{{ article['toc'] }}" height="200px"></a>
            </div>
          </div>     
        % end
        </div>
      </div>
% include('footer.tpl', title='Index')