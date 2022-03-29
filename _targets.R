# Targets -----------------------------------------------------------------
# Alec L. Robitaille ------------------------------------------------------





# Source ------------------------------------------------------------------
lapply(dir('R', '*.R', full.names = TRUE), source)




# Variables ---------------------------------------------------------------

# TODO: [ALR] auto copy targets issa example to here
# TODO: [ALR] https://docs.ropensci.org/targets/reference/tar_github_actions.html?q=action#ref-examples
# TODO: license
# TODO: contributing md
# TODO: spelling
# TODO: fix refs

c(
	tar_target(
		generate_bib,
		write_bib(c(.packages(), 'bookdown', 'knitr', 'rmarkdown'), 'packages.bib')
	)
)






