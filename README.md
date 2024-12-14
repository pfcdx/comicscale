### Usage

> [!NOTE]
> First and fourth steps are supposed to be run in the master directory where comics are in.
>
> Scripts doesn't take arguments. Run them and it will prompt you the directory you want to work with.

1. Run ``scripts/extract-img.sh``
2. Run ``scripts/upscale.sh`` <ins>**in the**</ins> ``-extracted`` directories.
3. _(Optional)_ Run ``scripts/downscale.sh`` <ins>**in the**</ins> ``-extracted`` directories to save up space.
4. Run ``scripts/reconstruct.sh``

### Dependencies
``unzip`` ``unrar`` ``imagemagick``

``imagemagick`` is only needed if you want to downscale after upscaling for size saving.

### Obtaining models for ``realesrgan-ncnn-vulkan``
I would recommend checking out [Waifu2x-Extension-GUI](https://github.com/AaronFeng753/Waifu2x-Extension-GUI) for obtaining models.
I also obtain the models I use from there.

...or you can manually convert ``.pth`` models.
