#!/bin/bash

# AI GENERATED CONTENT

# Nome del file originale creato per il workshop
SOURCE_FILE="ft_vimtutor.txt"

# 1. Verifica se il file sorgente esiste nella directory corrente
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Errore: Il file '$SOURCE_FILE' non è stato trovato."
    echo "Assicurati che lo script sia nella stessa cartella del tutorial."
    exit 1
fi

# 2. Crea un file temporaneo sicuro in /tmp/
# L'estensione .txt assicura che Vim carichi correttamente i plugin di sintassi
TEMP_TUTOR=$(mktemp /tmp/workshop_vim.XXXXXX.txt)

# 3. Imposta una 'trap' per eliminare il file temporaneo automaticamente 
# quando lo script termina (anche se interrotto bruscamente)
trap "rm -f $TEMP_TUTOR" EXIT

# 4. Copia il contenuto originale nel file temporaneo
cp "$SOURCE_FILE" "$TEMP_TUTOR"

# 5. Apri il file temporaneo con Vim
# Al termine della sessione di Vim, lo script riprenderà l'esecuzione
vim "$TEMP_TUTOR"

echo "Sessione terminata. Il file temporaneo è stato rimosso correttamente."
