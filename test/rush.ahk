#Requires AutoHotkey v2.0

game   := tictactoe()
input  := inputmanager()
logic  := logicmanager()
output := outputmanager()
class tictactoe
{
    input
    {
        get
        {
            return &input
        }
    }
    logic
    {
        get
        {
            return &logic
        }
    }
    output
    {
        get
        {
            return &output
        }
    }
}

class boardmanager {
    board := [[squaremanager(),squaremanager(),squaremanager()],[squaremanager(),squaremanager(),squaremanager()],[squaremanager(),squaremanager(),squaremanager()]]
    SquareState(line,column)
    {
        answer := this.board[line][column].state
        return answer
    }
    status
    {
        get
        {
            answer := ""
            loop 3 
            {
                line := A_Index
                loop 3
                {
                    column := A_Index
                    answer .= this.SquareState(line,column)
                }
            }
            return answer
        }
    }
}

class inputmanager
{
    __New()
    {
        {
            instructions := [["Numpad7",1,1],["Numpad8",1,2],["Numpad9",1,3],["Numpad4",2,1],["Numpad5",2,2],["Numpad6",2,3],["Numpad1",3,1],["Numpad2",3,2],["Numpad3",3,3]]
            for , value in instructions
            {
                Hotkey(value[1],this.try(value[2],value[3]))
            }
        }
    }
    try(line,column)
    {
        game.logic.try(line,column)
    }
}

class logicmanager 
{
    board := boardmanager()
    try(line,column)
    {
        if this.board.SquareState(line,column) != 00
        {
            return MsgBox("Esse espaço está indisponível")
        }
        
    }
}

class squaremanager
{
    isO := false
    isX := false
    state
    {
        get
        {
            return this.isO . this.isX
        }
    }
    Get(OX)
    {
        if StrUpper(OX) != "O" or "X"
        {
            return MsgBox(A_ThisFunc " got " OX " but expected either O or X")
        }
        if this.state != 00
        {
            return MsgBox(A_ThisFunc " not empty!")
        }
        target := "is" StrUpper(OX)
        this.%target% := true
    }
}

class outputmanager
{
    
}