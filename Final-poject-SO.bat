@echo off


@REM ================ Inacabados Reboot e :drive_hard ===========================
mkdir Bac

set turma=SO223
Title %turma%: %username%
:Main
    cls
    color 7
    echo ####################################################### 
    echo #                                                     #
    echo #                                                     #
    echo #       TERMINAL DE ADMINISTRACAO DE %turma%            #
    echo #                                                     #
    echo #                  DATA: %date%               #
    echo #                                                     #
    echo ####################################################### 
    echo #                                                     #
    echo #              Escolha uma das Opcoes:                #
    echo #                                                     #
    echo #                 1. Ficha Tecnica                    #
    echo #                 2. Gestao Corrente                  #
    echo #                 3. Gestao de Processo               #
    echo #                 4. Gestao de Memoria                #
    echo #                 5. Gestao de Disco                  #
    echo #                 6. Sair                             #
    echo #                                                     #
    echo ####################################################### 
    echo. 
    set /p OP=%turma%-TP1 # 

    IF %op% EQU 1 ( goto :Info)
    IF %op% EQU 2 ( goto :Ges_C)
    IF %op% EQU 3 ( goto :Tasks)
    IF %op% EQU 4 (
        taskmgr
        goto :Main
    )
    IF %op% EQU 5 ( goto :Gest_D)
    IF %op% EQU 6 ( goto :Exit) ELSE (
        echo.
        color 4
        echo Opcao invalida! !!!!
        echo.
        pause > nul
        goto :Main

    pause > nul
    )

:Info
    cls
    echo.
    echo                     ##############################################
    echo                     #     NOME                 #  CURSO          #
    echo                     # -------------------------+-----------------#
    echo                     # Saturnino Moreira Mendes #     ESI         #
    echo                     # Michelle Furtado         #     ESI         #
    echo                     # Damiao  de Pina          #     ESI         #
    echo                     ##############################################
    echo. 
    pause > nul
    GOTO :Main


:Ges_C
    cls
    color 7
    echo ####################################################### 
    echo #                                                     #
    echo #                   Gestao Corrente                   #
    echo ####################################################### 
    echo #                                                     #
    echo #              Escolha uma das Opcoes                 #
    echo #                                                     #
    echo #                 a- Listar informacoes do sistema    #
    echo #                 b. Listar drivers/hardware          #
    echo #                 c. Encerrar agora                   #
    echo #                 d. Programar enceramento            #
    echo #                 e. Reiniciar agora                  #
    echo #                 f. Programar reinicio               #
    echo #                 g. Voltar ao menu principal         #
    echo #                                                     #
    echo ####################################################### 
    echo. 
    set /p o=%turma%-TP1# 
    IF %o% EQU a ( GOTO :Sys_I )
    IF %o% EQU b ( GOTO :drive_hard )
    IF %o% EQU c ( GOTO :ShutD_0 )
    IF %o% EQU d ( GOTO :ShutD_P )
    IF %o% EQU e ( GOTO :Reboot_0 )
    IF %o% EQU f ( GOTO :Reboot_P )
    IF %o% EQU g ( GOTO :Main ) ELSE (
        echo.
        color 4
        echo Opcao invalida! !!!!
        echo.
        pause > nul
        goto :Ges_C
        pause > nul
    )

@REM  --------------------------  INICIO Funcoes so para SUBMENU de GESTAO CORRENTE -----------------------------

:Sys_I
    cls
    systeminfo
    echo.
    pause > nul
    goto :Ges_C

:drive_hard
    cls
    echo.
    echo Drives Instalados: 
    driverquery
    echo.
    pause > nul
    goto :Ges_C


:ShutD_0
    shutdown /p /f

:ShutD_P
    cls
    echo.
    set /p tempo=Tempo para encerar o pc: 
    shutdown /s /t %tempo%
    echo.
    msg * "Seu computador vai desligar daqui a %tempo% segundos!"
    pause > nul
    goto :Ges_C

:Reboot_0
    shutdown /r /t 0

:Reboot_P
    cls
    echo.
    set /p tempo=Tempo para encerar o pc: 
    shutdown /r /t %tempo%
    echo.
    msg * "Seu computador vai reiniciar daqui a %tempo% segundos!"
    pause > nul
    goto :Ges_C



@REM   --------------------  FIM Funcoes so para SUBMENU de GESTAO CORRENTE ------------------------------

:Tasks
    cls
    tasklist
    echo.
    pause 
    GOTO :Main

@REM -----------------------######### Para Gestao de Disco ################---------------------------------------

