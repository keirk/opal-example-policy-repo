package workiro.tags.create

import future.keywords

default hello = false

hello {
    response := http.send({
        "method" : "POST",
        "url": "https://httpbin.org/post",
		"body": "{\"threadIds\":[1,2,3,4,5]}"
    })
}