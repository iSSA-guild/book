# Targets -----------------------------------------------------------------
# Alec L. Robitaille ------------------------------------------------------





# Source ------------------------------------------------------------------
lapply(dir('R', '*.R', full.names = TRUE), source)




# Variables ---------------------------------------------------------------

# TODO: [ALR] auto copy targets issa example to here


c(
	tar_target(
		generate_bib,
		write_bib(c(.packages(), 'bookdown', 'knitr', 'rmarkdown'), 'packages.bib')
	)
)






