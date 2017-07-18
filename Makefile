# simple make file

R/analysis.html: R/analysis.Rmd Data/priemelDataReconstruction.csv
	cd R;R -e "rmarkdown::render('analysis.Rmd')"

R/analysis.pdf: R/analysis.Rmd Data/priemelDataReconstruction.csv
	cd R;R -e "rmarkdown::render('analysis.Rmd', "pdf_document")"

clean:
	rm R/*.html R/*.pdf