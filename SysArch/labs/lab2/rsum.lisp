;Ahmed AlJehairan
;aj326
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
    
    (dword 0)
   end

; get first element
  main
  (pushl %ebp)
  (rrmovl %esp %ebp)
  (irmovl ele1 %ebx)
  (pushl %ebx); LL pushed
  (irmovl 20 %edx); esp displacement
  (irmovl 8 %esi)
  (call rsum)
  (rrmovl %ebp %esp)
  (popl %ebp)
  (ret)
 
 rsum
  (pushl %ebp)
  (rrmovl %esp %ebp)
  (pushl %ebx); elements' addresses
  (subl %edx %esp); make space for sum
  (mrmovl 8(%ebp) %ebx); get element
  (irmovl 0 %eax); result = 0
  (andl %ebx %ebx); pointer to next element ==0
  (je done)
  (mrmovl 4(%ebx) %eax)
  (rmmovl %eax 0(%esp)); store next element on top
  (call rsum)
  ;(mrmovl 0(%eax) %eax)
  (mrmovl 0(%ebx) %edi)
  (addl %edi %eax)
  
  

 done
   (addl %edx %esp)
   (popl %ebx)
   (popl %ebp)
   (ret)

(pos 1000)
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
 x86-32          ; Name for the entire Y86 processor state
 )
 
 (m32-get-regs-and-flags x86-32)   (y86 x86-32 1)
 