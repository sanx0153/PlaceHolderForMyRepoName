#Requires AutoHotkey v2.0 

class SquareOutput {
    __New(&parent,index) {
        this.index := index
        this.parent := parent
        this.w := 150
        this.h := 150
        this.gameRef := this.parent.parent
        this.boardRef := this.gameRef.board
        this.gui := this.parent.gui.AddText("VSQ" index " " this.positionTag " Center BackgroundTrans -Border Disabled Hidden",this.text)
        this.gui.Value := this.text
    }
    positionTag
    {
        get
        {
            w := this.w
            h := this.h
            x := this.x
            y := this.y
            return "x" x " y" y " w" w " h" h
        }
    }
    state
    {
        get
        {
            return this.boardRef.squares[this.index].state
        }
    }
    text
    {
        get
        {
            answer := {10: "O", 01: "X", 00: "7"}
            return answer.%this.state%
        }
    }
    x
    {
        get
        {
            return this.index - (3 * (this.y - 1))
        }
    }
    y
    {
        get
        {
            return Ceil((this.index / 3))
        }
    }
}