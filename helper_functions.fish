echo "loaded function for national education at /home/astrale/Cours/EDUCATION_NATIONALE/helper_functions.fish"
echo 
function ENodt2pdf -d "for each odt, build the pdf next to it"
	unoconv -vf pdf **.odt
end

function ENodt2pdf2res_pdf -d "for each odt, build the pdf in res_pdf"
      command mkdir res_pdf 
      unoconv -vf pdf -o res_pdf **.odt
end

function ENchapentier -d "Make the all chapter in chapitre_entier.pdf"
	pdfunite trame.pdf attendus*.pdf cours/cours.pdf exercices/*.pdf evaluation/*.pdf act*/act*.pdf chapitre_entier.pdf
end

function ENsave_res_to_backup
	cd /home/astrale/Cours
	cp -r --parents ./EDUCATION\ NATIONALE/**resultat* ./backup
	echo "saved in /home/astrale/Cours/backup"
	echo "cd /home/astrale/Cours/backup"
	cd
end


function ENpdf_to_N_pdf -d "args : input.pdf, N reproduce N times the input in the output"
	set input $argv[1]
	set N $argv[2]
	cp $input tmp.pdf
	for k in (seq (math $N - 1))
		pdfunite $input tmp.pdf output.pdf
		mv output.pdf tmp.pdf
	end
	mv tmp.pdf $N\_$input
end


function ENcryfs -d "open private dir"
	cryfs /home/astrale/Cours/private/uncrypted /home/astrale/Cours/private/mount
	nemo /home/astrale/Cours/private/mount
 
end

function ENbuild
	set currdir (pwd)
	echo "currdir is $currdir"
	for k in **/{act, presentation, cours, fiche_methode}*.tex
       cd $k/../
	    for n in {act, presentation, cours, fiche_methode}*.tex 
			latexbuild $n && mv build/*.pdf ../ &
		end
	#    for p in ../*.pdf
	#    		xdg-open $p
	# 	end
	   cd $currdir
	end
	echo "dont forget to ENclean"
end


function ENclean
	rm **build/
end


function ENwork --wraps=echo --description 'alias work=echo'
  cd ~/Cours/EDUCATION_NATIONALE/mes_cours/2121-22/ ;
  dolphin ~/Cours/EDUCATION_NATIONALE/mes_cours/2121-22/ ~/Cours/EDUCATION_NATIONALE/mes_cours/2121-22/templates/ ~/Cours/EDUCATION_NATIONALE/mes_cours/2121-22/prep ~/Cours/EDUCATION_NATIONALE/mes_cours/2121-22/not_online_ressource &;
  xdg-open /home/astrale/Cours/EDUCATION_NATIONALE/mes_cours/2121-22/not_online_ressource/Emploi_du_temps_des_enseignants_2021_2022.pdf ;
#   xdg-open /home/astrale/Cours/EDUCATION_NATIONALE/mes_cours/2121-22/not_online_ressource/build/todo.pdf
  code .
end
