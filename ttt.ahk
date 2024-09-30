#Include board.ahk
class tictactoe
{
    __New()
    {
        this.board := this.CreateBoard()
        this.output := this.CreateWindow()
    }
    CreateBoard()
    {
        return Board()
    }
    CreateWindow()
    {
        return Gui("AlwaysOnTop -Border -Caption -Resize")
    }
    Start()
    {
        MsgBox("Game Started",,"t1")
    }
}