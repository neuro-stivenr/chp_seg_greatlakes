#!/bin/bash

module load singularity

singularity build containers/chp_seg.sif docker://kilianhett/chp_seg:1.0.0
