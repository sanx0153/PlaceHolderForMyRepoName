class Square
{
    state
    {
        get
        {
            return ((this.isO ? 1 : 0) . (this.isX ? 1 : 0))
        }
    }
    __New()
    {
        this.isO := false
        this.isX := false
    }
    Gets(OorX)
    {
        if this.state = 00
        {
            this.is%StrUpper(OorX)% := true
        }
    }
}