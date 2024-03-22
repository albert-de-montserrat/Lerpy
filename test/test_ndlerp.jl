using Test, NDLerp

@testset "lerp tests" begin
    # Test case 1
    @test lerp(0.0, 0.0, 1.0) ≈ 0.0

    # Test case 2
    @test lerp(0.5, 0.0, 1.0) ≈ 0.5

    # Test case 3
    @test lerp(1.0, 0.0, 1.0) ≈ 1.0

    # Test case 4
    @test lerp(0.25, 0.0, 1.0) ≈ 0.25

    # Test case 5
    @test lerp(0.75, 0.0, 1.0) ≈ 0.75

    # Test case 6
    @test ndlerp((1.0, 0.5, 1.0, 1.5), (0.1, 1.0), 0, Val(0)) ≈ 0.95

    # Test case 7
    @test ndlerp((1.0, 0.5, 1.0, 1.5), (0.1, 1.0), 2, Val(0)) ≈ 1.05
end