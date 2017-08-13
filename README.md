# bash-ting
Forslag til løsninger somm øker brukervennligheten til script.
(Eksemplene er laget til Iteratekonferanse august 2017.)

1. Usage / hjelp
  Alle script bør ha en usage / hjelp som kommer fra ved kjøring av scriptet uten opsjoner.

  dbload.sh: Eksempel på usage info


2. Bruk av complete kommando:
   Complete gjør det enklere for bruker å velge riktig oppsjoner ved å få completion av gyldig input ved bruk av tab.
   (Ref: http://tldp.org/LDP/abs/html/tabexpansion.html)

   bash_eks1.txt: Eksempel på hvordan filtrere filnavn som velges.
   bash_eks2.txt: Eksempel på å koble complete-kommandoen til en funskjon.

3. Menystyring med select
   Bruk av select for å gi brukeren valg fra definerte lister gjør det enklere å vite hvilke opsjoner som er gyldige. Kan være lurt å bruke sammen med en quiet modus som gjør det mulig å sende opsjoner direkte på kommanod-linja.

   bash_eks3.sh: Bruk av select og quiet modus.
