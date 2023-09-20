#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { TOY_SUBWORKFLOW } from '../../../../subworkflows/mskcc/toy_subworkflow/main.nf'

workflow test_toy_subworkflow {
    
    input = file(params.test_data['sarscov2']['illumina']['test_single_end_bam'], checkIfExists: true)

    TOY_SUBWORKFLOW( input )
}
