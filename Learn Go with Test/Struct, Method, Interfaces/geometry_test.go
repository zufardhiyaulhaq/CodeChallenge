package geometry

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestPerimeter(t *testing.T) {
	t.Run("rectangle perimeter", func(t *testing.T) {
		assert := assert.New(t)

		rectangle := Rectangle{10.0, 10.0}
		got := rectangle.Perimeter()
		want := 40.0

		assert.Equal(want, got, "got %.2f want %.2f", got, want)
	})

	t.Run("circle perimeter", func(t *testing.T) {
		assert := assert.New(t)

		circle := Circle{10.00}
		got := circle.Perimeter()
		want := 62.80

		assert.InDelta(want, got, 0.1, "got %.2f want %.2f", got, want)
	})
}

func TestArea(t *testing.T) {
	t.Run("rectangle Area", func(t *testing.T) {
		assert := assert.New(t)

		rectangle := Rectangle{10.00, 10.00}
		got := rectangle.Area()
		want := 100.00

		assert.Equal(want, got, "got %.2f want %.2f", got, want)
	})

	t.Run("circle Area", func(t *testing.T) {
		assert := assert.New(t)

		circle := Circle{10.00}
		got := circle.Area()
		want := 314.15

		assert.InDelta(want, got, 0.1, "got %.2f want %.2f", got, want)
	})
}
