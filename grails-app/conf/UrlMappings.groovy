class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index")
        "/impress"(view: '/impress')
        "500"(view: '/error')
    }
}
