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
 * Focus will be Arduino, but the concepts apply to all computers and languages.
   * Intentionally focusing on small / old comuters to reduce conceptual load
 * There will be A few lab experiments.

---
# History

 * Chuck Moore
 * First Forth projects
 * Rise of popularity in the early 80's
 * Forth today

---

# Common Use Cases for Forth

 * Firmware
 * Resource constrained applications
 * Firmware
 * And occasionally Firmware

---

# Advantages

 * Even the tiniest devices can run Forth- easily ported to new systems.
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
 * Compiled *and* interpreted!

---

# The Computer We Will Use Today

http://www.microchip.com/wwwproducts/en/ATmega328P

---

# Detour: What _is_ A Computer, Really?

 * Processor
 * Memory
 * Input lines
 * Output lines
 * Other lines (power, reset, clock, etc.)

http://cs-alb-pc3.massey.ac.nz/notes/59304/l15.html

---

# What Is Memory?

A computer must "remember" the data it is working with.

Memory is like a **spreadsheet for integers**. Memory has many *addresses* that hold *values*.

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

# Symbols and Signals

Computers require **symbolic thinking**.

|Instead of...|Let's say...|
|---	|---	|
| A| 65|
| 65| 1011|
|1011|high, low, high, high|
|high, low, high, high| A|

At a low level, **Computers _only_ understand numbers**!

All concepts must be symbolized as numbers or sequences of numbers to be useful.

---

# What Is a Processor?

Performs calculations and actions using contents of memory.

Example: Read address, write address, **execute address**.

We will come back to this in a moment.

---

# What About Input / Output Lines?

Convert voltage fluctuations to numbers which are usually stored in memory.

That's it. Keyboards, monitors, WiFi cards all work like this.

https://sites.google.com/site/lofturj/cwreceive

What's going on inside the chip?

---

# What Just Happened?

1. Computer senses an incoming signal
2. Computer stores signal value in a memory address
3. Computer processes the value, often storing the result in a new address
4. Computer writes to certain special addresses, that cause signals to be sent back out (output)

---

# More Examples of I/O Operations

Memory operations in the old days: https://www.youtube.com/watch?v=vAhp_LzvSWk

---

# Programming Languages

 * Now that we understand the hardware, let's focus on human computer interaction.
 * Any questions on what we've covered so far?
 * We will cover machine language and assembly, but only to the extent needed for Forth.

If you are a programmer, but have never worked in a language with manual memory management (C, C++, Forth, Rust, Fortran, etc.), some of these concepts will be new to you.

---

# Computer Languages and the "Instruction Cycle"

Remember when we said that *computers can only operate on numeric symbols?*

The processor follows this sequence, over and over:

1. **Fetch**: Get a value from a memory address.
2. **Decode**: Determine what the number _symbolizes_ (Read, Write, Jump, etc.)
3. **Execute**: Perform the operation. Ex: "Add contents of cell 1 and cell 2".
4. **Repeat**: This cycle is repeated continually. Some architectures feature a HALT instruction.

The lowest level computer language is *Machine Language*.

---

# Machine Language Example

No pneumonics. Can be directly placed into memory without any changes.

|Address |Instruction | Description |
|--- |--- |---|
|0 |00000001 | Turn pin 1 (connected to LED bulb) on |
|1 |00000010 | sleep for 2 seconds |
|2 |00000001 | Turn pin 1 off |
|3 |00000010 | If pin2 is off, skip next line |
|4 |00000000 | Halt |
|5 |01010101 | Jump to address 0 |

Real world example: https://www.computerhope.com/jargon/p/punccard.htm

Credit: https://chortle.ccsu.edu/java5/Notes/chap04/ch04_4.html

---

# Assembly Language

One up from machine language is _assembly language_.

Like machine language, it has a one-to-one correspondence to the computer's instruction codes.

Unlike machine language, it uses pneumonic based (human readable) codes to represent each instruction.

An _assembler_ is required to translate a pneumonic code to machine language.

**NEXT:** See an arcade game written in assembly.

---

# Snake Game Written in Assembly

 * Someone wrote a [snake arcade game](https://fukuchi.org/works/shortshort/6502snake/snake.html) using 6502 assembly.
 * Move the snake via `W, A, S, D` keys
 * Be sure to see the "notes" section.

---

# High Level Languages (HLLs)

 * Still need to exist as machine language, but do so without a 1-to-1 correspondence to machine language.
 * Can use concepts that are easier for _humans_ to understand.
   * Can use words instead of numbers.
   * Don't always need to think in terms of memory addresses and data lines.

```
set myUrl to "http://google.com"
display dialog myUrl
```

---

# Recap

 * Numbers can represent real data (values) or a symbol representing an instruction.
 * The real world interacts with software by sending signals to input lines, causing changes to values in memory.
 * Software interacts with the real world by sending signals to output lines.

---

# Start Learning Forth Now

---

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
