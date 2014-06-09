; cs id: aj326
; name Ahmed AlJehairan

(! code
 '(init
         (irmovl Stack %esp)
         (irmovl Stack %ebp)
         (call main)
         (halt)

         ;data chuncks
         (align 4)
         ; Source block
         src
         (dword 1)
         (dword 2)
         (dword 3)
         (dword 4)
         (dword 5)
         (dword 6)
         (dword 7)
         (dword 8)
         ; Destination block
         dest
        (dword 111)
        (dword 222)
        (dword 333)
        (dword 444)
        (dword 555)
        (dword 666)
        (dword 777)
        (dword 888)
        end

        main
        (pushl %ebp)
        (rrmovl %esp %ebp)
        (irmovl src  %edx)
        (irmovl dest  %esi)
        (irmovl 8 %ecx)
        (pushl %edx)
        (pushl %esi)
        (pushl %ecx)

        (call copy)
        (rrmovl %ebp %esp)
        (popl %ebp)
        (ret)

        copy
        (pushl %ebp)
        (rrmovl %esp %ebp)

        (mrmovl 16(%ebp) %edx);  src
        (mrmovl 12(%ebp) %esi); dest
        (mrmovl 8(%ebp) %ecx); len
        (andl   %ecx %ecx); len == 0?
        (je done)


        loop
        (irmovl 4 %ebx);
        
        (mrmovl 0(%edx) %edi) ;src value
         
        (addl %ebx %edx); src++

        (rmmovl %edi 0(%esi)) ;dest val = src val
        
        (addl %ebx %esi) ; dest++

        (xorl %edi %eax)
	
	(irmovl 1 %ebx);
        
        (subl %ebx  %ecx)
        (jg loop)

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

(y86 x86-32 1000)                 
(m32-get-regs-and-flags x86-32)
