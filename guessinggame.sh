#!/bin/bash

# Fonction qui compte le nombre de fichiers dans le répertoire courant
count_files() {
    echo $(ls -1 | wc -l)
}

# Fonction qui demande à l'utilisateur de deviner
guess_game() {
    local num_files=$(count_files)
    local guess=0

    echo "Bienvenue dans le jeu de devinette !"
    echo "Pouvez-vous deviner combien de fichiers se trouvent dans le répertoire actuel ?"

    # Boucle tant que la devinette est incorrecte
    while [ "$guess" -ne "$num_files" ]; do
        read -p "Entrez votre estimation : " guess

        # Vérifie si l'entrée est un nombre
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
            continue
        fi

        # Vérifie si la devinette est trop basse ou trop haute
        if [ "$guess" -lt "$num_files" ]; then
            echo "Trop bas ! Essayez encore."
        elif [ "$guess" -gt "$num_files" ]; then
            echo "Trop haut ! Essayez encore."
        else
            echo "Félicitations ! Vous avez deviné correctement !"
        fi
    done
}

# Appel de la fonction principale
guess_game
