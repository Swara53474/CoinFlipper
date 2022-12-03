::Head Declarations 
@echo off
color a
title Coin Flip

::home
:home
cls
echo.
echo -------------------------------- COIN FLIPPER --------------------------------
echo.
echo 1) Flip a Coin
echo 2) Help
echo 3) Quit
echo.
echo ------------------------------------------------------------------------------

set /p input=:
if %input% EQU 1 (
    goto flip
) else if %input% EQU 2 (
    goto help
) else if %input% EQU 3 (
    goto quit
) else (
    echo Invalid Input.
    echo Please try again.
    pause
    goto home
)


::flip-a-coin part
:flip
cls
echo.
echo -------------------------------- COIN FLIPPER --------------------------------
echo.
set /a rand_num=%random% %%101 
if %rand_num% LSS 50 (
    echo                                    HEADS
) else (
    echo                                    TAILS
)
echo.
echo ------------------------------------------------------------------------------

pause
set /p choice=Do you want to flip again?(y/n)
if %choice% EQU y (
    goto flip
) else if %choice% EQU n (
    goto home
) else (
    echo Invalid Input.
    echo Please try again.
    pause
    goto home
)

::help
:help
cls
echo This is a simple Coin-Flip program.
echo The probability of getting heads or tails is 50/50
timeout 12
goto home


::quit
:quit
cls
echo Sad to see you go.
echo Be back soon.
pause
exit