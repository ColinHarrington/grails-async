class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/nap/$action/$seconds"(controller: 'nap')

        "/"(view: "/impress")

        "500"(view: '/error')
    }
}
