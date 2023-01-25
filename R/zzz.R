.onLoad <- function(libname, pkgname)
{
     pfile=file.path(find.package("plasFIA"), "data","plasSet.rda")
     load(pfile)
     nms <- file.path(system.file(package="plasFIA"),"mzML",
         gsub("/", .Platform$file.sep, basename(attr(plasSet, "classes")[,1])))
     plasSet@classes[,1] <- nms
     plasSet@path<-file.path(find.package("plasFIA"), "mzML")
     save(plasSet,file=pfile)
}
.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.18")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}

