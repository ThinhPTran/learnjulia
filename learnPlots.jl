using Plots

x = range(0, 10, length=100)
y = sin.(x)
y1 = cos.(x)
y_noisy = @. sin(xx) + 0.1*randn()

plot(x, y, label="sin(x)")
plot!(x, y1, label="cos(x)")
plot!(xx, y_noisy, seriestype=:scatter, label="data")
