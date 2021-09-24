package main

import (
	"fmt"

	"github.com/zufardhiyaulhaq/go-design-pattern/factory"
)

func main() {
	// factory content
	var zufar factory.ContentCreator
	zufar = &factory.Zufar{}

	var dila factory.ContentCreator
	dila = factory.NewDila()

	zufarContent := zufar.Produce()
	dilaContent := dila.Produce()

	zufarContent.Play()
	dilaContent.Play()

	// factory gun
	ak47, _ := factory.GetGun("ak47")
	fmt.Println(ak47.GetName())
	fmt.Println(ak47.GetPower())
}
