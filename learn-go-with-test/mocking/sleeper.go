package countdown

import "time"

type Sleeper interface {
	Sleep()
}

type SpySleeper struct {
	Calls int
}

func (s *SpySleeper) Sleep() {
	s.Calls++
}

const write = "write"
const sleep = "sleep"

type SpyCountdownOperation struct {
	Calls []string
}

func (c *SpyCountdownOperation) Sleep() {
	c.Calls = append(c.Calls, sleep)
}

func (c *SpyCountdownOperation) Write(p []byte) (n int, err error) {
	c.Calls = append(c.Calls, write)
	return
}

type DefaultSleeper struct {
	Calls int
}

func (d *DefaultSleeper) Sleep() {
	time.Sleep(time.Second)
}
