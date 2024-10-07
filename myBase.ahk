#Requires AutoHotkey v2.0 
Any.Base := AnyBase()

class AnyBase {
    __New() {
        MsgBox(A_ThisFunc " created",,"t1")
    }
}

class InterfaceBaseClass {
    
}