<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Grails Twitter Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Twitter Bootstrap Init -->
    <tb:init/>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

  </head>

  <body>



    <tb:oneLevelHeader title="Twitter Bootstrap for Grails" class="oneLevelNav" style="display:none;">
        <li><a href="#">Home</a></li>
        <li><a href="#">Another Title</a></li>
        <li><a href="#" class="changeNav" style="background:lightblue;color:#333;">Change Navbar</a></li>
    </tb:oneLevelHeader>

    <tb:header projectName="Grails Twitter Bootstrap" class="defaultHeader">
        <li><a href="#config">Base Configuration</a></li>
        <li><a href="#grid">Grid</a></li>
        <li><a href="#" class="changeNav" style="background:lightblue;color:#333;">Change Navbar</a></li>
    </tb:header>

    <script>
        $('.changeNav').on('click',function(e){
            e.preventDefault(e);
            $('.defaultHeader').fadeToggle(function(){
                if ( $('.defaultHeader').is(':visible') && $(window).width() > 980){
                 $('body').css('margin-top','60px');
                }
                else{
                 $('body').css('margin-top','0');
                }
            });
            $('.oneLevelNav').fadeToggle();


            
        })
    </script>

    <div class="container">
        <!-- CONFIG -->
        <div id="config">
        <h1> Base Configuration </h1>
        <p>Twitter Bootstrap for grails is a grails plugin that automatically includes all the css and javascript required by twitter bootstrap into your grails project.  It uses custom taglibs (the ones like &lt;g:doSomething/&gt;) to create all the visual elements you need.  Twiiter bootstrap uses the <b>&lt;tb:doSomething/&gt;</b> taglib by default.

        <p>Setup is easy, simply place the plugin zip file in the root directory of your grails project, open the command line (the one in springsource is fine) and execute the command...</p>

        <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>(grails) install-plugin grails-twitter-bootstrap-0.1.zip</p></pre>
        </div>

        <p>Now that the plugin is installed create your controllers, domains, services etc. just as you normally would.  When you create your view(s) you will need to place <b>&lt;tb:init/&gt;</b> in the head of your view.  This includes the necessay css and javascript</p>

         <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;!DOCTYPE html &gt;
&lt;html lang="en"&gt;
  &lt;head>
    &lt;meta charset="utf-8"&gt;
    &lt;title>My Awesome Grails Project&lt;/title&gt;
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;
    <b>&lt;tb:init/&gt;</b>
  &lt;/head&gt;

                </p></pre>
        </div>
    <p>Thats it!  You now have access to all the taglibs provided below!</p>

    <p>Now add the navbar (outlined below) or if you do not want the defualt navbar create a new div with the class of container.  All of your main content must go inside this div!</p>

    <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;div class="container"&gt;
    //All of your main html content goes here!
&lt;/div&gt;

                </p></pre>
        </div>
    </div>
    <!-- /CONFIG -->



    <!-- NAVBAR -->
    <div id="navbar">
        <h1>Default Navbar</h1>
        <p>  The default navbar is the slender bar at the top of this page.  <b>The navbar needs to go before your main content div!</b>  To create this use the <b>&lt;tb:header&gt; ... &lt;/tb:header&gt;</b>, then create list (li) items that will be styled as menu items.  You can also specify a project name to be displayed in the top left corner of the bar.</p>

        <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;tb:header projectName="Grails Twitter Bootstrap"&gt;
    &lt;li&gt;&lt;a href="#config"&gt;Base Configuration&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#grid"&lt;Grid&lt;/a&lt;/li&gt;
    ...
&lt;/tb:header&gt;

&lt;div class="container"&gt;
    //All of your main html content goes here!
&lt;/div&gt;

                </p></pre>
        </div>

        <p>It is also easy to add submenus (dropdowns) just make an unordered list as a child of the list element.</p>

        <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;tb:header&gt;
    &lt;li class="dropdown">
            &lt;a href="#" class="dropdown-toggle" data-toggle="dropdown">
            Dropdown
            &lt;b class="caret">&lt;/b>
            &lt;/a>
            &lt;ul class="dropdown-menu">
                &lt;li>&lt;a href="">This&lt;/a>&lt;li>
                &lt;li>&lt;a href="">Is&lt;/a>&lt;li>
                &lt;li>&lt;a href="">A Dropdown&lt;/a>&lt;li>
                &lt;li>&lt;a href="">Menu&lt;/a>&lt;li>
            &lt;/ul>
        &lt;/li>
&lt;/tb:header&gt;
                </p></pre>
        </div>
        <br/><br/>


        <h1> One Level Navbar </h1>
        <p>For a more classic UA look you can use a custom navbar by using the <b>&lt;tb:oneLevelHeader&gt; ... &lt;/tb:oneLevelHeader&gt;</b> tag.  Click the blue button at the top to see the differences in the navbars.<p/>

        <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;tb:oneLevelHeader title="Example One Level Navbar"&gt;
    &lt;li&gt;&lt;a href="#config"&gt;Home&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#grid"&lt;FAQ&lt;/a&lt;/li&gt;
