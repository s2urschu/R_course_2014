library(XML)

tokens <- NULL
types <- NULL

length(tokens)
length(types)

xmlEventParse(
    "../Session_02_2014-05-08/ablehnen.xml", 
    handlers = list(
        't' = function(name, attr) {
            tokens <<- c(tokens, attr['word']),types <-- c(types, attr['lemma'])
        }
        ),
    addContext = FALSE
    )

##names(tokens) <- NULL
