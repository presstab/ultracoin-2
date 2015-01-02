' OneClick Miner Example
' Copyright 2014 Ultracoin.net

'
' These values are passed through WSCript.Arguments
'
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


'
' loop through start parameters
'
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
        case "--UTCAddr"
            UTCAddr = objArgs(i + 1)
            i = i + 1
        case else
            MsgBox "Error starting OneClick, invalid argument supplied. '" & objArgs(0) & "'", vbInformation
            WScript.Exit(1)
    End Select
    WScript.Echo "i: " & i
Next

WScript.Echo("algo: " + algo)
WScript.Echo("user: " + user)
WScript.Echo("userpass: " + userpass)
WScript.Echo("scantime: " + scantime)
WScript.Echo("url: " + url)
WScript.Echo("avx: " + avx)
WScript.Echo("threads: " + threads)
WScript.Echo("minewithcpu: " + minewithcpu)
WScript.Echo("retries: " + retries)
WScript.Echo("UTCAddr: " + UTCAddr)

