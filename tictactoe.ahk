#Requires AutoHotkey v2.0 
#SingleInstance Force
ListVars()
game := tictactoe()
class slot
{
    __New(position)
    {
        this.line     := this.CalculateLine(position)
        this.column   := this.CalculateColumn(position)
        this.value    := 0
        this.Test(position,this.line,this.column)
    }
    Test(position,line,column)
    {
        testTable := [[1,1],[1,2],[1,3],[2,1],[2,2],[2,3],[3,1],[3,2],[3,3]]
        if testTable[position][1] = line && testTable[position][2] = column
            return MsgBox("Slot " position " test...OK!",A_ThisFunc,"T5")
        else
            return MsgBox("Slot " position "'s test failed: `n position " position "`n expected []" testTable[position][1] "," testTable[position][2] "]`n but got [" line "," column "]" ,A_ThisFunc,"T120")
    }
    CalculateColumn(position)
    {
        return Mod(position - 1, 3) + 1
    }
    CalculateLine(position)
    {
        return Floor((position - 1) / 3) + 1
    }
    
}
class table
{
    slots := []
    __New(){
        this.slots.Capacity := 9
        loop this.slots.Capacity
        {
            this.slots.Push(slot(A_Index))
        }
    }
}
class tictactoe
{
    __New()
    {
        this.table := table()
        this.turn := turn()

    }
}
class turn
{
    __Call()
    {
        return this.currentPlayer()
    }
}
class input
{
    
}