&lt;/tb:oneLevelHeader&gt;
                </p></pre>
        </div>

        <tb:oneLevelHeader title="Example Level One Navigation" image = "${resource(dir:pluginContextPath + '/images',file:'touchinglives.jpg')}">
            <li><a href="#">Home</a></li>
            <li><a href="#">FAQ</a></li>

        </tb:oneLevelHeader>

        <p>It is also possible to add images instead of text.  Just specify an <b>image</b> attribute and pass the path of the image you want to use.  Use the css selector #wordmark1 img for the left image and #wordmark1 img for the right image.

    </div>

    <!-- /NAVBAR -->

    <!-- GRID -->
    <div id="grid">
        <h1> Grid </h1>
        <p> You can use the grid to create columns on your page with the tag <b>&lt;tb:div grid="6"&gt; ... &lt;/tb:div&gt; </b>.  The grid is also fluid and responsive so it will change based on the size of your browser.(ie it will scale on any mobile device)</p>

        <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;div class="row"&gt;
    &lt;tb:div grid="6"&gt;
        ...
    &lt;/tb:div&gt;
    &lt;tb:div grid="6"&gt;
        ...
    &lt;/tb:div&gt;
&lt;/div&gt;
                </p></pre>
        </div>

        <p>Use the "row" attribute to define how wide the column will be.  By default twitter bootstrap uses a 960px grid so that gives you 12 divisions which to work with.</p>

        <div class="row">
        <tb:div grid="6">
            <h2>Grid 6</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </tb:div>

        <tb:div grid="6">
            <h2>Grid 6</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </tb:div>
    </div>

    <div class="row">
        <tb:div grid="4">
            <h2>Grid 4</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat.</p>
        </tb:div>

        <tb:div grid="4">
            <h2>Grid 4</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat.</p>
        </tb:div>

        <tb:div grid="4">
            <h2>Grid 4</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat.</p>
        </tb:div>
    </div>

    <div class="row">
        <tb:div grid="2">
            <h2>Grid 2</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua.</p>
        </tb:div>

        <tb:div grid="2">
            <h2>Grid 2</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua.</p>
        </tb:div>

        <tb:div grid="2">
            <h2>Grid 2</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua.</p>
        </tb:div>

        <tb:div grid="2">
            <h2>Grid 2</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua.</p>
        </tb:div>

        <tb:div grid="2">
            <h2>Grid 2</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua.</p>
        </tb:div>

        <tb:div grid="2">
            <h2>Grid 2</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua.</p>
        </tb:div>
    </div>
