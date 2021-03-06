% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sivis.R
\name{get_xpath_by_tag}
\alias{get_xpath_by_tag}
\title{Get the xpath given a html document and html tag}
\usage{
get_xpath_by_tag(
  html_tag,
  attr = NULL,
  by_index = TRUE,
  all_text = NULL,
  doc,
  root_path = "/*",
  get_other_cols = TRUE,
  just_one_tag = FALSE
)
}
\arguments{
\item{html_tag}{An html tag generated by \code{\link[rvest]{html_nodes}} or \code{\link[rvest]{html_node}}.}

\item{attr}{A node can have multiple subnodes of the same type, but only a subset of them is relevant. Distinguishing between
nodes of the same type can be done by indexing or by classes. attr is a boolean parameter (true = use attributes, false = dont use attributes).
Choosing 'false' does not mean that indexes are used. See by_index for that.}

\item{by_index}{A node can have multiple subnodes of the same type, but only a subset of them is relevant. Distinguishing between
nodes of the same type can be done by indexing or by classes. by_index is a boolean parameter (true = use index, false = dont use index).
'false' does not mean that attributes are used. See attr for that.}

\item{all_text}{all target_values that have to be found by the xpath. It is used to ensure that the identified xpath does not underfit (does not find all target_values) or
overfit (find additional values that do not belong to the target_values)}

\item{doc}{responseString  of type html}

\item{root_path}{The root tag  where to stop looking for parent nodes. Default is "/*", which will be /html most often. For some
use cases it is of interest to find all sub nodes given a parent node.}

\item{get_other_cols}{When using sivis within the browser users can select a column of the table. The user might be interested to get the "neighbour"
columns as well. Its is not straightforward to add the functionality within the browser and let the user choose multiple columns, within doing
additional manual work of labeling each column. An alternative would be to let sivis identify candidates for additional columns and let the
user choose among these candidates within a small shiny app. get_other_cols is a boolean parameter (TRUE = search for other columns, FALSE = do not search
for other columns)}

\item{just_one_tag}{A boolean parameter. Required for a call from \code{\link{get_multicol_candidates}}, where a common base xpath is attempted to find
for multiple nodes. For details see: \code{\link{get_multicol_candidates}}.}
}
\value{
An xpath to identify the provided html tag given the html document.
}
\description{
Get the xpath given a html document and html tag
}
\examples{
doc_html <- "<html><div><a>target_text</a></div></html>"
doc <- xml2::read_html(doc_html)
tag <- rvest::html_nodes(x = doc, xpath = "//*[contains(text(), 'target_text')]")
get_xpath_by_tag(tag = tag, doc = doc)
}
