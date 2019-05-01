r :PILOTZ tutorial

*interactive
ch:
t :
  :                     INTERACTIVE MODE COMMANDS
  :
  :       BYE       DELETE    DIR       EDIT      HELP    INSERT
  :       LIST      LOAD      MEM       NEW       RUN     SAVE
  :       TRACE     VARS
  :
th:       Enter choice, or X to exit this menu: 
a :
m :x
ey:
m :by,de,dir,ed,he,in,li,lo,me,ne,ru,sa,tr,va
um:bye,delete,dir,edit,help,insert,list,load,mem,new,run,save,trace,vars
j :*interactive

*bye
ch:
t :
  :  BYE
  :
  :   This command exits the interpreter back to the Operating System.
  :   If the current program has not been saved it will be lost,
  :   no questions asked!
  :
th:  Press any key...
i :
e :

*delete
ch:
t :
  :  DELETE [n1]-[n2]
  :
  :   Delete lines from n1 to n2 inclusive.
  :   * If n1 is omitted, lines are erased from the beginning up to and
  :     including the line n2.
  :   * If n2 is omitted, lines are erased from n1 up to the end of the program.
  :   At least one line must be specified.
  :
  :  Examples:
  :
  :   DELETE 5-10
  :   DELETE 20-
  :   DELETE -10
  :   DELETE 8
  :
th:  Press any key...
i :
e :

*dir
ch:
t :
  :  DIR [filespec]
  :
  :   This command displays the disk directory. If filespec is not specified,
  :   *.* is assumed.
  :
th:  Press any key...
i :
e :

*edit
ch:
t :
  :  EDIT n
  :
  :   Edit (replace) the specified line. The old line is printed on the
  :   terminal and the program prompts for a new replacement one.
  :
th:  Press any key...
i :
e :

*help
ch:
t :
  :  HELP or ?
  :
  :   Display the names of available immediate mode commands.
  :   A question mark can be used as a shortcut for the HELP command.
  :
th:  Press any key...
i :
e :

*insert
ch:
t :
  :  INSERT n
  :
  :   Switch to program input mode and insert lines at the specified position.
  :
th:  Press any key...
i :
e :

*list
ch:
t :
  :  LIST [n1]-[n2]
  :
  :   List program lines from n1 to n2 inclusive.
  :   * If n1 is omitted, the program is listed starting from the first line.
  :   * If n2 is ommited, the program is listed starting from that line up to the
  :     last one.
  :   * To list a single line, just specify its number without the dash.
  :   * To list the full program, enter the command with no arguments.
  :
  :  Examples:
  :
  :   LIST 10-20
  :   LIST -20
  :   LIST 100-
  :   LIST
  :   LIST 8
  :
  :  To pause the display use Ctrl-S, resume with Ctrl-Q. To end the listing
  :  use Ctrl-C.
  :
th:  Press any key...
i :
e :

*load
ch:
t :
  :  LOAD filename
  :
  :   Load file from disk. Any previous program in memory is lost. If no
  :   extension is specified, .PLT is assumed.
  :
th:  Press any key...
i :
e :

*mem
ch:
t :
  :  MEM
  :
  :   Show the amount of memory used by program and variables, as well as the
  :   available free space.
  :
th:  Press any key...
i :
e :

*new
ch:
t :
  :  NEW
  :
  :   Erase old program and switch to program input mode. Use Ctrl-C to switch
  :   back to immediate mode.
  :
th:  Press any key...
i :
e :

*run
ch:
t :
  :  RUN [n]
  :
  :   Execute program from the beginning, or from line n if specified. All
  :   variables are erased prior to execution.
  :
  :   Program execution can be aborted at any time with Ctrl-C.
  :
th:  Press any key...
i :
e :

*save
ch:
t :
  :  SAVE filename
  :
  :   Save the program to a disk file with the specified name. If no extension
  :   is specied, .PLT will be added.
  :
th:  Press any key...
i :
e :

*trace
ch:
t :
  :  TRACE [n]
  :
  :   Trace program execution, starting from the beginning or from line n if
  :   specified. Similar to RUN, but lines are printed on the terminal prior to
  :   execution.
  :
th:  Press any key...
i :
e :

*vars
ch:
t :
  :  VARS [%]
  :
  :   This command displays the current defined variables and their values.
  :   If the % character is specified, then the system variables will be
  :   displayed as well.
  :
th:  Press any key...
i :
e :


*interpreter

*cmdline
ch:
t :
  :  PILOTZ can be invoked from the CP/M program prompt like this:
  :
  :    PILOTZ
  :
  :     or
  :
  :    PILOTZ filename
  :
  :  In the first case, PILOTZ enters the interactive mode, where
  :  commands lo load, save, edit and run pilot programs can be entered.
  :  If a filename is specified, the intepreter loads and run the program
  :  without going into the interactive mode. When the program finishes,
  :  PILOTZ automatically exits to the operating system.
  :
th:  Press any key...
i :
e :

*labels

*varsubst

*escapechars

*expressions

*sysvars

