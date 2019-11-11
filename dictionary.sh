#!/bin/bash -x

declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound " ${sounds[dog]} # Dog's sound
echo "All Animals" ${sounds[@]}
echo "Animals" ${!sounds[@]}
echo "Number of Animals" ${#sounds[@]}
unset sound[dog]
echo ${sounds[@]}
