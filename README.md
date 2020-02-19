# Widgets

[![Build Status](https://travis-ci.com/SimonDanisch/Widgets.jl.svg?branch=master)](https://travis-ci.com/SimonDanisch/Widgets.jl)
[![Codecov](https://codecov.io/gh/SimonDanisch/Widgets.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/SimonDanisch/Widgets.jl)

Unified interface for widgets. So far offers:

```julia
Slider(1:100)
Button("hi")
TextField("Write!")
NumberInput(66.0)
RangeSlider(1:100; value=[10, 80])
```

Rendering of the Widgets needs to happen in e.g. JSServe or Makie
