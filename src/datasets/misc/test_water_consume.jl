module Test_Water_Consume

using DataDeps
using CSV, DataFrames
using ZipFile

# Helper function to extract a ZIP file, explicitly creating/closing the reader.
function extract_zip(zip_path::String, dest::String)
    reader = ZipFile.Reader(zip_path)
    try
        for file in reader.files
            outpath = joinpath(dest, file.name)
            mkpath(dirname(outpath))
            open(outpath, "w") do io
                write(io, read(file))
            end
        end
    finally
        close(reader)
    end
end

const DATA_FILE = "cleaned_global_water_consumption.csv"

const test_water_consume_dep = DataDep(
    "Test_Water_Consume",
    "Test water consumption dataset from Kaggle.",
    ["https://www.kaggle.com/api/v1/datasets/download/atharvasoundankar/global-water-consumption-dataset-2000-2024"];
    post_fetch_method = path -> begin
        dest = dirname(path)
        extract_zip(path, dest)
    end
)

function load_data()
    # Pass simple string arguments instead of @__FILE__.
    data_dir = DataDeps.resolve(test_water_consume_dep, ".", ".")
    data_file = joinpath(data_dir, "cleaned_global_water_consumption.csv")
    if !isfile(data_file)
        error("Expected data file not found: $data_file")
    end
    return CSV.read(data_file, DataFrame)
end

end # module Test_Water_Consume
