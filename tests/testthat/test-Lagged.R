
test_that("Lagged classes: indexing",
{
    ## Lagged1d
    v <- 1:12
    v_lagged <- Lagged(v)
    expect_identical(v_lagged, new("Lagged1d", data = v))
    expect_equal(v_lagged[0:2], v[1:3])
    expect_equal(v_lagged[[0]], 1)
    expect_equal(v_lagged[0],   v_lagged[0, drop = FALSE])
    expect_equal(v_lagged[[0]], v_lagged[0, drop = TRUE])

    ## Lagged2d
    m <- matrix(1:12, nrow = 4)
    m_lagged <- Lagged(m)
    expect_identical(m_lagged, new("Lagged2d", data = m))
    expect_equal(dim(m_lagged[0]), c(4, 1))
    expect_equal(m_lagged[0], m[ , 1, drop = FALSE])

    expect_null(dim(m_lagged[[0]]))
    expect_equal(m_lagged[[0]], m[ , 1, drop = TRUE])
    expect_equal(m_lagged[0],   m_lagged[0, drop = FALSE])
    expect_equal(m_lagged[[0]], m_lagged[0, drop = TRUE])

    mm <- matrix(10:49, nrow = 4, byrow = TRUE)
    mm_lagged <- Lagged(mm)

    ## one index: lag
    expect_equal(ncol(mm_lagged[0]), 1)   # column vector
    expect_null(dim(mm_lagged[[0]]))      # numeric
    ## two indices: first is row, second is lag
    expect_true(!is.null(mm_lagged[1, 0]))     # '[' doesn't drop dimensions
    expect_true(!is.null(mm_lagged[1, 0:3]))

    expect_null(dim(mm_lagged[[1, 0]]  )) # '[[' does drop dimensions
    expect_null(dim(mm_lagged[[1, 0:3]]))
    expect_null(dim(m_lagged[[1, TRUE]])) # the whole first row, as numeric

    expect_true(!is.null(mm_lagged[1:2, 0:3])) # ok, a matrix
    ## but the first arg. of '[[' must be of length one, so this throws error:
    expect_error(mm_lagged[[1:2 , 0:3]])

    ## currently no "[" method for "logical"
    ## TODO: maybe add one for symmetry with '[['?
    expect_error(m_lagged[1, TRUE])

    ## TODO: put expectations here:
    mm_lagged[1:4,1:4, drop = "tt"]
    mm_lagged[5:12, 1, drop = "tl+-"]
    mm_lagged[6:13, 1:4, drop = "tl+-"]
    mm_lagged[1, 4, drop = "co"]   # TODO: "co" may be worth a class
    mm_lagged[2, -1, drop = "co"]
    mm_lagged[2, 0, drop = "co"]
    mm_lagged[2, 9, drop = "co"]
    mm_lagged[2, 10, drop = "co"]
    mm_lagged[ 1:2, 4, drop = "co"] # 14 24
    mm_lagged[ 1:6, 4, drop = "co"] # 14 24 34 44 14 24
    mm_lagged[ 1:6, 0, drop = "co"] # 14 24 34 44 14 24


    ## Lagged3d
    a <- array(1:24, dim = c(2, 3, 4))
    a_lagged <- Lagged(a)
    expect_identical(a_lagged, new("Lagged3d", data = a))
    expect_equal(dim(a_lagged[0]), c(2,3,1) ) # c(dim(a)[-3], 1) )
    expect_equal(a_lagged[0], a[ , , 1, drop = FALSE])

    expect_equal(dim(a_lagged[[0]]), c(2,3) ) # dim(a)[-3]
    expect_equal(a_lagged[[0]], a[ , , 1, drop = TRUE])
    expect_equal(a_lagged[0],   a_lagged[0, drop = FALSE])
    expect_equal(a_lagged[[0]], a_lagged[0, drop = TRUE])


    ## as above for "FlexibleLagged"
    v_flex <- new("FlexibleLagged", data = v)
    expect_identical(v_flex@data, v_lagged)
    expect_equal(v_flex[0], v_lagged[0])
    expect_equal(v_flex[[0]], v_lagged[[0]])
    expect_equal(v_flex[0],   v_flex[0, drop = FALSE])
    expect_equal(v_flex[[0]], v_flex[0, drop = TRUE])

    m_flex <- new("FlexibleLagged", data = m)
    expect_identical(m_flex@data, m_lagged)
    expect_equal(m_flex[0], m_lagged[0])
    expect_equal(m_flex[[0]], m_lagged[[0]])
    expect_equal(m_flex[0],   m_flex[0, drop = FALSE])
    expect_equal(m_flex[[0]], m_flex[0, drop = TRUE])

    a_flex <- new("FlexibleLagged", data = a)
    expect_identical(a_flex@data, a_lagged)
    expect_equal(a_flex[0], a_lagged[0])
    expect_equal(a_flex[[0]], a_lagged[[0]])
    expect_equal(a_flex[0],   a_flex[0, drop = FALSE])
    expect_equal(a_flex[[0]], a_flex[0, drop = TRUE])

    ## maxLag, maxLag<-
    ##    TODO: extending with "maxLag<-"()

    expect_equal(maxLag(v_lagged), 11)
    expect_equal(maxLag(m_lagged), 2)
    expect_equal(maxLag(a_lagged), 3)

    v2_lagged <- v_lagged
    maxLag(v2_lagged) <- 2
    expect_equal(maxLag(v2_lagged), 2)
    expect_equal(v2_lagged[], v[1:3])

    m2_lagged <- m_lagged
    maxLag(m2_lagged) <- 2
    expect_equal(maxLag(m2_lagged), 2)
    expect_equal(m2_lagged[], m[, 1:3])

    a2_lagged <- a_lagged
    maxLag(a2_lagged) <- 2
    expect_equal(maxLag(a2_lagged), 2)
    expect_equal(a2_lagged[], a[, , 1:3])



})



