get_target_expression <- function(target_list, name) {
	names <- vapply(target_list, function(x) x[['settings']][['name']], 'potato')
	which_name <- which(names == name)

	if (length(which_name) != 1) {
		error('name provided did not match to 1 target')
	}

	target_list[[which_name]]$command$expr[[1]]
}
