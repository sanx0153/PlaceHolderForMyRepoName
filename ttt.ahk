#Include board.ahk
#Include output.ahk
class tictactoe
{
    __New()
    {
        this.board := Board(this)
        this.output := Output(this,this.board)
    }
    state
    {
        get
        {
            answer := this.board.state
            return answer
        }
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
        this.output.Start()
    }
}