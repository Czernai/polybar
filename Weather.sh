#!/bin/sh

a="$(curl -Ss https://fr.wttr.in/Saint-Avold?format="%T+%l+%m+%M+%C+%f")"
echo $a | cut -c14-,-5