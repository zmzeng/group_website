% include('header.tpl')
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
            % for des in topic['description']:
            <p style='font-size:120%'>{{ des }}</p>
            % end
          </div>
        % end
        </div>
      </div>
% include('footer.tpl', title='Index')