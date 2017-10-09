\ IMPORTANT PAGES:
\   PAGE 65 - Interrupts
\   ---------------------------------------
\   I probably want to use INT1 or INT0 on
\   port D, bit 2 and 3 (PD2, PD3 - pin 2,3
\   on Arduino board)
\
\   PAGE 71 - Interupt register description
\   ---------------------------------------
\
\   PAGE 76 - How PORTs work, using for I/O
\   ---------------------------------------
\   Most *impotant* explanation !
\
\   PAGE 92 - Adresses of registers.

\ Pin Change Interrupt 0
4 constant pcint0

\ Pin Change Mask Register 0
$6b constant pcmsk0

\ Pin Change Interrupt Control Register
$68 constant pcicr

ram variable example

: example+1
  1 example +!
;i

: int-enable
  ['] example+1 pcint0 int!
  ei
;

int-enable

%00000001 pcmsk0 mset
%00000111 pcicr  mset

\ Shorting pin 8 will now increment `example` variable.