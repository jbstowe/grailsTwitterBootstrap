package twitter.bs

class InitTagLib {
	static namespace = "tb"

	def init = {
		out << "<link rel=stylesheet href='${resource(dir:pluginContextPath + '/css',file:'ua-bootstrap.css')}'/>"
		out << "<link rel=stylesheet href='${resource(dir:pluginContextPath + '/css',file:'ua-bootstrap-responsive.css')}'/>"
		out << "<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js'></script>"
		out << "<script src='${resource(dir:pluginContextPath +'/js',file:'bootstrap.js')}'></script>"
	}

	def header = {attrs,body ->
		def myObject = [:]
		myObject.projectName = attrs.projectName
		myObject.class = attrs.class

		out << render(template:'/header', model:[myObject:myObject,body: body()], plugin:'twitterBootstrap')

	}

	def oneLevelHeader = {attrs, body ->
		def myObject = [:]
		myObject.title = attrs.title
		myObject.id = attrs.id
		myObject.class = attrs.class
		myObject.style = attrs.style
		myObject.url = attrs.url
		myObject.img = attrs.image

		out << render(template:'/oneLevelHeader',model:[body:body(),myObject:myObject], plugin:'twitterBootstrap')
	}

	def button = {attrs ->
		def color = attrs.color
		def size = attrs.size
		def text = attrs.text
		def attribute = attrs.attribute
		def attrValue = attrs.attrValue
		def href = attrs.href

		switch(size) {
			case "large": size =  "btn-large"; break;
			case "medium": size = ""; break;
			case "small": size = "btn-small"; break;
			case "mini" : size = "btn-mini"; break;
			default: size ="";
		}

		switch(color){
			case "blue": color = "btn-primary"; break;
			case "lightblue": color = "btn-info"; break;
			case "green": color = "btn-success"; break;
			case "orange": color = "btn-warning"; break;
			case "red": color = "btn-danger"; break;
			case "black": color = "btn-inverse"; break;
			case "none": color = "btn-link"; break;
			default: color = "";
		}

		out << "<a href=${href} class='btn $size ${color}' ${attribute}='${attrValue}'>${text}</a>"
	}

	def div = {attrs,body ->
		def grid = attrs.grid
		def hook = attrs.class

		out << render(template:'/grid', model:[hook:hook, grid:grid, body: body()], plugin:'twitterBootstrap')
	}

	def table = {attrs,body->
		out << render(template:'/table', model:[body: body()], plugin:'twitterBootstrap')
	}

	def slider = {attrs,body->
		out << render(template:'/slider', model:[body: body()], plugin:'twitterBootstrap')
	}
}
