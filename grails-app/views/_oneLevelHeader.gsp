<div id="noContainer" class="${myObject.class}" style="${myObject.style}">
	<div class="container">
		<div id="oneLevelHeader" class="span12">	<!--Header begins-->
		<h1><a href="http://www.ua.edu" id="nameplate">The University of Alabama</a></h1>
		<% if(myObject.img){ %>
			<h2><a href="${myObject.url}" id="wordmark1" title="Organization Name Here"><img src="${myObject.img}"/></a></h2>
		<% }else{ %>
			<h2><a href="${myObject.url}" id="wordmark1" title="Organization Name Here">${myObject.title}</a></h2>
		<% } %>

		${menu}

		<div id="main-nav">	<!--Main navigation begins-->
			<ul class="menu_6">
				${body}
			</ul>
		</div>	<!--Main navigation ends-->
		</div>	<!--Header ends-->
	</div>

	<style>
	body{
		margin-top:0px;
	}
	</style>
</div>