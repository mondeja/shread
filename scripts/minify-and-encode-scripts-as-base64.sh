#!/bin/bash

find src -type f -name '*.sh' | while read script_file; do
  relative_path_to_script_from_src="${script_file:4:${#script_file}}"
  path_to_script_dest="public/$relative_path_to_script_from_src"

  # Eliminamos comentarios y líneas vacías
  touch "$path_to_script_dest.min"
  sed '/^[[:blank:]]*#/d;s/#.*//' $script_file | \
    sed '/^$/d' > "$path_to_script_dest.min"
  touch $path_to_script_dest
  echo "#!/bin/bash" >> $path_to_script_dest

  # Codificamos los scripts en base64
  echo "source <(echo '$(base64 $path_to_script_dest.min)' | base64 -d)" > $path_to_script_dest
  rm -f "$path_to_script_dest.min"
done

# Movemos los archivos que no son scripts de Bash al directorio público
find src -type f -not -name '*.sh'| while read file; do
  relative_path_to_file_from_src="${file:4:${#file}}"
  path_to_file_dest="public/$relative_path_to_file_from_src"

  cp $file $path_to_file_dest
done
