module WidgetsBase

using Observables

to_node(x) = Observable(x)
to_node(x::Observable) = x

abstract type AbstractWidget{T} <: Observables.AbstractObservable{T} end

Observables.observe(x::AbstractWidget) = x.value

include("ui_elements.jl")

export Button, Slider, RangeSlider, TextField, NumberInput, Checkbox, FilePicker

end # module
