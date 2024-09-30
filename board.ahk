class Board
{
    __New()
    {
        this.squares := this.CreateSquares()
        this.winningStates := this.CreateWinningStatesTable()
    }
    CalculateIndex()
    {
        index := (((line - 1) * 3) + column)
        return index
    }
    CreateSquares()
    {
        squares := []
        squares.Capacity := 9
        squares.Default := Square()
        return squares
    }
    GetsInput(OorX,line,column)
    {
        index := this.CalculateIndex(line,column)
        this.squares[index].Gets(OorX)
        return this.JudgeState()
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
        squareStateTable := {O: 01, X: 10, V: 00} ; V meaning Void/Empty
        for squareState, binary in squareStateTable
        {

        }
        
    }
}