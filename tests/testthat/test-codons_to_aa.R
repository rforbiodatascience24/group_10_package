test_that("translation works", {
  expect_equal(codons_to_aa(c("UUU","CAA")), "FQ")
  })

test_that("translation works", {
  expect_equal(codons_to_aa(c("UUU","CAA","GAC")), "FQD")
})