:Gest_D
    cls
    color 7
    echo ####################################################### 
    echo #                                                     #
    echo #                   Gestao de Disco                   #
    echo ####################################################### 
    echo #                                                     #
    echo #              Escolha uma das Opcoes                 #
    echo #                                                     #
    echo #               a. Listar particoes                   #
    echo #               b. Fazer checkdisk                    #
    echo #               c. Fazer Backup de diretorio/arquivo  #
    echo #               d. Desfragmentar disco                #
    echo #               e. Formatar unidade                   #
    echo #               f. Volume                             #
    echo #               g. Voltar ao menu principal           #
    echo #                                                     #
    echo ####################################################### 
    echo. 
    set /p o=%turma%-TP1# @echo off


@REM ================ Inacabados Reboot e :drive_hard ===========================


set turma=SO223
Title %turma%: %username%
:Main
    cls
    color 7
    echo ####################################################### 
    echo #                                                     #
    echo #                                                     #
    echo #       TERMINAL DE ADMINISTRACAO DE %turma%            #
    echo #                                                     #
    echo #                  DATA: %date%               #
    echo #                                                     #
    echo ####################################################### 
    echo #                                                     #
    echo #              Escolha uma das Opcoes:                #
    echo #                                                     #
    echo #                 1. Ficha Tecnica                    #
    echo #                 2. Gestao Corrente                  #
    echo #                 3. Gestao de Processo               #
    echo #                 4. Gestao de Memoria                #
    echo #                 5. Gestao de Disco                  #
    echo #                 6. Sair                             #
    echo #                                                     #
    echo ####################################################### 
    echo. 
    set /p OP=%turma%-TP1 # 

    IF %op% EQU 1 ( goto :Info)
    IF %op% EQU 2 ( goto :Ges_C)
    IF %op% EQU 3 ( goto :Tasks)
    IF %op% EQU 4 (
        taskmgr
        goto :Main
    )
    IF %op% EQU 5 ( goto :Gest_D)
    IF %op% EQU 6 ( goto :Exit) ELSE (
        echo.
        color 4
        echo Opcao invalida! !!!!
        echo.
        pause > nul
        goto :Main

    pause > nul
    )

:Info
    cls
    echo.
    echo                     ##############################################
    echo                     #     NOME                 #  CURSO          #
    echo                     # -------------------------+-----------------#
    echo                     # Saturnino Moreira Mendes #     ESI         #
    echo                     # Michelle Furtado         #     ESI         #
    echo                     # Damiao  de Pina          #     ESI         #
    echo                     ##############################################
    echo. 
    pause > nul
    GOTO :Main


:Ges_C
    cls
    color 7
    echo ####################################################### 
    echo #                                                     #
    echo #                   Gestao Corrente                   #
    echo ####################################################### 
    echo #                                                     #
    echo #              Escolha uma das Opcoes                 #
    echo #                                                     #
    echo #                 a- Listar informacoes do sistema    #
    echo #                 b. Listar drivers/hardware          #
    echo #                 c. Encerrar agora                   #
    echo #                 d. Programar enceramento            #
    echo #                 e. Reiniciar agora                  #
    echo #                 f. Programar reinicio               #
    echo #                 g. Voltar ao menu principal         #
    echo #                                                     #
    echo ####################################################### 
    echo. 
    set /p o=%turma%-TP1# 
    IF %o% EQU a ( GOTO :Sys_I )
    IF %o% EQU b ( GOTO :drive_hard )
    IF %o% EQU c ( GOTO :ShutD_0 )
    IF %o% EQU d ( GOTO :ShutD_P )
    IF %o% EQU e ( GOTO :Reboot_0 )
    IF %o% EQU f ( GOTO :Reboot_P )
    IF %o% EQU g ( GOTO :Main ) ELSE (
        echo.
        color 4
        echo Opcao invalida! !!!!
        echo.
        pause > nul
        goto :Ges_C
        pause > nul
    )

@REM  --------------------------  INICIO Funcoes so para SUBMENU de GESTAO CORRENTE -----------------------------

:Sys_I
    cls
    systeminfo
    echo.
    pause > nul
    goto :Ges_C

:drive_hard
    cls
    echo.
    echo Drives Instalados: 
    driverquery
    echo.
    pause > nul
    goto :Ges_C


:ShutD_0
    shutdown /p /f

:ShutD_P
    cls
    echo.
    set /p tempo=Tempo para encerar o pc: 
    shutdown /s /t %tempo%
    echo.
    msg * "Seu computador vai desligar daqui a %tempo% segundos!"
    pause > nul
    goto :Ges_C

:Reboot_0
    shutdown /r /t 0

:Reboot_P
    cls
    echo.
    set /p tempo=Tempo para encerar o pc: 
    shutdown /r /t %tempo%
    echo.
    msg * "Seu computador vai reiniciar daqui a %tempo% segundos!"
    pause > nul
    goto :Ges_C



@REM   --------------------  FIM Funcoes so para SUBMENU de GESTAO CORRENTE ------------------------------
 
