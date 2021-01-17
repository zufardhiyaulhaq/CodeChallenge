package greet

import (
	"fmt"
	"io"
)

func Greet(writter io.Writer, name string) {
	if name == "" {
		name = "World"
	}

	fmt.Fprintf(writter, "Hello, %s", name)
}
