# simple make file

R/analysis.html R/analysis.pdf: R/analysis.Rmd Data/priemelDataReconstruction.csv
	cd R;\
	R -e "rmarkdown::render('analysis.Rmd', output_format = 'all')"

#R/analysis.pdf: R/analysis.Rmd Data/priemelDataReconstruction.csv
#	cd R;R -e "rmarkdown::render('analysis.Rmd', output_format = "pdf_document")"

clean:
	rm R/*.html R/*.pdf R/*.docx