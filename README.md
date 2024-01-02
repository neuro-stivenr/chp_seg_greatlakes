# chp_seg_greatlakes

Code fully copied from following repo:
https://github.com/hettk/chp_seg

We made it easy to deploy to UofM GreatLakes high performance cluster.

## Installation

```bash
git clone https://github.com/neuro-stivenr/chp_seg_greatlakes
cd chp_seg_greatlakes
make
```

This will generate a chp_seg.sh script in the repo directory.
Feel free to move it around as needed. Make sure not to move the repo directory, since the script assumes that the generated singularity image is where you installed.
If you wish to run this script in batch, make sure to update the the --account=<ACCOUNT> line in chp_seg.sh to your GreatLakes account.

## Usage

```bash
# for T1
./chp_seg.sh T1 T1w.nii.gz
# for FLAIR
./chp_seg.sh FLAIR FLAIR.nii.gz
# for T2w
./chp_seg.sh T2 T2w.nii.gz
```
