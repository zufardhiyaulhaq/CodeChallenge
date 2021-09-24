package wallet

import (
	"errors"
	"fmt"
)

type Bitcoin float64

type Wallet struct {
	balance Bitcoin
}

func (w *Wallet) Deposit(amount Bitcoin) {
	fmt.Println(&w.balance)
	w.balance += amount
}

func (w *Wallet) Balance() Bitcoin {
	return w.balance
}

func (w *Wallet) Withdraw(amount Bitcoin) error {
	if amount > w.balance {
		return errors.New("[Rejected]: cannot withdraw more than balance")
	}

	w.balance -= amount
	return nil
}
