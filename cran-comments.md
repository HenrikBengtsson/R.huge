# CRAN submission R.huge 0.10.0

on 2023-06-24

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub | mac/win-builder |
| ------------- | ------ | ----- | --------------- |
| 4.1.x         | L      |       |                 |
| 4.2.x         | L M W  |       |                 |
| 4.3.x         | L M W  | L . W | M1 W            |
| devel         | L M W  | L   W |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "windows-x86_64-release",
  "windows-x86_64-devel"
))
print(res)
```

gives

```
```