</div>
    <!-- /GRID -->
    <div style="clear:both"></div>



    <!-- BUTTONS -->
    <div id="button">
    <h1> Buttons and Links </h1>

    <p>buttons and links are prestyled for you so all you need to do is define the url, size and the text and twitter bootstrap will create it for you</p>

    <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;tb:button text="Your Text" size="large" href="#thisGoesNowhere"/&gt;
            </p></pre>
    </div>

    <div class="row">
        <tb:div grid="3">
            <h3> large </h3>
            <h3> medium </h3>
            <h3> small </h3>
            <h3> mini </h3>
        </tb:div>
        <tb:div grid="9" class="buttons">
            <tb:button text="Your Text" size="large" href="#myModal"/><br/>
            <tb:button text="Your Text" size="medium" href="#myModal"/><br/>
            <tb:button text="Your Text" size="small" href="#myModal"/><br/>
            <tb:button text="Your Text" size="mini" href="#myModal"/><br/>
        </tb:div>
    </div>

    <p> You can also specify a color other than the default ua color (#990000) by adding on the "color"
    attribute</p>

    <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;tb:button text="Your Text" size="large" href="#thisGoesNowhere color="blue"/&gt;
            </p></pre>
    </div>

    <div class="row">
        <tb:div grid="3">
            <h3> blue </h3>
            <h3> lightblue </h3>
            <h3> green </h3>
            <h3> orange </h3>
        </tb:div>
        <tb:div grid="3" class="buttons">
            <tb:button text="Your Text" href="#myModal" color ="blue"/><br/>
            <tb:button text="Your Text" href="#myModal" color ="lightblue"/><br/>
            <tb:button text="Your Text" href="#myModal" color ="green"/><br/>
            <tb:button text="Your Text" href="#myModal" color ="orange"/><br/>
        </tb:div>

        <tb:div grid="3">
            <h3> red </h3>
            <h3> black </h3>
            <h3> none </h3>
        </tb:div>
        <tb:div grid="3" class="buttons">
            <tb:button text="Your Text" href="#myModal" color ="red"/><br/>
            <tb:button text="Your Text" href="#myModal" color ="black"/><br/>
            <tb:button text="Your Text" href="#myModal" color ="none"/><br/>
        </tb:div>
    </div>
</div>
<!-- /BUTTONS -->

<!-- TABLES -->
<div id="table">
    <h1>Tables</h1>
    <p>Tables can be styled quickly using the <b>&lt;tb:table&gt;...&lt;/tb:table&gt;</b> tag</p>


    <tb:table>
              <thead>
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>@twitter</td>
                </tr>
              </tbody>
    </tb:table>

    <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;tb:table>
              &lt;thead>
                &lt;tr>
                  &lt;th>#&lt;/th>
                  &lt;th>First Name&lt;/th>
                  &lt;th>Last Name&lt;/th>
                  &lt;th>Username</th>
                &lt;/tr>
              &lt;/thead>
              &lt;tbody>
                &lt;tr>
                  &lt;td>1&lt;/td>
                  &lt;td>Mark&lt;/td>
                  &lt;td>Otto&lt;/td>
                  &lt;td>@mdo&lt;/td>
                &lt;/tr>
                &lt;tr>
                  &lt;td>2&lt;/td>
                  &lt;td>Jacob&lt;/td>
                  &lt;td>Thornton&lt;/td>
                  &lt;td>@fat&lt;/td>
                &lt;/tr>
                &lt;tr>
                  &lt;td>3&lt;/td>
                  &lt;td>Larry&lt;/td>
                  &lt;td>the Bird&lt;/td>
                  &lt;td>@twitter&lt;/td>
                &lt;/tr>
              &lt;/tbody>
    &lt;/tb:table>
            </p></pre>
    </div>
</div>
<!-- /TABLES -->

<!-- Modal -->
<div id="modal">
    <h1>Modal</h1>
    <p>Modal's are popups that can display divs on the same page or can be programmed to display ajax content.  To use modal's we need to create a button and pass some extra attributes to it.</p>

    <tb:button text="Open the Modal!" size="large" href="#myModal" attribute="data-toggle" attrValue="modal"/><br/>

    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Modal header</h3>
        </div>
        <div class="modal-body">
            <p>One fine body…</p>
        </div>
        <div class="modal-footer">
    <tb:button text="Close" size="medium" href="#close" attribute="data-dismiss" attrValue="modal" />
    <tb:button text="Save Changes" size="medium" href="#save" color="green" />
  </div>
</div>
</div>
<!-- /MODAL -->

<!-- Slider -->
<div id="slider">
    <h1>Slider</h1>
    <p>Creating sliders are a breeze, just use the <b>&lt;tb:slider>..&lt;/tb:slider></b> tag</p>
    <tb:slider>
        <div class="active item"><h3>Image</h3><img src="${resource(dir:pluginContextPath + '/images',file:'example1.jpg')}"></div>
        <div class="item"><h3>Video</h3><iframe width="480" height="360" src="http://www.youtube.com/embed/Oqun9B15kmM" frameborder="0" allowfullscreen></iframe></div>
        <div class="item"><h3>Regular Div</h3>You can have regular divs also</div>
    </tb:slider>

    <p>The code to make the above slider...</p>

    <div style="background:#eeeeee;border-radius:5px;">
            <pre><p>
&lt;tb:slider>
    &lt;div class="active item">&lt;h3>Image&lt;/h3>&lt;img src="${resource(dir:pluginContextPath + '/images',file:'example1.jpg')}">&lt;/div>
    &lt;div class="item">&lt;h3>Video&lt;/h3>&lt;iframe width="480" height="360" src="http://www.youtube.com/embed/Oqun9B15kmM" frameborder="0" allowfullscreen>&lt;/iframe>&lt;/div>
    &lt;div class="item">&lt;h3>Regular Div&lt;/h3>You can have regular divs also&lt;/div>
&lt;/tb:slider>
            </p></pre>
    </div>



</div>


    


    </div> <!-- /container -->

    <div class="footer" style="background:url(${resource(dir:pluginContextPath + '/images',file:'footer.png')});width:100%;height:110px;margin-top:50px;">
    </div>

    <style>
    .buttons a{
        margin-bottom:25px;
    }

    .carousel-inner div{
        height:400px;
    }

    .carousel-inner div h3{
        text-align: center;
    }

    .carousel-inner div img{
        display: block;
        margin:auto;
    }

    .carousel-inner div iframe{
        display: block;
        margin:auto;
    }


    </style>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap-transition.js"></script>
    <script src="../assets/js/bootstrap-alert.js"></script>
    <script src="../assets/js/bootstrap-modal.js"></script>
    <script src="../assets/js/bootstrap-dropdown.js"></script>
    <script src="../assets/js/bootstrap-scrollspy.js"></script>
    <script src="../assets/js/bootstrap-tab.js"></script>
    <script src="../assets/js/bootstrap-tooltip.js"></script>
    <script src="../assets/js/bootstrap-popover.js"></script>
    <script src="../assets/js/bootstrap-button.js"></script>
    <script src="../assets/js/bootstrap-collapse.js"></script>
    <script src="../assets/js/bootstrap-carousel.js"></script>
    <script src="../assets/js/bootstrap-typeahead.js"></script>

  </body>
</html>
