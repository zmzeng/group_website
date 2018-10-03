% include('header.tpl')
  <!-- title -->
  <div class="ui vertical center aligned container segment">
    <h1 class="ui header">Laboratory Equipment</h1>
  </div>

    <!-- equipment -->
    <div class="ui vertical segment container">
      <div class="ui two column equal height grid">
        % for device in devices:
        <div class="column">
          <div class="ui segment">
            <h4>{{ device['name'] }}</h4>
            <img class="ui image" src="/media/device_image/{{ device['image'] }}" alt="" height="300px">
          </div>
        </div>
        % end
      </div>
    </div>
% include('footer.tpl')  