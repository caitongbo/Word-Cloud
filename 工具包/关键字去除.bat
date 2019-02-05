@echo off&setlocal enabledelayedexpansion
for %%i in (1 2 3 4 5) do (
  (for /f "delims=" %%a in (1.txt) do (
    set "str=%%a"
    for %%b in (: / a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 ) do set "str=!str:%%b=!"
    echo,!str!
  ))>tmp
  move /y tmp "1.txt"
)