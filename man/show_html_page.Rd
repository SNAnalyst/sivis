% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/manual_request_analysis.R
\name{show_html_page}
\alias{show_html_page}
\title{Show response string as document in browser}
\usage{
show_html_page(
  doc,
  encode = "UTF-8",
  fileExt = ".html",
  browser = rstudioapi::viewer,
  encodeIfNeeded = FALSE
)
}
\arguments{
\item{doc}{The string that contains the content to be shown in the browser}

\item{fileExt}{The file extension that should be used to save the string to disk}

\item{browser}{a non-empty character string giving the name of the
    program to be used as the HTML browser.  It should be in the PATH,
    or a full path specified.  Alternatively, an \R function to be
    called to invoke the browser.

    Under Windows \code{NULL} is also allowed (and is the default), and
    implies that the file association mechanism will be used.
  }

\item{encodeIfNeeded}{Should the URL be encoded by
    \code{\link[utils]{URLencode}} before passing to the browser?  This is not
    needed (and might be harmful) if the \code{browser} program/function
    itself does encoding, and can be harmful for \samp{file://} URLs on some
    systems and for \samp{http://} URLs passed to some CGI applications.
    Fortunately, most URLs do not need encoding.}
}
\description{
Display html files that are in string format are dispayed in the RStudio viewer or in the browser.
}
\examples{
data("doc_html")
show_html_page(doc_html)
}
