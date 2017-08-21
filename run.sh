#!/bin/bash

singularity exec \
	    -B $(pwd):$(pwd) \
	    -W $(pwd) \
	    /molmicro/common/singularity/r-reporting-0.3.img \
	    bin/knit.R classification_counts.Rmd \
	    --outfile classification_counts.html
