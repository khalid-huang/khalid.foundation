package greed

import (
	"sort"
	"testing"
)

// leetcode 1833
func maxIceCream(costs []int, coins int) int {
	sort.Ints(costs)
	cur, rsl := 0, 0
	for i := 0; i < len(costs); i++ {
		cur += costs[i]
		if cur > coins {
			break
		}
		rsl += 1
	}
	return rsl
}

// leetcode 1558
// 使用贪心策略：每轮都尽量把所有的数字除2，如果除不尽，就加一次减一操作
func minOperations(nums []int) int {
	allZero := false
	count := 0
	for allZero == false {
		allZero = true
		for i := 0; i < len(nums); i++ {
			if nums[i] % 2 == 1 {
				count += 1 //op 1
			}
			nums[i] /= 2
			if nums[i] != 0 {
				allZero = false
			}
		}
		count += 1 // op 2
	}
	return count - 1 // 最后的（0,1）或者（0，0）会多算一次
}

// leetcode 984
// 使用贪心的策略，通过不断组合aa 和 一个b，来让a 和 b剩余的长度趋同
func strWithout3a3b(a int, b int) string {
	rsl := make([]byte, a+b)
	first := byte('a')
	second := byte('b')
	if a < b {
		first, second = second, first
		a, b = b, a
	}
	i := 0
	for a != b && a >= 2 && b >= 1 {
		rsl[i] = first
		rsl[i+1] = first
		rsl[i+2] = second
		a -= 2
		b -= 1
		i += 3
	}
	// 这里面包含了三个情况：1 经过上上面的处理后剩下的数字是相等的就隔着放； 2 剩下1个或2个a; 3 剩下1 个或2个b
	for a != 0 || b != 0 {
		if a != 0 {
			rsl[i] = first
			i+=1
			a -= 1
		}
		if b != 0 {
			rsl[i] = second
			i+=1
			b-=1
		}
	}
	// 把相同的数字没隔一个放一个数字
	//for a == b && a != 0 {
	//	rsl[i] = first
	//	rsl[i+1] = second
	//	i += 2
	//	a -= 1
	//	b -= 1
	//}
	// 如果不是相同的话，就把剩下的数字都放入
	//for ;a != 0;a-=1 {
	//	rsl[i] = first
	//	i += 1
	//}
	//for ;b != 0;b-=1 {
	//	rsl[i] = second
	//	i += 1
	//}
	return string(rsl)
}

func TestStrWithout3a3b(t *testing.T) {
	a := 4
	b := 1
	t.Log(strWithout3a3b(a, b))
}