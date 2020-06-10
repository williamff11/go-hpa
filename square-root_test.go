package main

import (
	"math"
	"testing"
)

func squareRoot(t *testing.T) {
	const (
		a = 3
		b = 4
	)
	c := math.Sqrt(a*a + b*b)
	if c != 5 {
		t.Errorf("squareRoot() failed, expect *5*")
	}
}
