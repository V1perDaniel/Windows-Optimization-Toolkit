;=== if app is x64.. use this.
${SegmentFile}
${Segment.OnInit}
	System::Call "kernel32::GetCurrentProcess()i.s"
	System::Call "kernel32::IsWow64Process(is,*i.r0)"
	StrCmp $0 0 +2
	SetRegView 64
!macroend

;=== If app is x32, disable redirection for that key.
${SegmentPrePrimary}
	SetRegView 64
		SetRegView LastUsed
!macroend

${SegmentPostPrimary}
	SetRegView 64
	DeleteRegKey /IFEMPTY HKLM `SOFTWARE\Microsoft\Tracing\DriverEasy_RASAPI32`
        DeleteRegKey /IFEMPTY HKLM `SOFTWARE\Microsoft\Tracing\DriverEasy_RASMANCS`
        DeleteRegKey /IFEMPTY HKLM `SOFTWARE\Microsoft\Tracing\EnableConsoleTracing`
        DeleteRegKey /IFEMPTY HKLM `SOFTWARE\Microsoft\Tracing`
	Pop $0
		SetRegView LastUsed
!macroend
