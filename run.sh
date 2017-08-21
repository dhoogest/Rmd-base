#!/bin/bash

singularity exec \
	    -B $(pwd):$(pwd) \
	    -W $(pwd) \
	    /molmicro/common/singularity/r-reporting-0.3.img \
	    bin/knit.R example-report.Rmd \
	    --outfile example-report.html
