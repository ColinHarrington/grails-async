class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/nap/$action/$seconds"(controller: 'nap')

        "/"(view: "/index")
        "/impress"(view: '/impress')

        "500"(view: '/error')
    }
}
