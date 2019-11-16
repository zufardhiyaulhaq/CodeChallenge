package main

import "fmt"
import "math"

func catAndMouse (cat1 int, cat2 int, mouse int) string {
	cat1Mouse := int(math.Abs(float64(mouse-cat1)))
	cat2Mouse := int(math.Abs(float64(mouse-cat2)))

	if cat1Mouse == cat2Mouse {
		return "Mouse C"
	} else if cat1Mouse < cat2Mouse {
		return "Cat A"
	} else {
		return "Cat B"
	}

}

func main() {
	var query int
	fmt.Scanf("%d", &query)

	for i := 0; i < query; i++ {
		var cat1,cat2,mouse int
		fmt.Scanf("%d", &cat1)
		fmt.Scanf("%d", &cat2)
		fmt.Scanf("%d", &mouse)

		fmt.Println(catAndMouse(cat1,cat2,mouse))
	}
}
