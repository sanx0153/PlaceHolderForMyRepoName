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