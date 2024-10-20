### Usage

> [!NOTE]
> First and third steps are supposed to be run in the master directory where comics are in.

1. Run ``extract-img.sh``
2. Run ``upscale.sh`` <ins>**in the**</ins> ``-extracted`` directories.
3. Run ``reconstruct.sh``
4. _(Optional)_ Run ``downscale.sh`` <ins>**in the**</ins> ``-extracted`` directories to save up space.

### Dependencies
``unzip`` ``unrar`` ``imagemagick``

``imagemagick`` is only needed if you want to downscale after upscaling for size saving.
