"""
    lerp(t, v0, v1)

Linearly interpolates between two values `v0` and `v1` using a parameter `t`.

# Arguments
- `t`: The interpolation parameter, typically between 0 and 1.
- `v0`: The starting value.
- `v1`: The ending value.

# Returns
The interpolated value between `v0` and `v1`.
"""
@inline lerp(t, v0, v1) = fma(t, v1, fma(-t, v0, v0))

"""
    ndlerp(v, t::NTuple{nD, T}) where {nD, T}

Perform n-dimensional linear interpolation using the given vector `v` and tuple `t`.

# Arguments
- `v`: The vector to interpolate.
- `t`: The tuple containing the interpolation values.

# Returns
The result of the n-dimensional linear interpolation.
"""
@inline ndlerp(v, t::NTuple{nD, T}) where {nD, T} = ndlerp(v, t, 0, Val(nD-1))
@inline ndlerp(v, t::NTuple{nD, T}, i, ::Val{N}) where {nD, N, T} = lerp(t[N+1], ndlerp(v, t, i, Val(N-1)), ndlerp(v, t, i+2^N, Val(N-1))) 
@inline ndlerp(v, t::NTuple{nD, T}, i, ::Val{0}) where {nD, T}  = lerp(t[1], v[i+1], v[i+2])
