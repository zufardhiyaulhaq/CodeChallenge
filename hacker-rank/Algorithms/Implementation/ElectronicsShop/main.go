package main

import "fmt"
import "sort"

func findMoneySpend(b int, n int, m int, keyboard []int, usbDrive []int) int {
	var moneySpend int = -1

	if keyboard[0]+usbDrive[0] > b{
		return moneySpend
	}

	moneySpend = keyboard[0]+usbDrive[0]
	for i := 0; i < n; i++ {
		for j:=0; j < m; j++ {
			if keyboard[i]+usbDrive[j] <= b && keyboard[i]+usbDrive[j] > moneySpend{
				moneySpend = keyboard[i]+usbDrive[j]
			}
		}
	}

	return moneySpend
	
}

func main() {
	var b, n, m int
	fmt.Scanf("%d",&b)
	fmt.Scanf("%d",&n)
	fmt.Scanf("%d",&m)

	var keyboard []int
	var usbDrive []int

	for i := 0; i < n; i++{
	  var temp int
	  fmt.Scanf("%d", &temp)
	  keyboard = append(keyboard, temp)
	}

	for i := 0; i < m; i++{
		var temp int
		fmt.Scanf("%d", &temp)
		usbDrive = append(usbDrive, temp)
	  }
	
	sort.Ints(keyboard)
	sort.Ints(usbDrive)

	fmt.Println(findMoneySpend(b,n,m,keyboard,usbDrive))
}