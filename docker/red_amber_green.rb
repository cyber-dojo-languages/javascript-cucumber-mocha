
lambda { |stdout,stderr,status|
  output = stdout + stderr

  return :amber if /SyntaxError/.match(output)
  return :amber if /ReferenceError/.match(output)
  return :amber if /^[.\-UAFP]*U[.\-UAFP]*$/.match(output)
  return :amber if /^[.\-UAFP]*A[.\-UAFP]*$/.match(output)
  return :red if /^[.\-UAFP]*P[.\-UAFP]*$/.match(output)
  return :red if /^[.\-UAFP]*F[.\-UAFP]*$/.match(output)
  return :green
}
