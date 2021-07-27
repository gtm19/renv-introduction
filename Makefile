SOURCE_RMD = 'index.Rmd'

serve:
	Rscript \
	-e 'if (!require(xaringan)) renv::install("xaringan")' \
	-e 'xaringan::infinite_moon_reader("$(SOURCE_RMD)")'

kill:
	Rscript \
	-e 'if (!require(servr)) renv::install("servr")' \
	-e 'servr::daemon_stop()'