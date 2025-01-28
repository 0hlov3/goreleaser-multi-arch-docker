package main

import (
	"fmt"
	"os/user"
	"runtime"
)

func main() {
	user, _ := user.Current()
	fmt.Printf("Hello %s\n", user.Name)
	fmt.Println(runtime.GOOS, runtime.GOARCH)
}
