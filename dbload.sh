Usage() {
    echo "BRUK"
    echo "    `basename $0` [-q] [-s dbserver] [-d database] [-f filnavn] [-l] [-o]"
    echo
    echo "BESKRIVELSE"
    echo "    Restorer en komplett database fra en dumpfil."
    echo "    Alle dumpfiler ligger i $DUMP_DIR for lettere å beholde oversikten og kunne lage sletterutiner."
    echo "    Default er å laste prod-versjon av testdatabasen, inn i basen satt med setmiljo."
    echo "    Bruk så dbupgrade.sh til å oppdatere basen din etter å ha lastet inn testdata."
    echo
    echo "FORUTSETNINGER"
    echo "     Du må ha Sybase-brukeren spk sitt passord i din .passwords-fil"
    echo
    echo "PARAMETRE"
    echo "     -s databaseserver: laster inn i base på angitt databasservere i stedet for default fra spk-app-config"
    echo "     -d database:       laster inn i angitt database i stedet for default fra spk-app-config"
    echo "     -f filnavn:        bruker angitt filnavn i stedet for default, som er gjeldende prodversjon, dvs.prod.dmp"
    echo "     -q quiet:          spør deg ikke om bekreftelse"
    echo "     -l list:           velg dumpfil fra liste"
    echo "     -o offline:        la basen være i offline modus etter load"
    echo
    echo "Eksempler"
    echo "    \"$(basename $0) \" - laster inn prod.dmp inn i basen satt i spk-app-config"
    echo "    \"$(basename $0) -f new.dmp \" - laster inn dumpen med filnavn new.dmp inn i basen satt i spk-app-config"
    echo "    \"$(basename $0) -s syb07t -d testogk\" - laster prod.dmp inn i TESTOGK på syb07t"
    exit
}



if [[ $# == 0 ]] ; then
    echo "Ingen parametre angitt."
    Usage
fi
