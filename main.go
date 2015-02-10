package main

import (
	"fmt"
	"net/http"
)

func init() {
	// Provide some meaningful output when the app starts
	fmt.Println("Starting ping/pong")
}

func handler(w http.ResponseWriter, r *http.Request) {
	// return a 200 status
	w.WriteHeader(http.StatusOK)

	// write 'pong' to the response body
	fmt.Fprintf(w, "pong")
}

func main() {
	http.HandleFunc("/ping", handler)
	http.ListenAndServe(":3000", nil)
}
