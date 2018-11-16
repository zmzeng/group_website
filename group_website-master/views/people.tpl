% include('header.tpl')
    <!-- title -->
    <div class="ui vertical center aligned container segment">
        <h1 class="ui header">Team Members</h1>
      </div>
  
      <!-- People -->
      <div class="ui vertical segment container">
        <div class="ui grid segment">
          <div class="doubling four column row">
              <div class="column">
                  <div class="ui basic segment">
                      <h3 class="ui header">研究助理<br>
                      Research assistant</h3>
                      <div class="ui card"  id="黄瑞芸">
                        <div class="image">
                          <img src="/media/person_image//HRY.jpg">
                        </div>
                        <div class="content">
                          <div class="header">黄瑞芸</div>
                          <div class="meta">
                            <span class="date">工程师</span>
                          </div>
                        </div>
                      </div>
                  </div>
              </div>
              <div class="column">
                  <div class="ui basic segment">
                      <h3 class="ui header">博士后<br>
                  Post Doctors</h3>
                      <div class="ui card"  id="张灿坤">
                        <div class="image">
                          <img src="/media/person_image/ZCK.jpg">
                        </div>
                        <div class="content">
                          <div class="header">张灿坤</div>
                          <div class="meta">
                            <span class="date">2016</span>
                          </div>
                        </div>
                      </div>
                  </div>
              </div>
          </div>
        </div>
  
        <div class="ui segment">
          <h3 class="ui header">研究生 Graduate Students</h3>
          % for grade in grades:
          <h4 class="ui header">{{grade['year']}}</h4>
          <div class="ui five doubling cards">
            % for person in sorted(grade['people'], key=lambda x:x['name'], reverse=True):
            <div class="card" id="{{ person['name'] }}">
              <div class="image">
                <img src="/media/person_image/{{person['image']}}">
              </div>
              <div class="content">
                <div class="header">{{ person['name'] }}</div>
                <div class="meta">
                  <span class="date">{{ person['degree'] }}</span>
                </div>
              </div>
            </div>
            % end
          </div>
          % end
    