#Requires AutoHotkey v2.0
#SingleInstance Force

class square
{
    __New() {
        this.isX := false
        this.isO := false
    }
    state()
    {
        return (this.isX . this.isO)
    }
    play(XorO)
    {
        if StrUpper(XorO) != "X" or "O"
        {
            return Error("expected X or O")
        }
        this.is%StrUpper(XorO)% := true
    }
}

class board
{
    __New()
    {
        this.squares := [[],[],[]]
        loop 3
        {
            line := A_Index
            loop 3
            {
                this.squares[line].Push(square())
            }
        }
        this.winnerState := false
    }
    boardState()
    {
        state := ""
        for line, in this.squares
        {
            for , square_ in this.squares[line]
            {
                state .= square_.state()
            }
        }
        return state
    }
    checkWinner()
    {
        X := 10
        O := 01
        E := 00 ; empty
        winnerBoardState := [X X X E E E E E E, E E E X X X E E E, E E E E E E X X X, 
                             O O O E E E E E E, E E E O O O E E E, E E E E E E O O O,
                             X E E X E E X E E, E X E E X E E X E, E E X E E X E E X, 
                             O E E O E E O E E, E O E E O E E O E, E E O E E O E E O,
                             X E E E X E E E X, E E X E X E X E E, 
                             O E E E O E E E O, E E O E O E O E E]
        for , state in winnerBoardState
        {
            if this.boardState() && state == state
            {
                return true
            } 
        }
        return false
    }
    Play(XorO,x,y)
    {
        this.squares[y][x].play(XorO)
        this.winnerState := this.checkWinner()
    }
}
