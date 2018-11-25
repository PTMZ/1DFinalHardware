# 1DFinalHardware
1D Final Hardware Project Game

Comp Struct

counterMod
==========
inputs:
-Size
-Reset

outputs:
- isZero(1)

projectiles
===========
inputs:
- game clk
- fire_buttons(4)
- playerPos(2*6)

local:
- numProj(3) //up to 7 projectiles per player
- 7*counterMod(k)
- showBits(7)
- posBits(7*6)
- dirBits(7*2)

outputs:
- showBits(7)
- pos(7*6)


player
======
inputs:
- game clk
- move_buttons : 4
- projectiles out
- otherPpos

local
- counterMod(j)

outputs:
- health(2)? // up to 3 health
- pos(6)


map
===
inputs:
- game clk
- player outs * 2
- proj outs * 2

outputs:
- maparr(7*7*24)


display
=======
inputs:
- maparr

outputs:
- datalines(7) // 1 bit per row


