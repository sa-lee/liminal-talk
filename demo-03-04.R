## ----init-----------------------------------------------------------
library(liminal)
dim(fake_trees)


## ----pc-view--------------------------------------------------------
pcs  <- prcomp(fake_trees[, -ncol(fake_trees)])
# var explained
summary(pcs)$importance[3,1:12]

## ----pca-xy---------------------------------------------------------
fake_trees <- dplyr::bind_cols(fake_trees, as.data.frame(pcs$x))
limn_xy(fake_trees, x = PC1, y = PC2, color = branches)


## ----tsne-xy--------------------------------------------------------
set.seed(2099)
tsne <- Rtsne::Rtsne(dplyr::select(fake_trees, dplyr::starts_with("dim")))

tsne_df <- data.frame(tsneX = tsne$Y[,1],
                      tsneY = tsne$Y[,2])

limn_tour_link(
  tsne_df,
  fake_trees, 
  cols = PC1:PC12,
  color = branches
)



## ----pca-init--------------------------------------------------------
tsne_v2 <- Rtsne::Rtsne(
  dplyr::select(fake_trees, dplyr::starts_with("dim")),
  Y_init = clamp_sd(as.matrix(dplyr::select(fake_trees, PC1,PC2)), sd = 1e-4),
  perplexity = nrow(fake_trees) / 100,
  eta = nrow(fake_trees) / 48,
  max_iter = 3000
)

limn_tour_link(
  tsne_v2,
  fake_trees, 
  cols = PC1:PC12,
  color = branches
)

