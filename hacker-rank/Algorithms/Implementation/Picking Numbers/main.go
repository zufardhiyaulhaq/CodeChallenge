package main

import "fmt"
import "sort"

func findMap(data[]int) map[int]int {
	
	dataMap := make(map[int]int)

	for _, value := range data{
		_, exist := dataMap[value]
		if exist {
			dataMap[value] += 1
		} else {
			dataMap[value] = 1
		}
	}
	return dataMap
}

func getKeySorted(dataMap map[int]int) []int {
	var dataSlice []int
	for k, _ := range dataMap{
		dataSlice = append(dataSlice,k)
	}
	sort.Ints(dataSlice)

	return dataSlice
}

func getSingleMax (dataMap map[int]int) int {
	max := 0
	for _, v := range dataMap{
		if v >= max{
			max = v
		}
	}
	return max
}
func calcNumbers(dataMap map[int]int) int {

	dataSlice := getKeySorted(dataMap)
	maxSubArray := getSingleMax(dataMap)

	length := len(dataSlice)

	temp := 0

	if length == 1{
		return dataMap[dataSlice[0]]
	}

	for i:=0; i<length-1; i++{
		if dataSlice[i]+1 == dataSlice[i+1]{
			temp = dataMap[dataSlice[i]]+dataMap[dataSlice[i+1]]
			if maxSubArray < temp{
				maxSubArray = temp
			}
		}
	}

	return maxSubArray
}

func main() {
	var length int
	fmt.Scanf("%d", &length)

	var data []int
	for i:=0; i < length; i++ {
		var temp int
		fmt.Scanf("%d", &temp)
		data = append(data,temp)
	}
	var dataMap = findMap(data)
	fmt.Println(calcNumbers(dataMap))
}