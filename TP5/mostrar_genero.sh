read -p "Ingresa un nombre: " nombre

response=$(curl -s "https://api.genderize.io/?name=${nombre}")

genero=$(echo $response | grep -oP '(?<="gender":")[^"]*')

if [[ -z "$genero" ]]; then
    echo "No se pudo determinar el género para el nombre '$nombre'."
else
    echo "El género probable para el nombre '$nombre' es '$genero'."
fi
