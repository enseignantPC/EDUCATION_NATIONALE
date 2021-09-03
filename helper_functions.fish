echo "loaded function for national education"
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




