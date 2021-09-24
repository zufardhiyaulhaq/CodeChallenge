package main

import "github.com/zufardhiyaulhaq/go-design-pattern/factory"

func main() {
	var zufar factory.ContentCreator
	zufar = &factory.Zufar{}

	var dila factory.ContentCreator
	dila = factory.NewDila()

	zufarContent := zufar.Produce()
	dilaContent := dila.Produce()

	zufarContent.Play()
	dilaContent.Play()
}
