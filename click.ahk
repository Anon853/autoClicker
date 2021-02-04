﻿#SingleInstance,Force
#MaxThreadsPerHotkey,3
SetMouseDelay,-1
SetBatchLines,-1

	Numpad1::
		if(!Go){
			Start_Time:=A_TickCount
			Click_Count:=0
		}
		Go:=!Go
		While(Go)
		{
			Click,
			Click_Count++
		}
		Total_Time:=(A_TickCount-Start_Time)/1000
		ToolTip,% "You clicked " Click_Count " times in " Total_Time " seconds."
		return
		
	Numpad2::
		Start_Time:=A_TickCount
		Click_Count:=0
		Stop:=0
		Loop
		{
			if(Stop=1)
				break
			Click,
			Click_Count++
		}
		Total_Time:=(A_TickCount-Start_Time)/1000
		ToolTip,% "You clicked" Click_Counter " times in " Total_Time " seconds."
		return
		
		Numpad3::
			Stop:=1
			return
			
	*^Esc::ExitApp
	