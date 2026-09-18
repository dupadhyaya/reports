

#func-----
update_list_attr <- function(list_name, attr_name = "updated_at", attr_value = Sys.time(), envir = .GlobalEnv) {
  store <- get(list_name, envir = envir)
  for (nm in names(store)) {
    attr(store[[nm]], attr_name) <- attr_value  }
  assign(list_name, store, envir = envir)
  invisible(store)
}

#object1-----
names(storeR1A)

update_list_attr(list_name= 'storeR1A')
sapply(storeR1A, function(x) format(attr(x, "updated_at"), "%d-%b-%Y %H:%M:%S"))

#finalObjects

storeFinal <- c(storeR1A)

storeFile = '/Users/du/dup/auData/rdata/admDateReport26.rda'
save( storeR1A, file =storeFile)
