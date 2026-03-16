---
marp: false
theme: default
paginate: false
---

# Introduzione a Vim

a cura di **rceschel**

---

**Obiettivi di oggi**

- Comprendere il paradigma di **editor modale**
- Muoversi con naturalezza in un file
- Imparare a **personalizzare l'ambiente** di Vim
- Scoprire come approfondire e allenarsi in autonomia

---

## Perché Vim

- È leggero, veloce, sempre presente
- È integrato nel **terminale**, il nostro ambiente
- All'inizio è scarno, ma può essere riempito

Vim appare vuoto e dispersivo, ma per questo potrà conformarsi ad ogni nostra esigenza.

---

### Esempio di configurazione avanzata

![width:1000](https://miro.medium.com/v2/resize:fit:1200/1*P1U_77mUvUnLMfWlnGuxDg.png)

---

## Vim è diverso

Vim **non** è un editor classico.

- Non scrivi sempre
- Non usi menu o mouse
- Non tieni premuti modificatori

Vim funziona per **modalità**.

---

## Editor Modale

### Editor classico vs Modale

| Classico | Modale |
|----------------|-----|
| Scrivi sempre | Ti muovi ed esegui azioni |
| Tasti = caratteri | Tasti = comandi |
| CTRL / menù | Modalità |
---

## Editor modale

### Idee fondamentali

- **Digitare ≠ Scrivere**
- Scrivere è solo *una* modalità
- La modalità di lavoro è **Normal**

Visualizza Vim come un **sistema a stati**.

Complesse operazioni sul testo vengono eseguite con combinazioni **sequenziali** di tasti, secondo una logica sintattica, non solo mnemonica.

Questo si traduce in **comodità** ed **efficienza**.

---
<!--
backgroundImage: url('img/normal.jpeg')
backgroundSize: 800px
backgroundPosition: right
backgroundRepeat: no-repeat
-->

# Normal Mode
## Una casa per tutti

---

<!-- backgroundImage: color(white)-->

## Muoversi nel file

Movimenti fondamentali:

- `h j k l` → sinistra, giù, su, destra
- `w` → parola successiva
- `e` → fine parola
- `0` → inizio riga
- `$` → fine riga

---

<!-- ## Muoversi nel file

Movimenti globali:

- `G` → fine del file
- `gg` → inizio del file

---

## Muoversi nel file

Movimenti mirati:

- `:` → entra in command line, digita il numero di riga per muoverti
- `/` → Search: digita un termine per trovarlo nel file
    - `n` → occorrenza successiva
    - `N` → occorrenza precedente

--- -->

<!-- backgroundImage: color(white)-->

## Lavorare nel file

### Operatori principali

In Normal mode:

- `d` → delete (cancella / taglia)
- `y` → yank (copia)
- `p` → put (incolla)


Gli operatori **da soli non fanno nulla**.
Serve un obiettivo.

---

## Vim è un linguaggio

La formula magica:

```
OPERATOR [+ COUNT] + MOTION
```

Traduce in comandi il nostro linguaggio naturale.

- "Delete Word"
- "Yank to the end of line"
- "Delete three lines"
 
---

## Il modello combinatorio

| Comando | Significato |
|--------|-------------|
| `dw` | delete word |
| `d2w` | delete 2 words |
| `d$` | delete to end of line |
| `dd` | delete line |
| `3dd` | 3 times delete line |


Stesso movimento, operatore diverso.
**Nota**: un operatore ripetuto due volte si applica a tutta la linea.

---

## Insert mode

<!--
backgroundImage: url('img/WRITE!.png')
backgroundSize: 720px
backgroundPosition: center right
backgroundRepeat: no-repeat
-->

<!-- ### Finalmente si scrive -->

| Comando | Dove scriverai |
|--------|---------|
| `i` | prima del cursore |
| `I` | inizio riga |
| `a` | dopo il cursore |
| `A` | fine riga |
| `o` | nuova riga sotto |
| `O` | nuova riga sopra |

Uscire sempre con **ESC**.

---
<!-- backgroundImage: color(white)-->

## Visual mode

### Selezionare prima di agire

V -> entri in visual mode.
Motions -> muovendo il cursore selezioni.
Operators -> si applicano sulla selezione.

È familiare, ma più macchinoso del modello base.

Usala per eseguire azioni su zone ampie di codice,  <!-- avendo un riscontro visivo prima di applicare le modifiche. -->

---

## Command line

| Comando | Azione |
|--------|--------|
| `:w` | salva |
| `:q` | esci |
| `:x` | salva ed esci |
| `:42` | vai alla riga 42 |

Nella command line possiamo dare comandi e istruzioni direttamente a Vim.
È utile per cambiare impostazioni al volo, e per eseguire operazioni avanzate.

---

## Cercare nel file

| Comando | Azione |
|--------|--------|
| `/test` | cerca avanti |
| `?test` | cerca indietro |
| `n` | prossimo risultato |
| `N` | precedente |

---

<!--
backgroundImage: url('img/red_button_esc.png')
backgroundSize: 670px
backgroundPosition: right
backgroundRepeat: no-repeat
-->

## Il panic button

Se non sai cosa sta succedendo:

## **ESC**

- Torni sempre in Normal mode
- Puoi premerlo più volte

Premilo senza paura, o quando ne hai.

---

<!-- backgroundImage: color(white)-->

## Sbagliare è permesso

| Comando | Effetto |
|--------|---------|
| `u` | annulla l'ultima modifica |
| `U` | annulla tutte le modifiche sulla riga corrente |
| `<C-r>` | ripristina le modifiche annullate |
| `.` | ripete ultima modifica |

Riduce errori e fatica.

---

## Cosa avete visto

- Vim è **modale**
- Normal mode è centrale
- Operatore + movimento
- Undo, ricerca, ripetizione

Questo è **il core di Vim**.

---

## E adesso?

Per praticare:

- `vimtutor` - Programma di guida introduttiva comprensiva ed estesa a Vim
- `:help` - Menù di aiuto completo su tutto Vim

La velocità arriva **solo con la pratica**.

---

<!--
backgroundImage: url('img/cat_blanket_meme_vim.png')
backgroundSize: 670px
backgroundPosition: right
backgroundRepeat: no-repeat
-->

# Personalizzazione
## Creare il proprio ambiente

---

PARLARE DI .vimrc E COME VIENE LETTO

---
<!-- backgroundImage: color(white) -->
<!--
backgroundImage: url('img/chefs-kiss-french-chef.gif')
backgroundSize: 1400px
backgroundPosition: top right
backgroundRepeat: no-repeat
-->

**La selezione dello chef**

``` vim
" Righe e numeri di riga
set number 				" Abilita i numeri di riga
set relativenumber 	    " Imposta i numeri relativi (a partire dal cursore)

" Indentazione e tab
set tabstop=4			" Numero di spazi visualizzati quando Vim incontra un carattere <Tab>
set softabstop=4		" Numero di spazi inseriti o rimossi premendo <Tab> o <Backspace> in modalità inserimento
set shiftwidth=4		" Numero di spazi usati per ogni livello di indentazione (>>, <<, autoindent)

set autoindent 			" Indentazione automatica attiva
set cindent				" Imposta lo stile C-like di indentazione

" Utilizzo generale
set mouse=a 			" Abilita l'uso del mouse in tutte le modalità
syntax on 				" Abilita l'evidenziazione della sintassi
```
