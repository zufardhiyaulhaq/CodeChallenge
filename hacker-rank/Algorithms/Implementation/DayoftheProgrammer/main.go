package main

import "fmt"

func isLeapYearJulian(year int) bool {
	leapYear := false
	return leapYear
}

func isLeapYearGregorian(year int) bool {
	leapYear := false
	return leapYear
}

func compute(year int) {
	calender := map[int]int{1:31, 2:28, 3:31, 4:30, 5:31, 6:30, 7:31, 8:31, 9:30, 10:31, 11:30, 12:31}

	if year < 1918 {
		if isLeapYearJulian(year) {
			calender[2] = calender[2] + 1
		} else {

		}
	} else {
		if isLeapYearGregorian(year) {
			calender[2] = calender[2] + 1
		} else {

		}
	}
}
func main() {
	var year int
	fmt.Scanf("%d", &year)
	compute(year)
}