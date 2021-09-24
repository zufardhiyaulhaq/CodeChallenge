package factory

import "fmt"

type Content interface {
	Play()
}

type CloudContent struct{}

func (c *CloudContent) Play() {
	fmt.Println("cloud content")
}

type DataContent struct{}

func (d *DataContent) Play() {
	fmt.Println("data content")
}

// ContentCretor have method
// to create content
type ContentCreator interface {
	Produce() Content
}

// Zufar struct create
// CloudContent
type Zufar struct{}

func (z *Zufar) Produce() Content {
	return &CloudContent{}
}

func NewZufar() ContentCreator {
	return &Zufar{}
}

// Dila struct create
// DataContent
type Dila struct{}

func (d *Dila) Produce() Content {
	return &DataContent{}
}

func NewDila() ContentCreator {
	return &Dila{}
}


