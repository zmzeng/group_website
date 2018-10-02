% include('header.tpl', title='Index')
    <!-- title -->
    <div class="ui vertical center aligned container segment">
        <h1 class="ui header">Team Leaders</h1>
      </div>
  
  
      <!-- Leaders -->
      <div class="ui vertical segment container ">
        % for prof in profs:
        <div class="ui segment container">
          <div class="ui stackable grid">
            <div class="ui four wide column">
              <div class="ui basic segment">
                <img src="media/person_image/{{ prof['photo'] }}" class="ui image">
                <h4 class="ui header" id="leader_title">{{ prof['name'] }}</h4>
                <p>{{ prof['info'] }}</p>
              </div>
            </div>
            <div class="ui twelve wide column">
              <div class="ui basic segment">
                <p style='font-size:120%'>{{ prof['description'] }}</p>
              </div>
            </div>
          </div>
        </div>
        % end
      </div>
% include('footer.tpl')  