package wallet

import (
	"fmt"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestWallet(t *testing.T) {
	assert := assert.New(t)

	t.Run("deposit 0 balance should return 0", func(t *testing.T) {
		wallet := Wallet{}
		wallet.Deposit(Bitcoin(0))

		fmt.Println(&wallet.balance)

		want := Bitcoin(0)
		got := wallet.Balance()

		assert.EqualValues(want, got, 0, "got %2f want %2f", got, want)
	})

	t.Run("deposit 10 balance should return 10", func(t *testing.T) {
		wallet := Wallet{}
		wallet.Deposit(Bitcoin(10))

		fmt.Println(&wallet.balance)

		want := Bitcoin(10)
		got := wallet.Balance()

		assert.EqualValues(want, got, 0, "got %2f want %2f", got, want)
	})

	t.Run("balance 10 withdraw 5 balance should return 5", func(t *testing.T) {
		wallet := Wallet{balance: Bitcoin(10)}
		wallet.Withdraw(5)

		want := Bitcoin(5)
		got := wallet.Balance()

		assert.EqualValues(want, got, 0, "got %2f want %2f", got, want)
	})

	t.Run("balance 10 withdraw 15 should return error", func(t *testing.T) {
		startingBalance := Bitcoin(10)
		wallet := Wallet{balance: startingBalance}
		err := wallet.Withdraw(15)

		got := wallet.Balance()
		assert.EqualValues(startingBalance, got, "got %2f want %2f", got, startingBalance)

		assert.Error(err)
	})
}
