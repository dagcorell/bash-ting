SelectApplication() {
    local applications="app1 app2 app3"

    echo "Velg app:" >&2
    local application
    select application in $applications ; do
        echo $application
        break
    done
}

SelectVersjon() {
    local versions="1 2 3"

    echo "Velg versjon:" >&2
    local version
    select version in $versions ; do
        echo $version
        break
    done
}



while getopts a:v:q OPT ; do
    case "$OPT" in
        a)
            APPLICATION=$OPTARG;;
        v)
            VERSION=$OPTARG;;
        q)
            QUIET=true;;
    esac
done


if [[ "$QUIET" = true ]] ; then
  #Validere args f.eks
  ECHO "QUIET MODE"
else
  APPLICATION=$(SelectApplication)
  VERSION=$(SelectVersjon)
fi


echo "Applikasjon:"  $APPLICATION
echo "Versjon:" $VERSION

echo "Kommando: bash_eks3.sh -q -a "$APPLICATION" -v "$VERSION 
