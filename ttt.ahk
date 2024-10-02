#Include board.ahk
#Include output.ahk
class tictactoe
{
    __New()
    {
        this.board := this.CreateBoard()
        this.output := this.CreateOutput()
    }
    CreateBoard()
    {
        return Board(&this)
    }
    CreateOutput()
    {
        return Output(&this)
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
        this.board.Start()
        this.output.Start(&this.board)
    }
}