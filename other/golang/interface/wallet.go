package main

import "fmt"

type Wallet interface {
	Withdraw()
	Deposit()
}

type Rupiah struct {
	Rupiah float64
}

func (r *Rupiah) Deposit(rupiah float64) {
	r.Rupiah += rupiah
}

func (r *Rupiah) Withdraw(rupiah float64) {
	r.Rupiah -= rupiah
}

type Ringit struct {
	Ringit float64
}

func (r *Ringit) Deposit(ringit float64) {
	r.Ringit += ringit
}

func (r *Ringit) Withdraw(ringit float64) {
	r.Ringit -= ringit
}

func main() {
	moneyRupiah := &Rupiah{}
	moneyRingit := &Ringit{}

	moneyRupiah.Deposit(10000)
	moneyRingit.Deposit(10000)

	moneyRupiah.Withdraw(5000)
	moneyRingit.Withdraw(5000)

	fmt.Println(moneyRingit.Ringit)
	fmt.Println(moneyRupiah.Rupiah)
}
