module TestDescribe
importall RleVectors

using Base.Test

x = RleVector([4,5,6],[3,6,9])

# nrun
@test nrun(x) == 3

# length
@test length(x) == 9

# size
@test size(x) == (9,)
@test size(x,1) == 9

# isempty
@test isempty(x) == false
@test isempty(RleVector([],[])) == true

# ==
@test x == x

# isequal
@test isequal(x,x)

end # module