package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Println("Hello World")
	fmt.Println(runtime.GOOS, runtime.GOARCH)
}
