package greet

import (
	"bytes"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestGreet(t *testing.T) {
	t.Run("give specific user", func(t *testing.T) {
		assert := assert.New(t)

		buffer := bytes.Buffer{}
		Greet(&buffer, "charles")

		got := buffer.String()
		want := "Hello, charles"

		assert.Equal(want, got, "got: `%s`, want: `%s`", got, want)
	})

	t.Run("give empty user", func(t *testing.T) {
		assert := assert.New(t)

		buffer := bytes.Buffer{}
		Greet(&buffer, "")

		got := buffer.String()
		want := "Hello, World"

		assert.Equal(want, got, "got: `%s`, want: `%s`", got, want)
	})
}
