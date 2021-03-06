% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neighbors.R
\docType{methods}
\name{nearest.neighbors}
\alias{nearest.neighbors}
\alias{nearest.neighbors,integer,matrix-method}
\title{Graph diffusion using nearest neighbors}
\usage{
nearest.neighbors(nodes, graph, k = 1L, ...)

\S4method{nearest.neighbors}{integer,matrix}(nodes, graph, k = 1L, ...)
}
\arguments{
\item{nodes}{a \code{n}-dimensional integer vector of node indexes (1-based) for which the algorithm is applied iteratively}

\item{graph}{an (\code{n x n})-dimensional numeric non-negative adjacence matrix representing the graph}

\item{k}{the depth of the nearest neighbor search, e.g. the depth of the graph traversal}

\item{...}{additional parameters}
}
\value{
returns the kNN nodes as list of integer vectors of node indexes
}
\description{
For every node in a set of nodes the graph gets traversed along
the node's shortest paths to its neighbors. Nearest neighbors are added
until a maximum depth of \code{k} is reached. For settings where there are more
than \code{k} neighbors having the same distance, all neighbors are returned.
}
\examples{
 # count of nodes
 n <- 10
 # indexes (integer) of nodes for which neighbors should be searched
 node.idxs <- c(1L, 5L)
 # the adjaceny matrix (does not need to be symmetric)
 graph <- rbind(cbind(0, diag(n-1)), 0)
 # compute the neighbors until depth 3
 neighs <- nearest.neighbors(node.idxs, graph, 3)
}
