class Square
{
    __New()
    {
        this.isO := false
        this.isX := false
        this.state := {
            get {
                return (this.isO ? 1 : 0) . (this.isX ? 1 : 0)
            }
        }
    }
    Gets(OorX)
    {
        if this.state = 00
        {
            this.is%Uppercase(OorX)% := true
        }
    }
}