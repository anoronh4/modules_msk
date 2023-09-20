#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { TOY_SUBWORKFLOW } from '../../../../subworkflows/nf-core-test/toy_subworkflow/main.nf'

workflow test_toy_subworkflow {
    
    input = [['id':'test'],file(params.test_data['sarscov2']['illumina']['test_single_end_bam'], checkIfExists: true)]

    TOY_SUBWORKFLOW( input )
}
