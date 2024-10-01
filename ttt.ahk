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
        return Board(&this)
    }
    CreateWindow()
    {
        return Gui("AlwaysOnTop -Border -Caption -Resize")
    }
    GameOver()
    {
        return this.Start()
    }
    PlayO(line,column)
    {
        this.board.PlayO(line,column)
    }
    PlayX(line,column)
    {
        this.board.PlayX(line,column)
    }
    Start()
    {
        MsgBox("Game Started",,"t1")
    }
}