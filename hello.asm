; Compile, link and run executable: nasm -f elf hello.asm && ld -m elf_i386 -s -o hello hello.o && ./hello

global  _start
section .text
_start:
        mov edx, 12
        mov ecx, star
        mov ebx,1
        mov eax,4
        int 0x80

        mov edx, 1
        mov ecx, nl
        mov ebx,1
        mov eax,4
        int 0x80

        mov edx,len
        mov ecx,msg
        mov ebx,1
        mov eax,4
        int 0x80

        mov edx, 12
        mov ecx, star
        mov ebx,1
        mov eax,4
        int 0x80

        mov edx, 1
        mov ecx, nl
        mov ebx,1
        mov eax,4
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, userInput
        mov edx, lenUserInput
        int 0x80

        mov eax, 3
        mov ebx, 2
        mov ecx, num
        mov edx, lenUserInput
        int 0x80

        mov eax, 4,
        mov ebx, 1
        mov ecx, displayMessage
        mov edx, lenDisplayMessage
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, num
        mov edx, 5
        int 0x80

        mov eax,1
        int 0x80

section .data
msg db 'Hello world', 0xa
len equ $ - msg
star times 12 db '*'
nl db '', 0xa
userInput db 'Please enter a number: '
lenUserInput equ $ - userInput
displayMessage db 'You have entered: '
lenDisplayMessage equ $ - displayMessage

section .bss
num resb 5
