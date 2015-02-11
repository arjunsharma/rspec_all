package main

import (
	"fmt"
	"net/http"
)

func init() {
	fmt.Println("Starting ping/pong")
}

func handler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)

	fmt.Fprintf(w, "pong")
}

func main() {
	http.HandleFunc("/ping", handler)
	http.ListenAndServe(":3000", nil)
}
