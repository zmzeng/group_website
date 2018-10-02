% include('header.tpl', title='Index')
    <!-- title -->
    <div class="ui vertical center aligned container segment">
        <h1 class="ui header">分子基界面催化 课题组</h1>
      </div>
  
      <!-- Research -->
  
      <div class="ui container vertical segment">
        <div class="ui segments">
        % for topic in topics:
  
          <div class="ui segment" id='Research'>
            <h2 class="ui center aligned  header">{{ topic['title'] }}</h2>
            <p style='font-size:120%'>{{ topic['description'] }}</p>
          </div>
  
        % end
        </div>
      </div>
% include('footer.tpl', title='Index')