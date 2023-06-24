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
── R.huge 0.9.0-9002: OK

  Build ID:   R.huge_0.9.0-9002.tar.gz-f99e7166468f40afb1c9f296fdfb54c4
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  3m 39.8s ago
  Build time: 3m 34s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.huge 0.9.0-9002: OK

  Build ID:   R.huge_0.9.0-9002.tar.gz-1dba830a637e461ab178d950a03abc39
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  3m 39.8s ago
  Build time: 2m 50.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.huge 0.9.0-9002: OK

  Build ID:   R.huge_0.9.0-9002.tar.gz-64a02287be3944729a9451d6f3cdf4a5
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  3m 39.8s ago
  Build time: 3m 27.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.huge 0.9.0-9002: OK

  Build ID:   R.huge_0.9.0-9002.tar.gz-0cda7db0b4b64db5bad5b96866752c0e
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  3m 39.8s ago
  Build time: 3m 17s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── R.huge 0.9.0-9002: OK

  Build ID:   R.huge_0.9.0-9002.tar.gz-e83baf0fdd424421a8a94aa16bf95e87
  Platform:   Windows Server 2022, R-devel, 64 bit
  Submitted:  3m 39.8s ago
  Build time: 3m 11s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
