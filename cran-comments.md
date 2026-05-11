## CRAN Submission Comments

### New Package Submission

This is a new package submission for **geomoz** - an R package providing easy access to geospatial data for Mozambique.

### Package Purpose

The package provides functions to download and load:
- Administrative boundaries (provinces, districts, admin posts, villages)
- Geological data

Data is automatically downloaded from Hugging Face and cached locally for offline use.

### R CMD Check Results

```
R CMD check --as-cran geomoz_0.1.0.tar.gz
```

**Status:** OK

* No errors
* No warnings
* No notes

### Test Environments

- Local Ubuntu 22.04, R 4.3.0
- GitHub Actions (Ubuntu, Windows, macOS)
- R-devel (via R-hub)

### Downstream Dependencies

There are no downstream dependencies for this new package.

### Notes for CRAN Maintainers

1. **Data Download:** The package downloads geospatial data from Hugging Face (https://huggingface.co/datasets/geolithicamz/geomoz-data). All data is public domain and properly attributed.

2. **Cache:** Downloaded data is cached in the user's cache directory via `rappdirs::user_cache_dir()`.

3. **System Requirements:** Requires GDAL, GEOS, and PROJ libraries (standard for sf package).

### Contact

Maintainer: Hélder Gonçalves Félix Traquinho <heltrakinho@gmail.com>
