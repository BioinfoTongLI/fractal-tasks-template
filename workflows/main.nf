include { FRACTAL_THRESHOLDING } from '../modules/sanger/fractal/thresholding/main'
include { FRACTAL_CELLPOSE } from '../modules/sanger/fractal/cellpose/main'

params.images = [
    [
        ["id": "test2"],
        "/lustre/scratch126/cellgen/cellgeni/tl10/fractal-tasks-template/20200812-CardiomyocyteDifferentiation14-Cycle1_mip.zarr/B/03/0",
        0,
        "DAPI",
        "test"
    ],
]

workflow {
    FRACTAL_THRESHOLDING(channel.from(params.images))
    FRACTAL_CELLPOSE(channel.from(params.images))
}