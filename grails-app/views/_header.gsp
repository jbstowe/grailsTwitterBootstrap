<div class="navbar navbar-inverse navbar-fixed-top ${myObject.class}">
      <div class="navbar-inner">
        <img src="${resource(dir:pluginContextPath + '/images',file:'Alabama-A.jpg')}" style="float:left; height:40px;;">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href=".container">${myObject.projectName}</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              ${body}
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
