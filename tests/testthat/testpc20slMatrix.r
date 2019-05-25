test_that("slMatrix",
{
    expect_error(pc.omitneg(-2:2), 'Do not mix positive and negative lags when type="sl"')
    expect_error(pc.omitneg(-2:0), 'argument "maxlag" is missing, with no default')
    expect_equal(pc.omitneg(-2:0, maxlag = 6), 3:6)
    expect_equal(pc.omitneg(-(2:1), maxlag = 6), c(0, 3:6))

    expect_equal(pc.omitneg(1:2, maxlag = 6), 1:2)

    m <- matrix(1:12, nrow = 2)
    msl <- slMatrix(m)
    expect_error(slMatrix(1:12), "argument 'init' should be a matrix when 'period' is missing")

})
