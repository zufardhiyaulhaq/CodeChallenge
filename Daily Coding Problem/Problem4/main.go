package main

import "fmt"
import "sort"


func main() {
	var n int
	var data []int

	fmt.Scanf("%d", &n)
	
	for i := 0; i < n; i++ {
		var temp int
		fmt.Scanf("%d", &temp)
		if temp <= 0 {
			continue
		} else {
			data = append(data,temp)
		}
	}
	sort.Ints(data)
	n = len(data)
	
	if n == data[n-1] {
		fmt.Println(n+1)
	} else {
		for i := 0; i < n-1; i++ {
			if data[i+1] != data[i]+1 {
				fmt.Println(data[i]+1)
				break
			}
		}
	}


}