#!/bin/bash

##grep -f IDs_de_interés.txt Nombres_de_genes.txt  #> resultado.txt
> resultado.txt
while read palabra
	do
		echo "[DEBUGGING] buscando el nombre para $palabra"
		grep $palabra Nombres_de_genes.txt >> resultado.txt
	done < IDs_de_interes.txt

echo "FINALIZADO"
