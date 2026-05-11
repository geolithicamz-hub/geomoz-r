#!/bin/bash

# Build script for CRAN submission

echo "=========================================="
echo "Building GeoMozR for CRAN"
echo "=========================================="

# Clean previous builds
rm -f geomoz_*.tar.gz
rm -rf geomoz.Rcheck/

echo ""
echo "Step 1: Building package..."
R CMD build .

echo ""
echo "Step 2: Running R CMD check --as-cran..."
R CMD check --as-cran geomoz_*.tar.gz

echo ""
echo "=========================================="
echo "Check complete!"
echo "=========================================="
echo ""
echo "To submit to CRAN:"
echo "1. Review check results above"
echo "2. Go to: https://cran.r-project.org/submit.html"
echo "3. Upload: geomoz_0.1.0.tar.gz"
echo ""
echo "Or use:"
echo "  devtools::submit_cran()"
echo ""
