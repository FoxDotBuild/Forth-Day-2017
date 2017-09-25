# Welcome
# About Me
# About You
 * Experience Levels
 * Backgrounds
 * Goals
# History
# Common Use Cases for Forth
# Advantages
 * Can be easily ported to new systems / platforms
# Cool Stuff
 * GA 144
 * Bubble
 * Fignition
 * Satellite stuff
 * Various "hobby forths"
# Why Bother?
 * Low level concepts are easier to understand
 * Makes you a better programmer
 * The only language a developer can _completely_ understand quickly.
 * It's fun!
# Minimalism
 * No GC.
 * No Floats.
 * No Types.
# Course Format Explanation
 * Setup
   * Terminal
   * Text editor
   * Check that all the expected words are there
   * Install a "whoops" marker
   * Talk about lecture/lab format
# Minimal Computers
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
