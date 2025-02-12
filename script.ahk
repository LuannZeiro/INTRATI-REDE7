; Script AutoHotkey para abrir AnyDesk, colar o número e inserir a senha
#Persistent ; Mantém o script rodando

; Configurar a combinação de teclas ou clicar no número que será passado para o script
; Pressione Ctrl + Alt + N para iniciar a automação
^!n::
    ; Abrir o AnyDesk
    Run, C:\Program Files (x86)\AnyDesk\AnyDesk.exe 
    WinWait, AnyDesk 
    Sleep, 2000 ; Aguarda 2 segundos para garantir que o AnyDesk abriu corretamente

    ; Foca na janela do AnyDesk
    WinActivate, AnyDesk
    Sleep, 2000 ; Aguarda mais 2 segundos para garantir que a janela do AnyDesk está ativa

    ; Colar o número que está na área de transferência
    Clipboard := ClipboardAll ; Garante que o conteúdo da área de transferência seja preservado
    SendInput, %Clipboard% ; Cola o conteúdo da área de transferência
    Sleep, 2000 ; Aguarda 2 segundos para garantir que o número foi colado

    ; Pressiona Enter para tentar estabelecer a conexão
    Send, {Enter} 
    Sleep, 3000 ; Aguarda 3 segundos para garantir que o campo de senha esteja pronto

    ; Enviar a senha caractere por caractere (garante que a senha será digitada corretamente)
    SendInput, M
    Sleep, 100
    SendInput, @
    Sleep, 100
    SendInput, r
    Sleep, 100
    SendInput, y
    Sleep, 100
    SendInput, J
    Sleep, 100
    SendInput, 4
    Sleep, 100
    SendInput, n
    Sleep, 100
    SendInput, 3
    Sleep, 100
    ; Enviar o "!" usando código ASCII (código 33)
    Send, {ASC 33}
    Sleep, 100
    SendInput, 2
    Sleep, 100
    SendInput, 5
    Sleep, 100

    ; Pressiona Enter para completar a conexão
    Send, {Enter} 

return
