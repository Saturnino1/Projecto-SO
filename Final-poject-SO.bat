@echo off


@REM ================ Inacabados Reboot e :drive_hard ===========================
if exist Backup-ESI-Proj (
    echo Ja tens uma pasta de Backup pronta
) else (
    mkdir Backup-ESI-Proj
    echo "Local de backup criado."
)
pause


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
    echo #               a. Listar os processos ativo          #
    echo #               b. Suspender/Eliminar Processo        #
    echo #               c. Reactivar processo                 #
    echo #               d. Voltar ao menu principal           #
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
     if %o% EQU b (
        cls
        echo.
        set /p process= Nome rocesso que pretendes terminar:  
        taskkill /IM  %process%
        echo processo %process% encerrado.
        echo.
        pause > nul
        goto :Tasks
     )
     if %o% EQU b (
        cls
        echo.
        set /p process= Nome rocesso que pretendes reactivar:  
        %process%
        echo processo %process% iniciado.
        echo.
        pause > nul
        goto :Tasks
     )
     if %o% EQU d (
        goto :Main
     ) else ( 
        echo.
        color 4
        echo Opcao invalida! !!!!
        echo.
        pause > nul
        goto :Tasks
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
    echo #               e. Formatar particao                  #
    echo #               f. Etiquetar um volume                #
    echo #               g. Ver serie e detalhes               #
    echo #               h. Montar um volume                   #
    echo #               i. Voltar ao menu principal           #
    echo #                                                     #
    echo ####################################################### 
    echo. 
    set /p o=%turma%-TP1# 
    if %o% EQU a ( goto :View_Part ) 
    if %o% EQU b ( 
        cls
        echo Realizando checkdisk....
        chkdsk C: /f /r
        echo.
        echo checkdisk terminado
        echo.
        pause > nul
        goto :Gest_D
     ) 
    if %o% EQU c ( goto :backup ) 
    if %o% EQU d ( goto :desf_disk ) 
    if %o% EQU e ( goto :Partition_format ) 
    if %o% EQU f ( goto :Vol_Etiquetar ) 
    if %o% EQU g ( goto :Vol_Detail ) 
    if %o% EQU h ( goto :Vol_mount ) 
    if %o% EQU i ( goto :Main ) 
    else ( 
        echo.
        color 4
        echo Opcao invalida! !!!!
        echo.
        pause > nul
        goto :Gest_D
    )

:backup
    cls
    echo.
    set /p dire= Nome da pasta que queres fazer backup:
    if exist %dire% (
        echo.
        echo Fazendo backup...
        echo.
        xcopy %dire% Backup-ESI-Proj
        echo Backup realizado com sucesso!
        echo.
        pause > nul
        goto :Gest_D
    ) else (
        echo.
        echo --  Esse directorio nao existe!  --
        echo.
        set /p op=Quer tentar outro nome? s/n:
        if %op% EQU s (
            goto :backup
        ) else (
            goto :Gest_D
        )
    )
    
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

:Vol_mount
    @REM ---------------- Comando real -------------------------
    @REM diskpart /s montar.txt
    @REM -------------------------------------------------------
    cls
    echo.
    echo Volume X
    echo.
    echo Comando - diskpart 
    echo Comando ---- select volume X 
    echo Comando ---- assign letter=Z 

    echo Volume X montado com sucesso !
    echo.
    pause > nul
    goto :Gest_D 

:Partition_format
    @REM ---------------- Comando real -------------------------
    @REM diskpart /s format.txt
    @REM -------------------------------------------------------
    cls
    echo.
    echo Volume X
    echo.
    echo Comando - diskpart 
    echo Comando ---- list disk 
    echo Comando ---- select disk X 
    echo Comando ---- clean 
    echo Comando ---- format fs=NFTS quick 
    echo Comando ---- assign 

    echo Disco X Formatado com sucesso !
    echo.
    pause > nul
    goto :Gest_D 

:Vol_Etiquetar
    @REM ---------------- Comando real -------------------------
    @REM diskpart /s etiquetar.txt
    @REM -------------------------------------------------------
    cls
    echo.
    echo Volume X
    set /p label_name= Nome label: 
    echo.
    echo Comando -diskpart 
    echo Comando ----list volume
    echo Comando ----select volume X
    echo Comando ----%label label_name%
    echo Volume X etiquetado com sucesso 
    echo.
    pause > nul
    goto :Gest_D 

:Vol_Detail
    @REM ---------------- Comando real -------------------------
    @REM diskpart /s detail.txt
    @REM -------------------------------------------------------
    cls
    echo.
    echo Volume X 
    echo.
    echo Comando -diskpart 
    echo Comando ----list volume
    echo Comando ----select volume X
    echo Comando ----detail volume
    echo Volume X montado com sucesso 
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
