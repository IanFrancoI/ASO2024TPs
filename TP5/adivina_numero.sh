numero_secreto=$(( RANDOM % 100 + 1 ))
intento=0

echo "¡Adivina el número (entre 1 y 100)!"

while true; do
    read -p "Ingresa tu número: " numero_usuario

    if ! [[ "$numero_usuario" =~ ^[0-9]+$ ]]; then
        echo "Por favor, ingresa un número válido."
        continue
    fi

    ((intento++))

    if (( numero_usuario < numero_secreto )); then
        echo "Demasiado bajo."
    elif (( numero_usuario > numero_secreto )); then
        echo "Demasiado alto."
    else
        echo "¡Felicidades! Adivinaste el número en $intento intentos."
        break
    fi
done