:Tasks
    cls
    color 7
    echo ####################################################### 
    echo #                                                     #
    echo #                   Gestao de Processos               #
    echo ####################################################### 
    echo #                                                     #
    echo #              Escolha uma das Opcoes                 #
    echo #                                                     #
    echo #               a. Listar os processos ativos         #
    echo #               b. Suspender Processo                 #
    echo #               c. Fazer Backup de diretorio/arquivo  #
    echo #               d. Desfragmentar disco                #
    echo #               e. Formatar unidade                   #
    echo #               f. Volume                             #
    echo #               g. Voltar ao menu principal           #
    echo #                                                     #
    echo ####################################################### 
    echo. 
    set /p o=%turma%-TP1# 
    if %o% EQU a ( 
        tasklist
        echo.
        pause 
        GOTO :Tasks
     ) 
    

@REM -----------------------######### Para Gestao de Disco ################---------------------------------------

:Gest_D
    cls
    color 7
    echo ####################################################### 
    echo #                                                     #
    echo #                   Gestao de Disco                   #
    echo ####################################################### 
    echo #                                                     #
    echo #              Escolha uma das Opcoes                 #
    echo #                                                     #
    echo #               a. Listar particoes                   #
    echo #               b. Fazer checkdisk                    #
    echo #               c. Fazer Backup de diretorio/arquivo  #
    echo #               d. Desfragmentar disco                #
    echo #               e. Formatar unidade                   #
    echo #               f. Volume                             #
    echo #               g. Voltar ao menu principal           #
    echo #                                                     #
    echo ####################################################### 
    echo. 
    set /p o=%turma%-TP1# 
    if %o% EQU a ( goto :View_Part ) 
    if %o% EQU b (
        chkdsk C: /f /r
        echo.
        pause > nul
        goto :Gest_D
    ) 
    else if %o% EQU c ( goto :backup) 
    if %o% EQU d ( goto :desf_disk ) 
    @REM else if %o% EQU e () 
    @REM else if %o% EQU f () 
    if %o% EQU g ( goto :Main ) 
    else ( 
        echo.
        color 4
        echo Opcao invalida! !!!!
        echo.
        pause > nul
        goto :Gest_D
    )

:backup
rem Vai ser criado um diretorio na raiz do disco C chamado Backup 

:View_Part
    cls
    echo.
    echo Lista de particoes no PC: 
    for %%i in ( A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ) do (
        if exist %%i: (
            echo ------  %%i  ---------
        )
    )
    echo.
    pause > nul
    goto :Gest_D

@REM ------------------ Funcao para desfragmentar disco ----------------------------------
:desf_disk
    cls
    echo.
    set /p drive=Disco a ser desfragmentado: 
    if exist %drive%: (
        defrag %drive%   rem Desfragmenta o disco inserido
        echo Particao %drive% desfragmentado com sucesso!
    ) else (
        echo Esse particao nao existe! 
    )
    echo.
    pause > nul
    goto :Gest_D 


@REM ---------------------------  Fucao para sair -------------------------------
:Exit
    cls
    echo.
    echo ***************************
    echo !   Adeus e Ate Breve!    !
    echo ***************************
    echo.
    pause > nul
    exit


@REM -------------------  Fucao para Opcao Invalida ---------------------
@REM :wrong

    if %o% EQU a ( goto :View_Part ) 
    @REM if %o% EQU b () 
    else if %o% EQU c ( goto :backup) 
    if %o% EQU d ( goto :desf_disk ) 
    @REM else if %o% EQU e () 
    @REM else if %o% EQU f () 
    if %o% EQU g ( goto :Main ) 
    else ( 
        echo.
        color 4
        echo Opcao invalida! !!!!
        echo.
        pause > nul
        goto :Gest_D
    )

:backup
rem Vai ser criado um diretorio na raiz do disco C chamado Backup 

:View_Part
    cls
    echo.
    echo Lista de particoes no PC: 
    for %%i in ( A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ) do (
        if exist %%i: (
            echo ------  %%i  ---------
        )
    )
    echo.
    pause > nul
    goto :Gest_D

@REM ------------------ Funcao para desfragmentar disco ----------------------------------
:desf_disk
    cls
    echo.
    set /p drive=Disco a ser desfragmentado: 
    if exist %drive%: (
        defrag %drive%   rem Desfragmenta o disco inserido
        echo Particao %drive% desfragmentado com sucesso!
    ) else (
        echo Esse particao nao existe! 
    )
    echo.
    pause > nul
    goto :Gest_D 


@REM ---------------------------  Fucao para sair -------------------------------
:Exit
    cls
    echo.
    echo ***************************
    echo !   Adeus e Ate Breve!    !
    echo ***************************
    echo.
    pause > nul
    exit


@REM -------------------  Fucao para Opcao Invalida ---------------------
@REM :wrong
