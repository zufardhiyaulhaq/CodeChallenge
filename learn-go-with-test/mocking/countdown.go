package countdown

import (
	"fmt"
	"io"
	"os"
)

const finalWord = "Go!"
const startNumber = 3
const endNumber = 0

func Countdown(out io.Writer, sleep Sleeper) {
	for count := startNumber; count > endNumber; count-- {
		sleep.Sleep()
		fmt.Fprintf(out, "%d\n", count)
	}

	sleep.Sleep()
	fmt.Fprint(out, finalWord)
}

func main() {
	sleeper := &DefaultSleeper{}
	Countdown(os.Stdout, sleeper)
}
