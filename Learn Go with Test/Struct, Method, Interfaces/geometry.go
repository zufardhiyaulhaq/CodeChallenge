package geometry

import (
	"math"
)

type Shape interface {
	Perimeter() float64
	Area() float64
}
type Rectangle struct {
	width  float64
	height float64
}

func (rectangle Rectangle) Perimeter() float64 {
	return 2 * (rectangle.width + rectangle.height)
}

func (rectangle Rectangle) Area() float64 {
	return rectangle.width * rectangle.height
}

type Circle struct {
	radius float64
}

func (circle Circle) Perimeter() float64 {
	return 2 * math.Pi * circle.radius
}

func (circle Circle) Area() float64 {
	return math.Pi * circle.radius * circle.radius
}
