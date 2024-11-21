include { FRACTAL_THRESHOLDING } from '../modules/sanger/fractal/thresholding/main'

params.images = [
    [
        ["id": "test1"],
        "../20200812-CardiomyocyteDifferentiation14-Cycle1_mip.zarr/B/03/0",
        600,
        "test",
        "DAPI"
    ],
]

workflow {
    FRACTAL_THRESHOLDING(channel.from(params.images))
}