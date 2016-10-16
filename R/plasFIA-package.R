#' FIA-HRMS spiked plasma dataset.
#' 
#' 6 samples of human plasma spiked with 3 different concentrations
#' of molecules ranging from 10 ng/mL to 1000ng/mL in 2 replicates 
#' have been acquired on an Orbitrap Fusion. The resulting data are 
#' in the mzML directory under mzML centroid format, the \code{proFIAset}
#' object containg the integrated signal is in the \code{plasSet} object
#' information on the samples is in \code{plasSamples} and informations
#' about molecules is in \code{plasMols}.
#' @docType package
#' @name plasFIA-package
#' @aliases plasFIA plasFIA-package
NULL


#' Information on the 40 molecules from the plasFIA package.
#'
#' A dataset giving the formula, the name, the class, the mass 
#' and the mass of the single-charged molecule of the plasFIA dataset.
#' \itemize{
#'   \item formula. The formula of the molecule
#'   \item names. The usual names of the molecules
#'   \item classes. The chemical family of the molecules.
#'   \item mass. The mass of the molecules.
#'   \item mass_M+H. The mass of the signly charge ion.
#'   ...
#' }
#'
#' @docType data
#' @usage data(plasMols)
#' @keywords datasets
#' @name plasMols 
#' @format A data frame with 40 rows and 5 variables
NULL

#' Information on the 10 samples form the plasFIA package.
#'
#' A dataset giving name the replocate and the concentration
#' in molecules in \code{plasMols} molecules of the files
#' in the \code{plasFIA}.
#' \itemize{
#'   \item filename. The name of the file.
#'   \item concentration_ng_ml. The concentration in spiked molecule in ng/ML.
#'   \item classes. The chemical family of the molecules.
#'   \item replicate. A factor giving the molecules coming from the same sample.
#'   ...
#' }
#'
#' @docType data
#' @usage data(plasSamples)
#' @keywords datasets
#' @name plasSamples
#' @format A data frame with 10 rows and 3 variables
NULL

#' Signal detected by the proFIA package in the plasFIA dataset.
#'
#' A \code{proFIAset} object giving the signals detected
#' in the mzML files of the plasFIA datasets using the 
#' \code{analyzeAcquisitionFIA} function with the following parameters :
#' \itemize{
#'   \item ppm. 2
#'   \item fracGroup. 0.2
#'   \item ppmgroup. 0.5
#'   \item k. 2
#' }
#' 
#' Which were adapted to an Orbitrap Fusion.
#' 
#' @docType data
#' @usage data(plasSet)
#' @keywords dataset
#' @name plasSet
#' @format A "proFIAset" object containing  1  classes.
#' Missing values have been imputed. 
#' 2557  peaks detected.
#' 629  features have been grouped.
#' The data matrix is avalaible.
#' Memory usage: 0.428 MB
NULL