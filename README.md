### Usage

> [!NOTE]
> First and fourth steps are supposed to be run in the master directory where comics are in.
> Scripts doesn't take arguments. Run them and it will prompt you the directory you want to work with.

1. Run ``scripts/extract-img.sh``
2. Run ``scripts/upscale.sh`` <ins>**in the**</ins> ``-extracted`` directories.
3. _(Optional)_ Run ``scripts/downscale.sh`` <ins>**in the**</ins> ``-extracted`` directories to save up space.
4. Run ``scripts/reconstruct.sh``

### Dependencies
``unzip`` ``unrar`` ``imagemagick``

``imagemagick`` is only needed if you want to downscale after upscaling for size saving.
