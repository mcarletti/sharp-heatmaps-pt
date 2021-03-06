#!/bin/bash

# --target_id <CLASS_ID> --class_name <NAME> --max_images <MAX>

modelname=resnet
outdir=/media/Data/datasets/sharp-heatmapts-pt/$modelname/$2_$4
outfile=$outdir/results.csv

mkdir -p $outdir

#echo "Save results in $outdir"

indir=/media/Data/datasets/ImageNet/ILSVRC2012_img_train/$2
ext=.JPEG

#echo "####################################"

python3 main.py --modelname $modelname --input_path $indir --dest_folder $outdir --results_file $outfile --file_ext $ext --no_super_pixel "$@"

#echo "####################################"
echo "DONE [$2] $4"
