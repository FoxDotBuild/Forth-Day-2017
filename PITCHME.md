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

# Dry Run Timer

Let's start that now.

---

# History

 * Chuck Moore
 * First Forth projects
 * Rise of popularity in the early 80's
 * Characteristics (procedural, concatenative, untyped)
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
 * If you can dodge a wrench, you can dodge a ball.

---

# How Does Forth Compare to X?

[This](http://hammerprinciple.com/therighttool/items/forth)

---

# Forth Minimalism

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

Not (easily) human readable. Can be directly placed into memory without any changes.

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

 * With the exception of firmware developers, this is what everyone uses today (C, Java, etc.)
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

We now have enough understanding of the hardware to move forward.

Any questions about hardware before we continue?

---

# Lab Setup

 * Terminal
 * Text editor
 * Check that all the expected words are there
 * Install a "whoops" marker
 * Talk about lecture/lab format

---

# Funny Calculators in Math Class

Let's [do some math](http://www.alcula.com/calculators/rpn/)

 * Actually called the "data stack", since it is not the only stack.
 * You never need parenthesis.
 * Copy/pasting code between locations is easier.
 * The Stack is not an abstraction on most architectures. It exists on "bare metal".
 * It's easy to go backwards or "backtrack" your work.

**NEXT:** Let's do math in Forth

---

# Exercise: Basic Math

 * Use the enter key to "push" a new number on the stack. Use spaces as a delimiter.
   * `1 2 3 <enter>`
 * Use the period character to "pop" the top off the stack and view it. (`.`)
   * `4 5 6 . . .` prints `6 5 4`
 * Perform math via `+`, `-`, `*`, and `/` (integer division only)
   * 2 + 2 is `2 2 + .` in forth

---

# More About (FIFO) Stacks

[diagram](https://www.cs.cmu.edu/~adamchik/15-121/lectures/Stacks%20and%20Queues/Stacks%20and%20Queues.html)

 * First in, first out.
 * The primary data structure in Forth.

---

# The Serial Line

 * Interactive programming and debugging
 * Easier setup because you don't need complicated "tool chains" or cross compilers.
 * Everything resides on the host.
 * Most systems are case insensitive (not ours).

---

# LAB: Mandatory "Hello, World!"

In forth, functions and methods are called "words"-
reusable sequences of code. Let's make our `Hello, world!` code more DRY*

 * The space between `."` and `Hello` is significant!

```
\ Backslash is a comment in Forth
\ Defines a new "dictionary entry" of `hello`.
: hello
  \ Print to serial line
  ." Hello, world!"
;
```

---

# How many words are there?

See a list of words by using the `words` word.

You can enter a search term after `words`. Ex: `words "` returns `."`

---

# Markers and The Dictionary

 * Dictionary: A linked list of word definitions.
 * Markers: Set a "bookmark" in the dictionary when you need to reqind.

---

# Naming Rules

 * All characters except space and carriage return are legal in Forth word names.
 * You will see words with symbols in them frequently. Eg: `.`, `!`, `@`.

---

# Lab: Add6 Word

**SCENARIO:** You find yourself adding the number 7 to other numbers very often.

```

: add7 7 + ;
12 add7 \ Pushes `19` on stack.

```

---

# Stack Juggling

 * Sometimes, the stack is not in the order you want.
 * Some words can "rearrange" the stack:

|word|effect|hint|
|--- |--- |--- |
|`SWAP`|A B -> B A||
|`ROT`|A B C -> B C A|(rotate)|
|`OVER`|A B -> A B A||
|`TUCK`|A B -> B A B||
|`DUP`|A -> A A||

Let's try these now.

---

# Comparisons and Flags

 * `=`, `<`, `>`, `<>`
 * 0 is `true`
 * Nonzero (usually -1) is `false`

---

# ...IF...ELSE...THEN...

Forth has flow control, like every other language.

```

: 7?
  7 = IF
    ." IT IS 7!"
  ELSE
    ." NOPE!"
  THEN ;

```

**LAB:** What do `7 7?` and `8 7?` print?
**TODO** Age calculator app

---

# Stack Comments

 * Without documentation, things get hard to read.
 * Luckily, we have [standards](https://forth-standard.org/standard/notation#subsection.2.2.2) for this stuff.

---

# More About Words

 * Words can be redefined
 * Words must be defined before they can be used
 * FUN FACT: You could theoretically create words for numbers like `7`, but don't do that.

---

# Loops

```

  begin <CODE_TO_EXECUTE> <TEST_CONDITION> until

```

---

# Example: Launch Timer

```
: second 1000 * ms ;
: speak ( n -- n ) dup 1 second drop ;
: decrement 1 - ;
: less_than_zero? 0 < ;
: blastoff! ." Blastoff!" ;
: countdown ( n -- )
  begin
    speak
    decrement
    dup             \ Copy value for next loop
    less_than_zero?
  until ;

: launch ( n --- ) countdown blastoff! ;

```

---

# Variables

---

---
# Not Covered

 * `RECURSE`
 * `BEGIN`
 * `WHILE`
 * `AGAIN`
 * `UNTIL`
 * `REPEAT`

---

# I/O
   * LAB: "Hello, {{ name }}"
   * LAB: "It's over {{ 9000 }}"

# -------

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
 * Pictured Numeric Input
