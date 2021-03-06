% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/can_compile.R
\name{can_compile}
\alias{can_compile}
\title{Test if compilation is possible}
\usage{
can_compile(verbose = FALSE, refresh = FALSE)
}
\arguments{
\item{verbose}{Be verbose when running commands?}

\item{refresh}{Try again to compile, skipping the cached value?}
}
\value{
A logical scalar
}
\description{
Test if compilation appears possible.  This is used in some
examples, and tries compiling a trivial C program with
\code{pkgbuild}.  Results are cached between runs within a session
so this should be fast to rely on.
}
\details{
We use \code{pkgbuild} in order to build packages, and it includes a
set of heuristics to locate and organise your C compiler. The most
likely people affected here are Windows users; if you get this
ensure that you have rtools installed.  Using
\code{\link[pkgbuild:has_rtools]{pkgbuild::find_rtools()}} with \code{debug = TRUE} may be helpful for
diagnosing compiler issues.
}
\examples{
can_compile() # will take ~0.1s the first time
can_compile() # should be basically instantaneous
}
