package main

import (
	"fmt"
	"net/http"
)

func main() {

	http.HandleFunc("/", home)
	http.HandleFunc("/about", about)
	http.HandleFunc("/contact", contact)
	http.ListenAndServe(":80", nil)
}

func home(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "welcome home")
}

func about(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "about")
}

func contact(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "contact")
}
