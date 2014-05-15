library(XML)

tokens <- NULL
types <- NULL

xmlEventParse(
    "../Session_02_2014-05-08/ablehnen.xml", 
    handlers = list(
        't' = function(name, attr) {
            tokens <<- c(tokens, attr['word'])
            length(tokens)
        },
        't1' = function(name,attr){
            types <<- c(types, attr['lemma'])
            length(types)
        }
        ),
    addContext = FALSE
    )

##names(tokens) <- NULL
