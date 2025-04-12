#!/usr/bin/env bash
# services-menu.sh
# Script que muestra un menú de servicios para:
# 1) Listar contenido de un directorio
# 2) Crear un archivo con una línea de texto
# 3) Comparar dos archivos de texto
# 4) Ejemplo de uso de awk
# 5) Ejemplo de uso de grep
# 6) Salir

function pause() {
  read -rp "Pulsa [Enter] para continuar..."
}

while true; do
  clear
  cat <<EOF
=============================
   MENÚ DE SERVICIOS (BASH)
=============================
1) Listar contenido de un directorio
2) Crear un archivo con texto
3) Comparar dos archivos de texto
4) Demostración de awk
5) Demostración de grep
6) Salir
=============================
EOF

  read -rp "Selecciona una opción [1-6]: " opcion
  case $opcion in
    1)
      # Listar contenido de un directorio
      read -rp "Introduce la ruta absoluta del directorio: " ruta
      if [[ -d "$ruta" ]]; then
        echo
        echo "Contenido de $ruta:"
        ls -lah "$ruta"
      else
        echo "Error: '$ruta' no es un directorio válido."
      fi
      pause
      ;;

    2)
      # Crear un archivo con una línea de texto
      read -rp "Introduce la ruta (absoluta o relativa) y nombre del archivo a crear: " archivo
      read -rp "Introduce la línea de texto a almacenar: " linea
      echo "$linea" > "$archivo"
      echo "Archivo '$archivo' creado con la línea:"
      cat "$archivo"
      pause
      ;;

    3)
      # Comparar dos archivos de texto
      read -rp "Introduce la ruta del primer archivo: " archivo1
      read -rp "Introduce la ruta del segundo archivo: " archivo2
      if [[ -f "$archivo1" && -f "$archivo2" ]]; then
        echo
        echo "Diferencias entre '$archivo1' y '$archivo2':"
        diff -u "$archivo1" "$archivo2" || echo "(No hay diferencias o diff devolvió código de salida distinto de 0.)"
      else
        echo "Error: Asegúrate de que ambos archivos existen."
      fi
      pause
      ;;

    4)
      # Demostración de awk
      # Usaremos awk para mostrar la segunda columna de un fichero de ejemplo
      echo
      echo "Demostración de awk:"
      echo "Creando un fichero de ejemplo 'data.txt' con varias columnas..."
      cat > data.txt <<EOD
uno  10  manzanas
dos  20  naranjas
tres 30  plátanos
EOD
      echo "Contenido de data.txt:"
      cat data.txt
      echo
      echo "Mostrando la segunda columna (números) con awk:"
      awk '{ print $2 }' data.txt
      echo
      echo "Si quieres usar awk en otro fichero, sería: awk '{ print \$N }' tu_fichero"
      pause
      ;;

    5)
      # Demostración de grep
      # Usaremos grep para buscar una cadena en un fichero de ejemplo
      echo
      echo "Demostración de grep:"
      echo "Creando un fichero de ejemplo 'texto.txt'..."
      cat > texto.txt <<EOD
Hola mundo
Esto es una línea de prueba
Otro hola aquí
FIN
EOD
      echo "Contenido de texto.txt:"
      cat texto.txt
      echo
      read -rp "Introduce la cadena a buscar en texto.txt: " patron
      echo
      echo "Líneas que coinciden con '$patron':"
      grep --color=auto -n "$patron" texto.txt || echo "(No se encontraron coincidencias.)"
      echo
      echo "Si quieres buscar en otro fichero: grep -n 'patrón' tu_fichero"
      pause
      ;;

    6)
      echo "Saliendo..."
      break
      ;;

    *)
      echo "Opción inválida. Elige un número entre 1 y 6."
      pause
      ;;
  esac
done
