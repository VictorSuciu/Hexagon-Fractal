# Hexagon Fractal

[Inspiration](http://erkdemon.blogspot.com/2009/12/hex-fractal-carpet.html)

This project generates a space-filling fractal of hexagons. It is constructed as such:

<br>

### Depth 0:
> One hexagon of width w in the center

![FractalImage](https://github.com/VictorSuciu/README-Assets/blob/master/Hexagon/HexagonFractal0.png)

<br>

### Depth 1:
> 6 hexagons of width *w/2* on every free vertex of depth 0 hexagon

![FractalImage](https://github.com/VictorSuciu/README-Assets/blob/master/Hexagon/HexagonFractal1.png)

<br>

### Depth 2:
> 6 hegexagons of width *w/4* on every free vertex of each depth 1 hexagon

![FractalImage](https://github.com/VictorSuciu/README-Assets/blob/master/Hexagon/HexagonFractal2.png)

<br>

### Depth 3:
> 6 hegexagons of width *w/8* on every free vertex of each depth 2 hexagon

![FractalImage](https://github.com/VictorSuciu/README-Assets/blob/master/Hexagon/HexagonFractal3.png)

<br>

### Depth 4:
> 6 hegexagons of width *w/16* on every free vertex of each depth 3 hexagon

![FractalImage](https://github.com/VictorSuciu/README-Assets/blob/master/Hexagon/HexagonFractal4.png)

<br>

### Depth 5:
> 6 hegexagons of width *w/32* on every free vertex of each depth 4 hexagon

![FractalImage](https://github.com/VictorSuciu/README-Assets/blob/master/Hexagon/HexagonFractal5.png)

<br>

### Depth 6:
> 6 hegexagons of width *w/64* on every free vertex of each depth 5 hexagon

![FractalImage](https://github.com/VictorSuciu/README-Assets/blob/master/Hexagon/HexagonFractal6.png)

<br>

...and so forth onto infinite depth.