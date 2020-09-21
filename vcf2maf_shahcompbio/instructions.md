
## Build:


```
 docker run -it -v $PWD:$PWD -w $PWD singlecellpipeline/conda_build:v0.0.1 bash
```

```
conda update -n base -c defaults conda -y
conda build -c bioconda vcf2maf_shahcompbio/
```



## Install:

```
conda install -c bioconda -c shahcompbio vcf2maf_shahcompbio
```
