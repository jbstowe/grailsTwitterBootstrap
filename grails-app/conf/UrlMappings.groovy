class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:'test'){
			action = [GET:"index"]
		}

		"500"(view:'/error')
	}
}
