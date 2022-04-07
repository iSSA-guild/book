# Targets -----------------------------------------------------------------
# Alec L. Robitaille ------------------------------------------------------





# Source ------------------------------------------------------------------
lapply(dir('R', '*.R', full.names = TRUE), source)




# Variables ---------------------------------------------------------------

# TODO: [ALR] auto copy targets issa example to here
# TODO: license
# TODO: contributing md
# TODO: spelling
# TODO: fix refs

c(
	tar_target(
		generate_bib,
		write_bib(c(.packages(), 'bookdown', 'knitr', 'rmarkdown'), 'packages.bib')
	),
	tar_target(
		book,
		{generate_bib; render_book('index.Rmd', output_dir = '_book')}
	)
)






