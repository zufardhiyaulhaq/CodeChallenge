package main

import "fmt"

// const ALPHABET_SIZE = 26

// type TrieNode struct {
// 	children [ALPHABET_SIZE]*TrieNode
// 	endOfWords bool
// }

// type Trie struct {

// }
func main() {
	// var keys = []string{"the","a","there","anaswe","any", "by","their"}
	var keys = []int{1,2,3,4}
	fmt.Println(keys)

	data := keys
	fmt.Println(data)

	data = append(data,5)
	fmt.Println(keys)
	fmt.Println(data)


}