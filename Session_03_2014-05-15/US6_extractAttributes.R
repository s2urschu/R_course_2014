library(XML)

tokens <- NULL
types <- NULL



xmlEventParse(
    "t_890726_33.xml", 
    handlers = list(
        't' = function(name, attr) {
            tokens <<- c(tokens, attr['word']); types <<- c(types, attr['lemma'])
        }
        ),
    addContext = FALSE
    )
types <- unique(types, fromLast = TRUE)
length(tokens)
length(types)


##names(tokens) <- NULL

