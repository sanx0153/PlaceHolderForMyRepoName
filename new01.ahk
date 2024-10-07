#Requires AutoHotkey v2.0
#Include myBase.ahk
#Include square.ahk
#Include board.ahk
#Include GUImanager.ahk
#Include output.ahk
#Include ttt.ahk

game := tictactoe()
game.start()
game.playX(1,1)
game.playO(1,2)
game.playX(2,2)
game.playO(2,3)
game.playX(3,3)
MsgBox(game.board.state) ; shows board state as a binary

; next: input, output, AI