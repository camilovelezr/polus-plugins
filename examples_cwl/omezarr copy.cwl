#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool

requirements:
  DockerRequirement:
    dockerPull: labshare/polus-ome-zarr-converter-plugin:compute-0.2.1
  InitialWorkDirRequirement:
    listing:
    - entryname: output
      writable: true
      entry: |-
        $({class: 'Directory', path: inputs.outDir.path, basename: inputs.outDir.basename, listing:[]})
  InlineJavascriptRequirement: {}

inputs:
  filePattern:
    type: string
    inputBinding:
      prefix: --filePattern
  inpDir:
    type: Directory
    inputBinding:
      prefix: --inpDir
  outDir:
    type: Directory
    inputBinding:
      prefix: --outDir

outputs:
  outDir:
    type:
      type: array
      items:
      - File
      - Directory
    outputBinding:
      glob: $("."+inputs.outDir.basename + "/*")

baseCommand:
- python3
- /opt/executables/main.py