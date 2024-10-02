#Requires AutoHotkey v2.0
#Include squareoutput.ahk

class Output {
    __New(&parent) {
        this.parent := &parent
        this.gui := Gui("AlwaysOnTop -Border -Caption -Resize")
        this.winw := 450
        this.winh := 450
        this.board := this.CreateBoardOutput()
    }
    CreateBoardOutput()
    {
        board := []
        board.Capacity := 9
        loop board.Capacity
        {
            board.Push(this.CreateSquareOutput())
        }
        return board
    }
    CreateSquareOutput()
    {
        square := SquareOutput(&this)

    }
    Show()
    {
        this.gui.Show("Center w450 h450")
    }
    SetSize(w,h)
    {
        this.gui.Move(,,w,h)
    }
    Start()
    {
        this.Show()
    }
}
