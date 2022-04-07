grab_functions <- function(raw_repo_path) {
	z <- gh("https://api.github.com/repos/robitalec/targets-issa/contents/R?recursive=1")

	paths <- sapply(a, `[`, 'path')

	lapply(paste0(raw_repo_path, 'main/', grep('.R', paths, value = TRUE)),
				 source)
}

