#!/usr/bin/env bash

#   Détruit toutes les instances de barres existantes
killall -q polybar

#   Lancer barre droite et barre gauche
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar gauche 2>&1 | tee -a /tmp/polybar1.log & disown
polybar droite 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Les barres sont lancées..."


#   Mettre les fonds d'écrans
feh --bg-fill $HOME/Images/po_garguouille.jpg $HOME/Images/pont_pierre.jpg

#   Lancer flameshot
flameshot


