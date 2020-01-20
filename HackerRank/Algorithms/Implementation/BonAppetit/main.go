package main

import "fmt"

func bonAppetit(n,k,b int, bill []int) {
	var totalBill int

	for i := 0; i < n; i++ {
		if i != k {
		totalBill += bill[i]
		}
	}
	var splitBill int = totalBill/2

	if b == splitBill {
		fmt.Println("Bon Appetit")
	} else if b > splitBill {
		var overChange int = b - splitBill
		fmt.Println(overChange)
	}
}

func main() {
	var n, k, b int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &k)

	var bill []int
	for i:= 0; i < n; i++ {
		var temp int
		fmt.Scanf("%d", &temp)
		bill = append(bill,temp)
	}

	fmt.Scanf("%d", &b)
	bonAppetit(n,k,b,bill)
}