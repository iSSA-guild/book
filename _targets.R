# Targets -----------------------------------------------------------------
# Alec L. Robitaille ------------------------------------------------------





# Source ------------------------------------------------------------------
lapply(dir('R', '*.R', full.names = TRUE), source)




# Variables ---------------------------------------------------------------

# TODO: license
# TODO: contributing md
# TODO: spelling
# TODO: fix refs


source('https://raw.githubusercontent.com/robitalec/targets-issa/main/_targets.R')

c(
	tar_target(
		generate_bib,
		write_bib(c(.packages(), 'bookdown', 'knitr', 'rmarkdown'), 'packages.bib')
	),
	tar_target(
		book,
		{generate_bib; render_book('index.Rmd', output_dir = 'docs')}
	)
)






