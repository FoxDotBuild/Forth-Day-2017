Shopping List:
 - [ ] [Clicker](https://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=presentation+clicker)
 - [ ] [STK500](https://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=STK500&rh=i%3Aaps%2Ck%3ASTK500)

Supply List:
 - Arduino Class Case (already at Fox.Build)
 - AV Streaming equipment (Pat?)

TODO:
 - [ ] Internal dry runs (Shane, Tim, Ethan)
 - [ ] YouTube streaming dry run
 - [ ] Improve meetup description ASAP
 - [ ] before, during, after reviews
 - [ ] Prepare / flash arduino boards
 - [ ] Draw "slide covers" because walls of text are awful

INTENDED AUDIENCE:
 * A 12 year old capable of installing and running basic text editor and serial terminal.

BY THE END OF THE COURSE, STUDENTS SHOULD BE ABLE TO:
 * Create a variable
 * Create a word that
    - reads a variable
    - writes a variable
    - performs conditional execution
    - iterates
    - Writes GPIO (digital)
    - Writes GPIO (pwm)
    - Reads GPIO (digital)
    - Reads GPIO (pwm)

POSSIBLE PROJECTS:
    - Smoke alarm? (light detector, buzzer)

COURSE DISCUSSION
# Group Intros / show of hands type stuff.
# History
# Advantages
# Cool Stuff
 * GA 144
# Light Weight
 * GC
 * Floats
 * Types
# Course Format Explaination
 * Setup
   * Terminal
   * Text editor
   * Check that all the expected words are there
   * Install a "whoops" marker
   * Talk about lecture/lab format
 * What is a computer, really?
   * Examples
     * Graphing calculator
     * Thermostat (bring one in and run it as an example)
     * Fire alarm
   * instructions, processor, memory, registers
     * Thinking in symbols
       * Machine language, assembly language, high level language
     * Fetch, decode, execute
     * Run Easy6502 or cardiac example?
     * jump, add, sub, read, write
   * Input, output, interrupts
 * Computer numbering systems.
   * Bits, nibbles, bytes, floats
 * Boolean logic
   * True, false, AND, OR, XOR, NOT, etc
 * Forth
   * History
   * Advantages
     * Only language that can be fully comprehended after 1 year of use
     * Easy to implement
   * Uses?
     * Real world users
   * Explain "low floor, high ceiling"
   * Forth vs. other languages
   * LAB: `." Hello, world!"`
   * LAB: "Hello, {{ name }}"
   * LAB: "It's over {{ 9000 }}"
   * LAB: Create a marker `poof!` (more later)
   * LAB: `.s`, `.` and the stack
   * LAB: RPN, `+`, `-`, `dup`, `swap`
   * LAB: `words`
   * LAB: Create your own words `: add2 2 + ; words`
   * LAB: Redefine a word
   * LAB: Create a new marker
   * LAB: Create a constant
   * Pointers and memory management
     * LAB: Create a variable
     * LAB: Read a variable
     * LAB: Create a `FOO+!` word
     * LAB: Create a `FOO@` word
   * CONDTIONALS
     * LAB: Can/Can't drink beer
   * LOOPS
     * LAB: 3 2 1 blastoff
 * Forth, meet arduino
   * pin layout
   * memory layout
   * interupts
   * PIN, PORT, DDRs
     * Maybe I will pre-flash a library for this one
   * LAB: Blink
   * LAB: Push to blink
   * LAB: PWM write
   * LAB PWM read
   * LAB: Fire alarm
 * Next steps (part II?)
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
