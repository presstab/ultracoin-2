Dim fso
Set fso = WScript.CreateObject("Scripting.Filesystemobject")
Set logfile = fso.CreateTextFile("c:\users\gamer\desktop\output.txt", True)


Dim algo
Dim user
Dim userpass
Dim scantime
Dim url
Dim avx
Dim threads
Dim minewithcpu
Dim retries
Dim UTCAddr

Set objArgs = Wscript.Arguments

For i = 0 to objArgs.Count - 1
    Select Case objArgs(i)
        case "--algo"
            algo = objArgs(i + 1)
            i = i + 1
        case "--user"
            algo = objArgs(i + 1)
            i = i + 1
        case "--userpass"
            userpass = objArgs(i + 1)
            i = i + 1
        case "--scantime"
            scantime = objArgs(i + 1)
            i = i + 1
        case "--url"
            url = objArgs(i + 1)
            i = i + 1
        case "--avx"
            avx = objArgs(i + 1)
            i = i + 1
        case "--threads"
            threads = objArgs(i + 1)
            i = i + 1
        case "--minewithcpu"
            minewithcpu = objArgs(i + 1)
            i = i + 1
        case "--retries"
            retries = objArgs(i + 1)
            i = i + 1
        case "--UTCAddr"
            UTCAddr = objArgs(i + 1)
            i = i + 1
        case else
            MsgBox "Error starting OneClick, invalid argument supplied. '" & objArgs(0) & "'", vbInformation
            WScript.Exit(1)
    End Select
    WScript.Echo "i: " & i
Next

logfile.WriteLine("algo: " + algo)
logfile.WriteLine("user: " + user)
logfile.WriteLine("userpass: " + userpass)
logfile.WriteLine("scantime: " + scantime)
logfile.WriteLine("url: " + url)
logfile.WriteLine("avx: " + avx)
logfile.WriteLine("threads: " + threads)
logfile.WriteLine("minewithcpu: " + minewithcpu)
logfile.WriteLine("retries: " + retries)
logfile.WriteLine("UTCAddr: " + UTCAddr)

Pause("Press <Enter> to continue")

sub Pause(strPause)
    WScript.Echo (strPause)
    Do While Not WScript.StdIn.AtEndOfLine
        Input = WScript.StdIn.Read(1)
    Loop
End sub
