#Requires AutoHotkey v2.0
#Include square.ahk
class Board
{
    __New()
    {
        this.squares := this.CreateSquares()
        this.winningStates := this.CreateWinningStatesTable()
        this.currentPlayer := ""
    }
    CalculateIndex(line,column)
    {
        index := (((line - 1) * 3) + column)
        return index
    }
    CompareWinningStates(board)
    {
        for winningState, state in this.winningStates
        {
            if board && state == state
            {
                return true
            }
        }
        return false
    }
    CreateSquares()
    {
        squares := []
        squares.Capacity := 9
        squares.Default := Square()
        return squares
    }
    GameOver(winner)
    {

    }
    GetsInput(OorX,line,column)
    {
        index := this.CalculateIndex(line,column)
        this.squares[index].Gets(OorX)
    }
    GetState()
    {
        state := ""
        loop this.squares.Capacity
        {
            state .= this.squares[A_Index].state
        }
        return state
    }
    JudgeState()
    {
        currentState := this.GetState()
        endgame := (this.CompareWinningStates(currentState) ? true : false)
        if endgame = true
        {
            this.GameOver(this.currentPlayer)
        }
    }
    PlayO(line,column)
    {
        this.currentPlayer := "O"
        this.GetsInput("O",line,column)
    }
    PlayX(line,column)
    {
        this.currentPlayer := "X"
        this.GetsInput("X",line,column)
    }
}