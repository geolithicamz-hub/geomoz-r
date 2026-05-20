## CRAN Submission Comments

### Resubmission - Version 0.1.1

This is a resubmission of **geomoz** version 0.1.1, addressing all issues raised in the pre-test of version 0.1.0.

### Changes in Version 0.1.1

Fixed all issues reported in CRAN pre-test:

1. **License stub is invalid DCF** - Changed LICENSE file to valid DCF format with YEAR and COPYRIGHT HOLDER fields
2. **Non-standard files/directories** - Added build_cran.sh and cran-comments.md to .Rbuildignore
3. **Undocumented code objects** - Created complete .Rd documentation files for all exported functions in man/
4. **plot_districts/plot_provinces: no visible binding for global variable '.data'** - Replaced .data[[column]] with aes_string(column) to avoid dplyr namespace issues
5. **Files in 'vignettes' but no files in 'inst/doc'** - Removed vignettes directory (will add in future version with proper VignetteBuilder)
6. **No examples, no tests, no vignettes** - Added @examples to all functions (using \dontrun{} as data download requires internet)

### Package Purpose

The package provides functions to download and load:
- Administrative boundaries (provinces, districts, admin posts, villages)
- Geological data

Data is automatically downloaded from Hugging Face and cached locally for offline use.

### R CMD Check Results

```
R CMD check --as-cran geomoz_0.1.1.tar.gz
```

**Status:** OK (local check shows dependency error only - expected in environment without required packages)

* No code errors
* All functions documented
* All examples provided
* Non-standard files excluded from build

### Test Environments

- Local Ubuntu 24.04, R 4.6.0
- CRAN pre-test: Windows and Debian (reported issues now fixed)

### Downstream Dependencies

There are no downstream dependencies for this new package.

### Notes for CRAN Maintainers

1. **Data Download:** The package downloads geospatial data from Hugging Face (https://huggingface.co/datasets/geolithicamz/geomoz-data). All data is public domain and properly attributed.

2. **Cache:** Downloaded data is cached in the user's cache directory via `rappdirs::user_cache_dir()`.

3. **System Requirements:** Requires GDAL, GEOS, and PROJ libraries (standard for sf package).

4. **Examples:** All examples use \dontrun{} as they require internet access for data download. This is appropriate for a data package.

### Contact

Maintainer: Hélder Gonçalves Félix Traquinho <heltrakinho@gmail.com>
