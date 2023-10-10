echo "=================================================="
echo "qual operação vc deseja:"
echo "soma"
echo "subtração"
echo "multiplicação"
echo "divição"
echo "raiz_quadrada"
echo "potencial"
read resultado


case "$resultado" in


 soma)
  
  echo "digite primeiro numero"
    read a
  echo "digite segundo numero"
    read b
  resultado=$(echo "$a+$b" | bc)
  echo "resultado final: $resultado"
 
echo "=================================================="
;;
 
 subtração)
  
  echo "digite primeiro numero"
    read c
  echo "digite segundo numero"
    read d 
  resultado=$(echo "$c-$d" | bc)
  echo "resultado final: $resultado"

echo "================================================"
;;
 
 multiplicação) 
  
  echo "digite primeiro numero"
    read e
  echo "digite segundo numero"
    read f
  resultado=$(echo "$e*$f" | bc)
  echo "resultado final: $resultado"

echo "================================================" 
;;

 divição) 
  
  echo "digite primeiro numero"
      read g
  if [ "$g" -eq 0 ]; then
    resultado=$(echo "erro: não pode ser dividedo por zero")
  else 
    echo "digite segundo numero"
     read h
     resultado=$(echo "scale=2; $g / $h" | bc)
  echo "resultado final: $resultado"
  fi 

echo "================================================"
;;
 
  raiz_quadrada) 
  
    echo "digite primeiro numero"
       read i
    echo $i 			
     raiz_quadrada=$(echo "sqrt($i)" | bc)
    echo "resultado final: $raiz_quadrada" 

echo "================================================"
;;

  potencial) 
  
    echo "digite primeiro numero"
      read j
    echo "digite segundo numero"
      read k
    echo $j
    echo $k
       resultado=$(echo "scale=2; $j^$k" | bc)
    echo "resultado final: $resultado" 
 
echo "================================================" 
;;
      
esac
