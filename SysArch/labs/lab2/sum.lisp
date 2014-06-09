; cs eid: aj326
; name: ahmed24633
(! code
   '(init
     (irmovl Stack %esp)
     (irmovl Stack %ebp)
     (call main)
     (halt)

    ;linked list
    (align 4)
    ele1
    (dword 7)
    
    (dword ele2)
    ele2
    (dword 12)
    
    (dword ele3)
    ele3
    (dword 17)
    
    (dword 0); skipping this
   end

  main
  (pushl %ebp)
  (rrmovl %esp %ebp)
  (irmovl ele1 %edx)

  (pushl %edx)
  (call sum)
  (rrmovl %ebp %esp)
  (popl %ebp)
  (ret)

 sum
 (pushl %ebp)
  (rrmovl %esp %ebp)
  (mrmovl 8(%ebp) %ecx)
  (xorl %eax %eax) ; eax = 0 ... eventually result
  (andl   %ecx %ecx) ; ll bigger than 0
  (je done)

loop
 (mrmovl 0(%ecx) %esi) ;element value
 (addl %esi %eax) ;store in eax
 (irmovl 4 %ebx) ; pointer++
 (addl %ebx %ecx) ; next pnt
 (mrmovl 0(%ecx) %esi) ; pnt value

 (irmovl 4 %ebx) ; pointer++
 (addl %ebx %ecx) ; next pnt
 (andl %esi %esi)
 (jne loop)
done
 (rrmovl %ebp %esp)
 (popl %ebp)
 (ret)

(pos 500)
 Stack
))

















(y86-prog (@ code))                   ; Code OK?

(! location 0)
(! symbol-table
(hons-shrink-alist
(y86-symbol-table (@ code)        ; The sum-1-to-n program
                      (@ location)    ; Beginning program location
                      'symbol-table)  ; Name of this symbol table
    'shrunk-symbol-table))            ; Name of reversed, compressed symbol table


(! init-mem
   (hons-shrink-alist
    (y86-asm (@ code)          ; The same, sum-1-to-n program
             (@ location)      ; Same beginning program location
             (@ symbol-table)  ; The contents of our symbol table
             'sum-1-to-n)      ; Name of the assembler output
    'shrunk-sum-1-to-n))       ; Name of reversed, compressed assembler output


(! init-pc 0)
(! y86-status nil)   ; Initial value for the Y86 status register

(init-y86-state
 (@ y86-status)  ; Y86 status
 (@ init-pc)     ; Initial program counter
 nil             ; Initial registers, if NIL, then registers set to zero
 nil             ; Initial flags, if NIL, then flags set zero
 (@ init-mem)    ; Initialize memory with the assembler output
 x86-32)

(y86 x86-32 100)                 ; Step ISA 100 steps or to HALT
(m32-get-regs-and-flags x86-32)  ; Show the registers
