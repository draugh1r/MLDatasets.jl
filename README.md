# GSOC Water Consume Dataset Wrapper for MLDatasets
This fork repo contains a Julia module that automatically downloads, extracts, and loads the global water consumption dataset from Kaggle for use with MLDatasets.<br>
The module uses DataDeps to manage the dataset dependency, a custom extraction function based on ZipFile.Reader to unzip the downloaded archive, and CSV.jl with DataFrames.jl to load the CSV data into a DataFrame. <br>
## Installation
1. Clone the repository,
2. Activate the project environment by running <code>Pkg.activate("path/to/MLDatasets")</code> in Julia,
3. Instantiate the environment using <code>Pkg.instantiate()</code>,
4. Ensure that all dependencies are installed by running <code>Pkg.add("ZipFile")</code> if needed.
## Usage
In a Julia session run:
<code>using MLDatasets, MLDatasets.Test_Water_Consume
df = MLDatasets.Test_Water_Consume.load_data()</code> <br>
This will download, extract, and load the dataset into a DataFrame.

![image](https://github.com/user-attachments/assets/3982a7f4-0dc9-4d20-8aa2-51088be80d16) <br>

## Requirements
- Julia 1.11+ <br>
- DataDeps, CSV, DataFrames, ZipFile <br>

License <br>
MIT License


# MLDatasets.jl

[![Docs Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaML.github.io/MLDatasets.jl/stable)
[![Docs Latest](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaML.github.io/MLDatasets.jl/dev)
[![CI](https://github.com/JuliaML/MLDatasets.jl/workflows/Unit%20test/badge.svg)](https://github.com/JuliaML/MLDatasets.jl/actions)

This package represents a community effort to provide a common interface for accessing common Machine Learning datasets. 
In contrast to other data-related Julia packages, the focus of MLDatasets.jl is specifically on downloading, unpacking, and accessing benchmark datasets. 
Functionality for the purpose of data processing or visualization is only provided to a degree that is special to some dataset.

This package is a part of the
[JuliaML](https://github.com/JuliaML) ecosystem. 
Its functionality is built on top of the package
[DataDeps.jl](https://github.com/oxinabox/DataDeps.jl).

## Available Datasets

Datasets are grouped into different categories. Click on the links below for a full list of datasets available in each category.

- [Graphs](https://juliaml.github.io/MLDatasets.jl/dev/datasets/graphs) - Datasets with an underlying graph structure: Cora, PubMed, CiteSeer, ...
- [Misc](https://juliaml.github.io/MLDatasets.jl/dev/datasets/misc/) - Datasets that do not fall into any of the other categories: Iris, BostonHousing, ...
- [Text](https://juliaml.github.io/MLDatasets.jl/dev/datasets/text/) - Datasets for language models. 
- [Vision](https://juliaml.github.io/MLDatasets.jl/dev/datasets/vision/) - Vision related datasets such as MNIST, CIFAR10, CIFAR100, ... 


## Installation

To install MLDatasets.jl, start up Julia and type the following code snippet into the REPL. It makes use of the native Julia package manger.

```julia
import Pkg
Pkg.add("MLDatasets")
```

## Contributing to MLDatasets

Pull requests contributing new datasets are warmly welcome. See the source code of any of the available implemented datasets for 
implementation examples.

## Other data repositories for Julia

If you don't find here the dataset you are looking for, please let us know by opening an issue.
Moreover, you can check out these other packages to find what you need:

- [OutlierDetectionData.jl](https://github.com/OutlierDetectionJL/OutlierDetectionData.jl)
- [MarketData.jl](https://github.com/JuliaQuant/MarketData.jl)
- [ForecastData.jl](https://github.com/viraltux/ForecastData.jl)
- [RDatasets.jl](https://github.com/JuliaStats/RDatasets.jl)
- [CDSAPI.jl](https://github.com/JuliaClimate/CDSAPI.jl)
- [HuggingFaceDatasets.jl](https://github.com/CarloLucibello/HuggingFaceDatasets.jl)

## License

This code is free to use under the terms of the MIT license.
