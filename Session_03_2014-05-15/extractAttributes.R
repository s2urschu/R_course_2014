library(XML)

tokens <- NULL

xmlEventParse(
    "../Session_02_2014-05-08/ablehnen.xml", 
    handlers = list(
        't' = function(name, attr) {
            tokens <<- c(tokens, attr['word'])
        }
        ),
    addContext = FALSE
    )

##names(tokens) <- NULL
