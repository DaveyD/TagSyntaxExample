
	FUNC testFunc(arg1, arg2)
	int i, j, k
	string s, m
	boolean b
	real r
	pointer p

		; This is a comment
		; Here are some sample pieces of code
		
		i := 1
		if i = 1 then i := 3
		
		s := "David"
		if s = "David" then
			for i := 0 to len(s) do 0
		end if
		
		p := addr activetext()
		pos := 0
		while pos < len(p^) do
			pos := nextPage(pos, p^)
		end while
		
		msg "This is a message"

	END FUNC

	Func Starter()
	string dlg, s

		tTestReg12()

		dlg := "Dlog HEB ti='Searches' NM box=100\
			it st=d bo=80,100 la='בחר קובץ החיפושים',3\
			it st=p co=2 bo=35 la='אישור',1, 'צא',2"
			
		Dialog "Start_Searcher" Template dlg visible
		SetDlgScript(Start_Searcher, 1, "run file \"Searches.prg\" func \"f\"")
		SetDlgScript(Start_Searcher, 2, "Close Start_Searcher")
		SetDlgScript(Start_Searcher, 3, "run file \"Searches.prg\" func \"FileList\"", "drop")
		GetIniFile()
		if (s:=GetFileString("Searches_", "FileName", INI)) then \
			SetDlgText(Start_Searcher, 3, s)
	END FUNC
