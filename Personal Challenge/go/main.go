package main

import "fmt"
import "reflect"

func main() {
	var data_slice []int
	var data_array [1]int
	data_slice_1 := make([]string,2)
	fmt.Println(reflect.TypeOf(data_slice).Kind())
	fmt.Println(reflect.TypeOf(data_array).Kind())
	fmt.Println(reflect.TypeOf(data_slice_1).Kind())
	fmt.Println(len(data_slice))

	data_map := make(map[string]int)
	data_map["a"] = 1
	fmt.Println(data_map)





}