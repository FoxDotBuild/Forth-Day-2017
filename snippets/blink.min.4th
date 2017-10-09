4 constant pcint0
107 constant pcmsk0
104 constant pcicr
ram variable example
: example+1 1 example +! ;i
: int-enable ['] example+1 pcint0 int! ei ;
int-enable
1 pcmsk0 mset
7 pcicr  mset
