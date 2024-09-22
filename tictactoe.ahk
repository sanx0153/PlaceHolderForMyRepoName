#Requires AutoHotkey v2.0 
#SingleInstance Force

#Include input.ahk
#Include slot.ahk
#Include table.ahk
#Include turn.ahk

ListVars()
game := tictactoe()

class tictactoe
{
    __New()
    {
        this.table := table()
        this.turn := turn()

    }
}