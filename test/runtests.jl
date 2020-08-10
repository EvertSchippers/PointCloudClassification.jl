
using PointCloudClassification
using Test

struct SomePointCloud end

struct SomeConfig end

struct PreparedData end

@testset "Basic interface test."
    function PointCloudClassification.prepare_data(config::SomeConfig, data::SomePointCloud)::PreparedData
        return PreparedData()
    end

    function PointCloudClassification.infer(PointCloudClassification)
        return 42;
    end

    result = classify(SomeConfig(), SomePointCloud())

    @test result == 42
end