package main

import "fmt"

func findSquare(row, col int, maps [][]string) int {
	var count int = 0
	// var dot string = "."

	for y:=0; y <= row; y++ { 
		for x:=0; x <= col; x++ {
			for ymove := 0; ymove <= row-y; ymove++ {
				for xmove := 0; xmove <= col-x; xmove++ {
					if x == x+xmove || y == y+ymove {
						continue
					} else if y+ymove >= row || x+xmove >= col {
						continue
					} else if maps[y][x] == maps[y][x+xmove] && maps[y][x] == maps[y+ymove][x] && maps[y][x] == maps[y+ymove][x+xmove] {
						count += 1
					}
				}
			}
		}

	}
	return count
}
func main() {
	var row, col int
	var maps [][]string

	fmt.Scanf("%d", &row)
	fmt.Scanf("%d", &col)

	for y:=0; y < row; y++ {
		var sliceRow []string
		for x:=0; x < col; x++ {
			var temp string
			fmt.Scanf("%s", &temp)
			sliceRow = append(sliceRow, temp)
		}
		maps = append(maps, sliceRow)
	}
	fmt.Println(findSquare(row,col,maps))
}