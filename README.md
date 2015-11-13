# xslt-mtd2html
An xslt to convert from a Metadata xml to an HTML page
------------------------------------------------------

La procedura e' progettata per essere eseguita in modalita' batch da una shell dos.
Per eseguirla occorre disporre di un qualsiasi processore XSLT 1.0.
Ne esistono di svariati uno disponibile anche su windows e' , ad esempio, "xsltproc"

Per chi usa windows e' disponibile una procedura "esegui.bat" che automatizza l'impiego della conversione xslt su una intera cartella di metadati in formato xml.

La procedura va configurata. Per questo aprirla con un editor e impostare le seguenti variabili:

La prima variabile (BIN_XSLTPROC) contiene il percorso verso la cartella dove sono gli eseguibili con tutte le dll necessarie per usare xsltproc.exe
La seconda variabile (XSLT) contiene il percorso dove si trova la procedura xslt da eseguire
La terza variabile (SCHEDE_XML) contiene il percorso dove reperire i files xml da trattare
La quarta variabile (SCHEDE_HTML) contiene il percorso dove verranno salvate le schede HTML generate

Su linux debian e'possibile installarsi il pacchetto xsltproc tramite la procedura 
apt-get install xsltproc

Su windows installarsi "xsltproc" richiede lo scarico e ladisponibilita di una serie di dll aggiuntive.

Per cui per semplificare la vita a chi non vuole cimentarsi nella ricerca:
a questo link e' disponibile uno zip con il set minimo di librerie dll e l'eseguibile di xsltproc per windows a 32bit (funziona anche su windows 7 a 64bit)
E' sufficiente esplodere i contenuto dello zip in una cartella sul proprio computer e impostare il suo percorso nella variabile sopra indicata.

I files minimi necessari per far funzionare l' xsltproc.exe sotto windows sono i seguenti:

	xsltproc.exe
	libexslt.dll
	libiconv-2.dll
	libwinpthread-1.dll
	libxml2.dll
	libxslt.dll
	zlib1.dll

Essi sono disponibili nel sito internet di xsltproc:
	http://xmlsoft.org/XSLT/xsltproc2.html

I binari per windows sono disponibili a questo link:
	https://www.zlatkovic.com/libxml.en.html

Sono disponibili sia a 32bit che a 64bit.
Poiche' la versione a 32bit gira anche su macchine a 64bit consiglio di scaricarsi la versione a 32bit.
Attenzione che le varie librerie di dipendenza sono reperibili in differenti pacchetti zip tra quelli scaricabili.

Poi, consiglio anche di crearsi una cartella ad hoc dove copiare tutti i binari (eseguibile exe e librerie dll) per non mescolarle con altri 
programmi e prodotti presenti sul vostro  computer.

