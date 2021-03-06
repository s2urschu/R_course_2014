library(XML)

# Der Vektor tokens besteht aus Null Werten.
tokens <- NULL

# Der Vektor types besteht aus Null Werten.
types <- NULL

# xmlEventParser = liest den Text, gibt die Daten an handlers weiter, 
# der dann die functions enh�lt, die ausgef�hrt werden sollen.
# handlers enth�lt die Funktionen. Was list bedeutet ist mir noch nicht klar.
# list = Auflistung der Funktionen, die ausgef�hrt/konstruiert werden sollen?
xmlEventParse(
    "t_890726_33.xml",
    handlers = list(

# Die Funktion hei�t t und sie besteht aus den Parametern name und attr
        't' = function(name, attr) {

# In den geschweiften Klammern befindet sich die Anweisung, 
# die die Funktion erf�llen soll. 
# Der Vektor hei�t tokens und er beinhaltet Tokens, die das Attribut word haben.
# Danach soll die L�nge des Vektors angezeigt werden.
            tokens <<- c(tokens, attr['word'])
            length(tokens)
            
# Komma nach jeder Anweisung nicht vergessen!
        },

# In den geschweiften Klammern befindet sich die Anweisung, 
# die die Funktion erf�llen soll. 
# Der Vektor hei�t types und er beinhaltet Types, die das Attribut lemma haben.
# Danach soll die L�nge des Vektors angezeigt werden.
        't1' = function(name, attr){
          types <<- c(types, attr['lemma'])
          length(types)
        }
        ),

# Hier besteht die M�glichkeit eine callback function aufzurufen.
# Dies soll jedoch nicht geschehen. 
# Das Prinzip einer callback function ist mir aber noch nicht ganz klar.
    addContext = FALSE
    )

# Was bedeutet names(tokens) <- NULL?
##names(tokens) <- NULL


# Notiz RegEx: 
# () = gruppieren Teilausdr�cke, diese werden zum Merken eingeklammert
# [] = begrenzen eine Zeichenklasse
# {} = Wiederholung von davor stehenden Zeichen

