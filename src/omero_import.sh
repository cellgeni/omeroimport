#!/bin/bash

set -euo pipefail

samplefile="${1:-actions/manifest.txt}"

sif="/nfs/cellgeni/singularity/images/omero-import-client.sif"

singularity exec --bind /lustre,/nfs,/software "${sif}" python /software/cellgen/cellgeni/omero/omero-import-client/client.py --manifest "${samplefile}"

