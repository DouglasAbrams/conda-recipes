
## Build:


```
 docker run -it -v $PWD:$PWD -w $PWD singlecellpipeline/conda_build:v0.0.1 bash
```

```
conda update -n base -c defaults conda -y
conda build -c conda-forge -c bioconda  test --no-build-id --no-long-test-prefix --prefix-length 80
```



## Install:

```
conda update -n base -c defaults conda -y
conda install -c conda-forge -c bioconda -c shahcompbio circos_utils
```
