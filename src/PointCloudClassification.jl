module PointCloudClassification

export prepare_data, infer, classify

abstract type ClassificationConfiguration end

function prepare_data end
function infer end

function classify(configuration, pointcloud)

    prepared_data = prepare_data(configuration, pointcloud)

    return infer(prepared_data)
    
end


end # module
