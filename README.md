# Widgets

[![Build Status](https://travis-ci.com/JuliaGizmos/WidgetsBase.jl.svg?branch=master)](https://travis-ci.com/JuliaGizmos/WidgetsBase.jl)
[![Codecov](https://codecov.io/gh/JuliaGizmos/WidgetsBase.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaGizmos/WidgetsBase.jl)

Unified interface for widgets. So far offers:

```julia
Slider(1:100)
Button("hi")
TextField("Write!")
NumberInput(66.0)
RangeSlider(1:100; value=[10, 80])
```

Rendering of the Widgets needs to happen in e.g. JSServe or Makie
