# iTop-privesc
# A privilege escalation vulnerability I found in the iTop VPN client software. Also my first 0Day


The vulnerability resides in the recommended tab of the client software. If you install another software through the client (the video shows the screen recorder as an example), another user can execute code on behalf of the user installing the new software. 
Since the client can only be run with administrative privileges, this always leads to privilege escalation.

Due to the fact, that the executable responsible for the installation is placed in a world writable path (c:\ProgramData\iTop VPN\Downloader\vpn6), and, that executables always look for their required DLLs in the same path they reside in before ,moving on to the actuall path they reside in(DLL Hell), any user can place a maliciously crafted DLL with the name TextShaping.dll in the same path as the executable, and get code execution.

I have chained this exploit with a commonly used UAC bypass, to ensure the highest possible privileges. (http://blog.sevagas.com/?Yet-another-sdclt-UAC-bypass)

I appoligize for the bad video quality. I open a new command promt as a low privilege user using runas which I use to execute the exploit.bat with the DLL as the first argument.
In the end you can sort of see, that the calculator is being run by the user in the task manager. 

[https://github.com/user-attachments/assets/0bd6eaf2-30ed-464f-9072-d5593487f912](https://github.com/user-attachments/assets/79ed72e0-5fcb-4501-abb9-2ce860d7627b)
