#Requires AutoHotkey v2.0
#Include GUImanager.ahk

class Output {
    __New(game,board) {
        this.game := game
        this.board := board
        this.gui := GUImanager(this,game,board)   
    }
}
