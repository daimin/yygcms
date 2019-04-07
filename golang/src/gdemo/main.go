package main

import (
	"math"
	"sync"
)

func sum(id int) {
	var x int64
	for i := 0; i < math.MaxUint32; i++ {
		x += int64(i)
	}

	println(id, x)
}

func main() {
	//runtime.GOMAXPROCS(2)
	//	m := map[int]struct{
	//		name string
	//		age int
	//	}{
	//		1 : {"user1", 10},
	//		2 : {"user2", 20},
	//	}
	//
	//	println(m[0].name)

	//go func(){
	//	println("Hello world")
	//}()

	wg := new(sync.WaitGroup)
	wg.Add(2)

	for i := 0; i < 2; i++ {
		go func(id int){
			defer wg.Done()
			sum(id)
		}(i)
	}

	wg.Wait()

}
