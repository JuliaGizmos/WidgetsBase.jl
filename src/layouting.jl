
struct Transformable
    parent::Any
    translation::Node{Vec3f0}
    scale::Node{Vec3f0}
    rotation::Node{Quaternionf0}
    flip::Node{NTuple{3, Bool}}
    align::Node{Vec2f0}
    data_func::Node{Any}
    model::Node{Mat4f0}
end



mutable struct GridLayout
    content::Vector{GridContent}
    nrows::Int
    ncols::Int
    rowsizes::Vector{ContentSize}
    colsizes::Vector{ContentSize}
    addedrowgaps::Vector{GapSize}
    addedcolgaps::Vector{GapSize}
    alignmode::AlignMode
    equalprotrusiongaps::Tuple{Bool, Bool}
    needs_update::Node{Bool}
    block_updates::Bool
    layoutnodes::LayoutNodes
    attributes::Attributes
    _update_func_handle::Optional{Function} # stores a reference to the result of on(obs)

    function GridLayout(
        content, nrows, ncols, rowsizes, colsizes,
        addedrowgaps, addedcolgaps, alignmode, equalprotrusiongaps, needs_update,
        layoutnodes, attributes)

        gl = new(content, nrows, ncols, rowsizes, colsizes,
            addedrowgaps, addedcolgaps, alignmode, equalprotrusiongaps,
            needs_update, false, layoutnodes, attributes, nothing)

        validategridlayout(gl)
        return gl
    end
end
