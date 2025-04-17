# SS-vhd repozitorij

Moguce je preuzeti citav repozitorij unosenjem komande ispod u terminal:

     git clone https://github.com/moucheh/SS-vhd.git

Za koristenje prethodne komande, potreban je alat git, koji je moguce preuzeti pomocu nekog od package managera:

>Ubuntu, Mint, Debian
>
>     sudo apt install git
>

>Fedora, CentOS, RHEL
>
>     sudo dnf install git
>

>Windows (PowerShell i winget)
>
>     winget install --id Git.Git -e --source winget
>

Azuriranje repozitorija je moguce komandom (terminal mora biti otvoren u direktoriju u kojem je repozitorij sacuvan):

    git pull

Simulator se pokrece koristenjem make alata iz GNU binutils, pokretanjem all, te simulate recepta na sljedeci nacin:

    make
    make simulate

Obratiti paznju da se u svakom zadatku nalaze dva fajla, top.vhd i top_tb.vhd, potrebno je da se fajlovi nazovu ovako,
jer je tako hard-codirano u Makefile skripti.
