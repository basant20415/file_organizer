
function organize(){
 file_path="$1"
dir1="txt"
dir2="jpg"
dir3="pdf"
dir4="msc"

 for file in "$file_path"/*; do

if [[ "$file" == *.txt ]]; then

     if [[ -f "$file" ]]; then
      if [[ ! -d "$dir1" ]]; then
        mkdir "$dir1"
        fi
    mv "$file" "$dir1/"
    else echo "file not exist"
    fi
  elif [[ "$file" == *.jpg ]]; then
   if [[ -f "$file" ]]; then
    if [[ ! -d "$dir2" ]]; then
        mkdir "$dir2"
        fi
     mv "$file" "$dir2/"
     else echo "file not exist"
     fi
  elif [[ "$file" == *.pdf ]]; then
  if [[ -f "$file" ]]; then
   if [[ ! -d "$dir3" ]]; then
        mkdir "$dir3"
        fi
    mv "$file" "$dir3/"
     else echo "file not exist"
     fi
     elif [[ "$file" != *.sh ]]; then
       if [[ ! -d "$dir4" ]]; then
        mkdir "$dir4"
        fi
     mv "$file" "$dir4/"

  fi




 done





  



}

read path

organize "$path"