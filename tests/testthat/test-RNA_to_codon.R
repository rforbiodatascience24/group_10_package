test_that("RNA_to_codon", {
  expect_equal(RNA_to_codon("UCCUGG",start=1), c("UCC","UGG"))
})
