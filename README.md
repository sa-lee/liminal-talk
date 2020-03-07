# Casting multiple shadows: high-dimensional interactive data visualisation with tours and embeddings 

## Stuart Lee - presubmission seminar

# Abstract

There has been a rapid uptake in the use of non-linear dimensionality reduction (NLDR) methods such as t-distributed stochastic neighbour embedding (t-SNE) in the natural sciences as part of cluster orientation and dimension reduction workflows. The appropriate use of these methods is made difficult by their complex parameterisations and the multitude of decisions required to balance the preservation of
local and global structure in the resulting visualisation. We present a visual analytics framework for the pragmatic usage of NLDR methods by combining them with a technique called the tour. A tour is a sequence of interpolated linear projections of multivariate data onto a lower dimensional space. The sequence is displayed as a dynamic visualisation, allowing a user to see the shadows the high-dimensional data casts in a lower dimensional view. By linking the tour to a view
obtained from an NLDR method, we can preserve global structure and through user interactions like linked brushing observe where
the NLDR view may be misleading. We show a few use cases to demonstrate our approach.

The implementation of our framework is available as an R package called `liminal` available at https://github.com/sa-lee/liminal.


# Slide available [here](https://bit.ly/39vj1mF)

# Take home messages 

* DR oriented workflows are complimented by the tour
* Composing multiple views provides more insight 
* User interactions allow us to explore and check *tSNE* views


