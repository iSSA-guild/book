# Targets -----------------------------------------------------------------
# Alec L. Robitaille ------------------------------------------------------





# Source ------------------------------------------------------------------
lapply(dir('R', '*.R', full.names = TRUE), source)

# targets-issa
raw_repo_path <- 'https://raw.githubusercontent.com/robitalec/targets-issa/'
grab_functions(raw_repo_path)



# Targets: targets-issa ---------------------------------------------------
source('https://raw.githubusercontent.com/robitalec/targets-issa/main/_targets.R')


# Targets: book -----------------------------------------------------------
targets_book <- c(
	tar_target(
		generate_bib,
		write_bib(c(.packages(), 'bookdown', 'knitr', 'rmarkdown'), 'packages.bib')
	),
	tar_target(
		book,
		{generate_bib; render_book('index.Rmd', output_dir = 'docs')}
	)
)


# Targets: all ------------------------------------------------------------
# Automatically grab and combine all the "targets_*" lists above
lapply(grep('targets', ls(), value = TRUE), get)







