# ImageJ threshold moments

Tsai’s method attempts to preserve the moments of the original image in the 
thresholded result as described by [ImageJ](https://imagej.net/plugins/auto-threshold#moments).

This algorithm selects a threshold such that the input image's and output 
image's i<sup>th<sup> moments are equivalent as proposed in Tsai, W.-H. (1985). 
Moment-preserving thresholding: A new approach. Computer Vision, Graphics, and 
Image Processing, 29(3), 377–393. [doi:10.1016/0734-189x(85)90133-1](https://doi.org/10.1016/0734-189x(85)90133-1). 


This WIPP plugin was automatically generated by a utility that searches for
ImageJ plugins and generates code to run them. For more information on what this
plugin does, contact one of the authors: Nick Schaub (nick.schaub@nih.gov), 
Anjali Taneja or Benjamin Houghton (benjamin.houghton@axleinfo.com).

For more information on WIPP, visit the [official WIPP page](https://isg.nist.gov/deepzoomweb/software/wipp).

## Building

Bump the verison in the `VERSION` file.

Then oo build the Docker image for the conversion plugin, run
`./build-docker.sh`.

## Install WIPP Plugin

If WIPP is running, navigate to the plugins page and add a new plugin.
Paste the contents of `plugin.json` into the pop-up window and submit.

## Options

This plugin takes one input argument and one output argument:

| Name          | Description             | I/O    | Type   |
|---------------|-------------------------|--------|--------|
| `--inpDir` | Collection to be processed by this plugin | Input | collection |
| `--opName` | Op overloading method to perform | Input | enum |
| `--outDir` | Output collection | Output | collection |
