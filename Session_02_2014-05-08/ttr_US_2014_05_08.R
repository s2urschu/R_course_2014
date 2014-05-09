# Lese die ganze Datei als eine Sammlung von Zeilen ein.
lines <- readLines('some_file_in_TXML.xml')

# Finde die Positionsnummer von allen Tokens
# (d.h. alle Zeilen die mit "<t" beginnen).
token.indexes <- grep('<t',lines)

# Wähle alle Zeilen mit Tokens aus
tokens <- lines[token.indexes]

# Lösche alles vor dem Lemma.
junk.lemmas <- sub(".+ lemma=\"", "", tokens)

# Lösche alles nach dem Lemma.
lemmas <- sub("\".+", "", junk.lemmas)

# Anzahl der Types ist gleich Null. 
# (Davon geht man am Anfang aus.)
types.count <- 0

# Noch kein Type gesehen. 
# Man hat ja vorher festegelegt, dass es noch keine Types gegeben hat.
seen.types <- NULL

# Lege eine Liste für Typesanzahl für jede Stelle im Text an.
types.on.position <- vector(length = length(lemmas))

# Für jede Lemmanummer
for (i in seq_along(lemmas)) {
  
  # suche das entsprechende Lemma,
  lemma <- lemma[i]
  
  # und, falls es noch nicht gesehen wurde,
  if (!(lemma %in% seen.types)) {
    
    # zähle es als neu mit
    types.count <- types.count + 1
    
    # und lege es in die Liste der gesehenen Lemma ab.
    seen.types <- c(seen.types, lemma)
    
  }
  
  # Füge die Anzahl für die aktuelle Lemmanummer in die Liste ein.
  types.on.position[i] <- types.count
  
}

# Zeichne eine Graphik.
plot(types.on.position, type = '1')

