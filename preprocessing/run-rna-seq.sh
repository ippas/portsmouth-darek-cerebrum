#!/bin/bash


URL="https://gitlab.com/intelliseq/workflows/-/raw/4a445095a5dd38a9199dd0dd3167901ed9542357/src/main/wdl/pipelines/rna-seq/rna-seq.wdl"

java \
    -Dconfig.file=preprocessing/rna-seq.conf \
    -jar ~/tools/cromwell-76.jar run \
        $URL \
        --inputs preprocessing/inputs.json \
        --options preprocessing/options.json
