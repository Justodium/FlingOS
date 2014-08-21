﻿; BEGIN - Paging

method_System_Void_RETEND_Kernel_Paging_DECLEND_EnablePaging_NAMEEND___:

push dword ebp
mov dword ebp, esp

mov eax, Page_Directory
mov cr3, eax
mov eax, cr0
or eax, 0x80000000
mov cr0, eax

jmp method_System_Void_RETEND_Kernel_Paging_DECLEND_EnablePaging_NAMEEND___.Cont

method_System_Void_RETEND_Kernel_Paging_DECLEND_EnablePaging_NAMEEND___.Cont:

pop dword ebp

ret



method_System_UInt32__RETEND_Kernel_Paging_DECLEND_GetPageDirectoryPtr_NAMEEND___:

push dword ebp
mov dword ebp, esp

mov dword [ebp+8], Page_Directory

pop dword ebp

ret
method_System_UInt32__RETEND_Kernel_Paging_DECLEND_GetFirstPageTablePtr_NAMEEND___:

push dword ebp
mov dword ebp, esp

mov dword [ebp+8], Page_Table1

pop dword ebp

ret
method_System_UInt32__RETEND_Kernel_Paging_DECLEND_GetUSBPageTablePtr_NAMEEND___:

push dword ebp
mov dword ebp, esp

mov dword [ebp+8], Page_Table_USB

pop dword ebp

ret
method_System_UInt32__RETEND_Kernel_Paging_DECLEND_GetKernelPageTablePtr_NAMEEND___:

push dword ebp
mov dword ebp, esp

mov dword [ebp+8], Page_Table_Kernel

pop dword ebp

ret



method_System_UInt32__RETEND_Kernel_Paging_DECLEND_GetKernelMemStartPtr_NAMEEND___:

push dword ebp
mov dword ebp, esp

mov dword [ebp+8], Kernel_MemStart

pop dword ebp

ret
method_System_UInt32__RETEND_Kernel_Paging_DECLEND_GetKernelMemEndPtr_NAMEEND___:

push dword ebp
mov dword ebp, esp

mov dword [ebp+8], Kernel_MemEnd

pop dword ebp

ret


align 4096
Page_Directory: TIMES 1024 dd 0
Page_Table1: TIMES 1024 dd 0
Page_Table_USB: TIMES 1024 dd 0
Page_Table_Kernel: TIMES 196608 dd 0

Kernel_MemEnd:


align 0x1000
BootPage0: times 1048576 dd 0

align 0x1000
BootPageDirectory: times 1024 dd 0


; END - Paging