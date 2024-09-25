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
        this.board := board() 
        this.turn := turn()

    }
}