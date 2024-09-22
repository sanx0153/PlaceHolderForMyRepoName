class turn
{
    __New(first := 1)
    {
        this.playerTable := [1,2]
        this.currentPlayer := first
        this.nextPlayer := this.playerTable[++first]
        this.Test()
    }
    __Call()
    {
        return this.currentPlayer
    }
    End()
    {
        newCurrentPlayer := this.nextPlayer
        newNextPlayer := this.currentPlayer
        this.currentPlayer := newCurrentPlayer
        this.nextPlayer := newNextPlayer
    }
    Test() {
        ;ah depois.
    }
}