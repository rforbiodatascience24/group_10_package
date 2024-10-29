test_that("DNA sequence to RNA sequence", {
  expect_equal(DNA_to_RNA("ATTGCC"), "AUUGCC")
})
