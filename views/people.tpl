% include('header.tpl')
    <!-- title -->
    <div class="ui vertical center aligned container segment">
        <h1 class="ui header">Team Members</h1>
      </div>
  
      <!-- People -->
      <div class="ui vertical segment container">
        <div class="ui grid segment">
          <div class="doubling four column row">
            %for ra in research_assistant:
              <div class="column">
                  <div class="ui basic segment">
                      <h3 class="ui header">研究助理<br>
                      Research assistant</h3>
                      <div class="ui card"  id="{{ra['name']}}">
                        <div class="image">
                          <img src="/media/person_image/{{ra['image']}}">
                        </div>
                        <div class="content">
                          <div class="header">{{ra['name']}}</div>
                          <div class="meta">
                            <span class="date">{{ra['degree']}}</span>
                          </div>
                        </div>
                      </div>
                  </div>
              </div>
            % end
            % for pd in post_doctors:
              <div class="column">
                  <div class="ui basic segment">
                      <h3 class="ui header">博士后<br>
                  Post Doctors</h3>
                      <div class="ui card"  id="{{pd['name']}}">
                        <div class="image">
                          <img src="/media/person_image/{{pd['image']}}">
                        </div>
                        <div class="content">
                          <div class="header">{{pd['name']}}</div>
                          <div class="meta">
                            <span class="date">{{pd['year']}}</span>
                          </div>
                        </div>
                      </div>
                  </div>
              </div>
            % end
          </div>
        </div>
  
        <div class="ui segment">
          <h3 class="ui header">研究生<br>Graduate Students</h3>
          % for grade in grades:
          <h4 class="ui header">{{grade['year']}}</h4>
          <div class="ui five doubling cards">
            % for person in sorted(grade['people'], key=lambda x:x['image'], reverse=False):
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
    