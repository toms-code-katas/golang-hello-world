package main

import (
	"fmt"
	"os"
	"rsc.io/quote"
)

func main() {
	name := os.Args[1]
	fmt.Println(fmt.Sprintf("Hello %s, let me great you with this wonderful quote:", name))
	fmt.Println(quote.Go())
}
