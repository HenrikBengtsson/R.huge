library("R.utils")
verbose <- Arguments$getVerbose(TRUE)

pathname <- "large.Rmatrix"
if (isFile(pathname)) {
  file.remove(pathname)
  if (isFile(pathname)) {
    stop("File not deleted: ", pathname)
  }
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Create a new file matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
verbose && enter(verbose, "Creating new matrix (>5Gb!)")
X <- FileDoubleMatrix(pathname, nrow=1000000/4, ncol=2100, byrow=TRUE) 
verbose && exit(verbose)

verbose && enter(verbose, "Filling it with data")
rows <- c(1:4,7:10) 
cols <- c(1) 
x <- 1:length(rows)
writeValues(X, rows=rows, cols=cols, values=x) 
verbose && exit(verbose)

verbose && enter(verbose, "Getting data again")
y <- readValues(X, rows=rows, cols=cols) 
verbose && exit(verbose)
stopifnot(all.equal(x,y))

verbose && enter(verbose, "Setting data using [i,j]")
i <- c(20:18, 13:15)
j <- c(3:2, 15:98)
n <- length(i) * length(j)
values <- 1:n
X[i,j] <- values
verbose && enter(verbose, "Validating")
print(X)
print(X[i,j])
stopifnot(all.equal(as.vector(X[i,j]), values))
verbose && exit(verbose)
verbose && exit(verbose)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Open an already existing file matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
verbose && enter(verbose, "Getting existing matrix")
Y <- FileByteMatrix(pathname) 
verbose && print(verbose, Y)
verbose && exit(verbose)

print(Y)
stopifnot(all.equal(as.vector(Y[i,j]), values))

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Close all matrices
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
close(X)
close(Y)

# Remove original matrix too
delete(X)

