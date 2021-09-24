package countdown

import (
	"bytes"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestCountdown(t *testing.T) {
	assert := assert.New(t)

	t.Run("all line output should return expected", func(t *testing.T) {
		buffer := &bytes.Buffer{}
		spySleeper := &SpySleeper{}

		Countdown(buffer, spySleeper)

		got := buffer.String()
		want := `3
2
1
Go!`

		assert.Equal(want, got, "got %s want %s", got, want)
	})

	t.Run("sleep number should 4", func(t *testing.T) {
		buffer := &bytes.Buffer{}
		spySleeper := &SpySleeper{}

		Countdown(buffer, spySleeper)

		sleepWant := 4
		sleepGot := spySleeper.Calls

		assert.Equal(sleepWant, sleepGot, "sleep got %s want %s", sleepGot, sleepWant)
	})

	t.Run("sleep should print before each countdown", func(t *testing.T) {
		countdownOperationSpy := &SpyCountdownOperation{}

		Countdown(countdownOperationSpy, countdownOperationSpy)

		sleepWant := []string{
			sleep,
			write,
			sleep,
			write,
			sleep,
			write,
			sleep,
			write,
		}

		sleepGot := countdownOperationSpy.Calls

		assert.Equal(sleepWant, sleepGot, "sleep got %s want %s", sleepGot, sleepWant)
	})
}
