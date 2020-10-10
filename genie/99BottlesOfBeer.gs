/******************************************************************************

 Genie Program for cerner_2^5_2020

 *******************************************************************************/
[indent=4]
def plural(n:uint):string
    return (n == 1) ? "" : "s"
def no(n:uint):string
    return (n == 0) ? "No" : n.to_string()
init
    bottles:uint = 99;
    do
        print "%u bottle%s of beer on the wall", bottles, plural(bottles)
        print "%u bottle%s of beer", bottles, plural(bottles)
        print "Take one down, pass it around"
        --bottles
        print "%s bottle%s of beer on the wall\n", no(bottles), plural(bottles)
    while bottles != 0