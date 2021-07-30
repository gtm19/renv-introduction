SOURCE_RMD = 'index.Rmd'

serve:
	Rscript \
	-e 'if (!require(xaringan)) renv::install("xaringan")' \
	-e 'xaringan::infinite_moon_reader("$(SOURCE_RMD)")'

knit:
	Rscript \
	-e 'if (!require(xaringan)) renv::install("xaringan")' \
	-e 'if (!require(rmarkdown)) renv::install("rmarkdown")' \
	-e 'rmarkdown::render("$(SOURCE_RMD)")'

kill:
	Rscript \
	-e 'if (!require(servr)) renv::install("servr")' \
	-e 'servr::daemon_stop()'