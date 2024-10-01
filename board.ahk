#Requires AutoHotkey v2.0
#Include square.ahk
class Board
{
    __New(&parent)
    {
        this.parent := &parent
        this.squares := this.CreateSquares()
        this.winningStates := this.CreateWinningStatesTable()
        this.currentPlayer := ""
    }
    CalculateIndex(line,column)
    {
        index := (((line - 1) * 3) + column)
        return index
    }
    ChangeCurrentPlayer()
    {
        switch this.currentPlayer,0 {
            case "O":
                return "X"
            case "X":
                return "O"
            default:
                return Error("expecting O or X")
        }
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
        loop squares.Capacity
        {
            squares.Push(Square())
        }
        return squares
    }
    CreateWinningStatesTable()
    {

    }
    GameOver(winner)
    {
        MsgBox(winner "won the game!")
        return this.parent.GameOver()
    }
    GetsInput(OorX,line,column)
    {
        index := this.CalculateIndex(line,column)
        this.squares[index].Gets(OorX)
    }
    state
    {
        get
        {
            state := ""
            loop this.squares.Capacity
            {
                state .= this.squares[A_Index].state
            }
            return state
        }
    }
    JudgeState()
    {
        currentState := this.state
        endgame := (this.CompareWinningStates(currentState) ? true : false)
        if endgame = true
        {
            return this.GameOver(this.currentPlayer)
        }
        this.currentPlayer := this.ChangeCurrentPlayer()
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