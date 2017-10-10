# Welcome

---

# About Us

---

# About You
 * Experience Levels
 * Backgrounds
 * Goals

---

# What Are We Doing Today?

 * Use Forth to understand _low level_ computer concepts.
 * A few lab experiments

---

# History

 * Chuck Moore
 * First Forth projects
 * Rise of popularity in the early 80's
 * Forth today

---

# Common Use Cases for Forth

 * Firmware
 * Firmware
 * Resource constrained applications
 * Firmware

---

# Advantages

 * Can be easily ported to new systems / platforms (anything can run Forth)
 * _Very_ resource efficient (minimal memory requirements)
 * "Low Floor, High Ceiling"

---

# Real World Forth

 * [Power Plant Control Systems](https://www.forth.com/solar-power-plant-controls/)
 * [Philae Lander](https://en.wikipedia.org/wiki/Philae_(spacecraft))
 * [Hobbyist Projects](https://www.rs-online.com/designspark/fignition-gets-a-keyboard)
 * GA 144

---

# Why Bother?

 * It's fun!
 * Less tooling and setup than C
 * The only language a developer can _completely_ understand quickly.
 * Makes you a better programmer
 * Influences your understanding of other languages.
 * Low level concepts are easier to understand.

---

# Minimalism

 * No Garbage Collector
 * No Floating Point Numbers (sometimes)
 * No Type System or Type Checker (everything is an integer)

---

# The Computer We Will Use Today

http://www.microchip.com/wwwproducts/en/ATmega328P

---

# Detour: What _is_ A Computer, Really?

 * Processor
 * Memory
 * Input lines
 * Output lines

---

# What Is Memory?

It's like a **spreadsheet for integers**. Memory has many *addresses* that hold *values*.

|Address|Value (decimal)|
|---	|---	|
| 0| 24|
| 1| 13|
| 2| 27|
| 3| 255|
| 4| 37|
| 5| 0|
| 6| 42|
| 7| 86|

---

# Arduino Memory

|Kind|Size|
|--- |--- |
|Flash | 32 kB|
|RAM | 2 kB|
|ROM | 1 kB|

---

# The Importance of Symbols

Computers require **symbolic thinking**.

|Instead of...|Let's say...|
|---	|---	|
| A| 65|
| 65| 1011|
|1011|high, low, high, high|
|high, low, high, high| A|

At a low level, **Computers _only_ understand numbers**!

All concepts must be symbolized as numbers or sequences of numbers.

---

# What Is a Processor?

Performs calculations and actions, usually with the contents of memory addresses.

Example: Read address, write address, **execute address*.

---

# What About Input / Output Lines?

Convert voltage fluctuations to numbers which are usually stored in memory.

That's it. Keyboards, monitors, WiFi cards all work like this.

https://sites.google.com/site/lofturj/cwreceive

What's going on inside the chip?

---

# What Just Happened?

http://cs-alb-pc3.massey.ac.nz/notes/59304/l15.html

1. Computer senses an incoming signal
2. Computer stores signal value in a memory address
3. Computer processes the value, often storing the result in a new address
4. Computer writes to certain special addresses, that cause signals to be sent back out (output)

---

# More Examples of I/O Operations

https://www.youtube.com/watch?v=vAhp_LzvSWk
https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/ATMEGA328P-PU.jpg/1200px-ATMEGA328P-PU.jpg
http://www.digital-circuitry.com/IMAGES/webpage/MyLAB/Z80_DATA_BUS.jpg
http://www.digital-circuitry.com/IMAGES/webpage/MyLAB/Z80_ADDRESS_BUS.jpg

---

# Machine Language, Assembly, High Level Language

http://oldcomputers.net/altair-8800.html
https://www.computerhope.com/jargon/p/punccard.htm

---

# Recap: How do computers actually _do_ things?

http://jayakarthigeyan.blogspot.com/2014/08/fire-alarm-using-arduino.html
Input:
Sense things -> digitize -> send to input line
Do things    -> read output -> decode -> send to real word (motors, speakers, etc)

---

# Start Learning Forth Now

# Lab Setup
   * Terminal
   * Text editor
   * Check that all the expected words are there
   * Install a "whoops" marker
   * Talk about lecture/lab format

# Hello, World!
  * LAB: `." Hello, world!"`
# Basic Math
  * LAB: 3rd grade math class
# The Stack
http://www.alcula.com/calculators/rpn/

   * LAB: `.s`, `.` and the stack
   * LAB: RPN, `+`, `-`, `dup`, `swap`
# I/O
   * LAB: "Hello, {{ name }}"
   * LAB: "It's over {{ 9000 }}"
# -------
   * LAB: `words`
   * LAB: Create your own words `: add2 2 + ; words`
   * LAB: Redefine a word
   * LAB: Create a new marker
   * LAB: Create a constant
   * LAB: Create a variable
   * LAB: Read a variable
   * LAB: Create a `FOO+!` word
   * LAB: Create a `FOO@` word
   * LAB: Can/Can't drink beer
   * LAB: 3 2 1 blastoff
   * LAB: Blink
   * LAB: Push to blink
   * LAB: PWM write
   * LAB PWM read
   * LAB: Fire alarm

# Next steps (part II?)
 * "big" Forths
 * Execution tokens
 * Vectored execution
 * Compile vs. interpret
 * inner vs. outter interpreter
 * Defining words
 * Tasks
 * Vocabularies
 * Dictionary structure
 * recursion
 * Stephen's Book
