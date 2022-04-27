.model small
.stack
.data
    msg1        db 'Iniciar Sesion', 10, 13, '$'
    msg2        db 'usuario: ', '$'
    msg3        db 'contrase', 164, 'a: ', '$'
    msg4        db 'LA CONTRASE', 165, 'A INGRESADA NO ES CORRECTA', 10, 13, '$'
    msg5        db  'Ingreso al sistema', 10, 13, '$'
    msg6        db 'El usuario no existe', 10, 13, '$'
    worlAdmin   db 'administrador', 10, 13, '$'
    worlUser    db 'usuario', 10, 13, '$' 
    Ftry        db '    >>  Wrong Passowrd   2 chance left  <<', 10, 13, '$' 
    Stry        db '    >>  Wrong Passowrd   1 chance left  <<', 10, 13 , '$' 
    Ttry        db '>> Permission denied <<', 10, 13
                db '>> There where 3 failed login attempts <<', 10, 13
                db '>> Please contact the administrator <<', 10, 13 
                db ' ', 10, 13  
                db '>> Press Enter to go back to menu <<' , 10, 13, '$'
     
    salto       db ' ', 10, 13, '$'
    usering     db  100 dup('$');
    passing     db  100 dup('$');
    usersaved   db  100 dup('$')
    passsaved   db  100 dup('$')  
    
    typesaved   db  100 dup('$')
    typelock    db  100 dup('$') 
                                 
    text        db 'I am so happy!', 10,13                            
    memory      db  100 dup('$') 
    controlMemory  dw  0     
    
    
    
    tamus       dw  0
    tampass     dw  0 
    lockedTemp  dw  0
    
    usuarios    db  'proyecto', 92, 'users.txt', 0
    auxcontenidoar db   1 dup('$')
    controlusers   dw  0
    controltype    dw  0 
    controllock    dw  0
    
    controlpass     dw  0
    tamarch         dw  0
    handle      dw  ?
    handle2 dw ?    ; Guardar asa  
    
    cabeza db "        Universidad San Carlos De Guatemala ",10,13
    db "        Facultad De Ingeneria ", 10, 13
    db "        Escuela de ciencias y sistemas ", 10, 13
    db "        Arquitectura de compiladores y ensambladores 1 ", 10, 13
    db "        Seccion a ", 10, 13
    db "        Jose Manuel Lara ", 10, 13
    db "        201344708", 10, 13, "$"  
    
    userMenu db "        User Menu ",10,13
    db "F2. Play Game ", 10, 13
    db "F3. SHOW TOP 10 SCOREBOARD ", 10, 13
    db "F5. SHOW MY TOP 10 SCOREBOARD", 10, 13, "$" 
    
    adminMenu db "__________________________________________ ",10,13
    db "        Admin Menu ",10,13
    db "F1. Unlock User ", 10, 13
    db "F2. Promote user to admin", 10, 13
    db "F3. Demote user from admin", 10, 13  
    db "F5. Bubble sort", 10, 13
    db "F6. Heap sort", 10, 13 
    db "F7. Tim sort", 10, 13
    db "F9. Logout", 10, 13, "$"
    
    menuopc db "Menu", 0DH, 0AH
    db '_________________________', 0DH, 0AH
    db 'F1. LOGIN', 0dh, 0AH
    db 'F5. REGISTER', 0dh, 0AH
    db 'F9. EXIT', 0dh, 0AH,'$'
                                                         
                                                         
    msjcrear db 0ah,0dh, 'Archivo creado con exito', '$'
    msjescr db 0ah,0dh, 'Archivo escrito con exito', '$'  
    nombre db 'proyecto/archivo2.txt',0 ;nombre archivo y debe terminar en 0 
    

.code
limpiarp macro
    mov ah, 00h
    mov al, 03h
    int 10h
endm    


    


imprime macro texto
    mov ah, 09
    mov dx, offset texto
    int 21h 

endm 
                                                    ; USER
user proc 
    imprime worlUser  
    imprime usering 
    imprime salto
    imprime userMenu
    jmp salir 
    
user endp 



admin proc 
    limpiarp 
    mov ah, 02h
    mov bh, 00h
    mov dh, 0
    mov dl, 25
    int 10h 
    imprime worlAdmin 
    mov ah, 02h
    mov bh, 00h
    mov dh, 0
    mov dl, 39
    int 10h 
    imprime usering 
    imprime salto
    imprime adminMenu
    jmp salir 
    
admin endp

getTecla MACRO
	mov ah,00H
	int 16H
    ret
ENDM     

register proc
     mov ah,0 ; limpia pantalla
     mov al,3h ;limpia pantalla
     int 10h ; limpia pantalla   
     ; imprime regist                                             

register endp 

adminUsuarios proc              ;admin usuarios
     ;imprime typesaved 
     mov al, typesaved
     cmp worlAdmin, al
     je admin 
     cmp worlUser, al
     je user
         
     ;jmp salir
    
adminUsuarios endp


menu proc near
    mov ah, 09h
    mov bh, 01
    mov cx, 174d
    lea dx, menuopc
    int 21h
    getTecla
    ret
menu endp 



  

encabezado macro 
    mov ah,0 ; limpia pantalla
    mov al,3h ;limpia pantalla
    int 10h ; limpia pantalla   
    imprime cabeza

    
    mov ah,8h     ;pregunta por el numero
    int 21h
    cmp al,0dh 
    je regresarEncabezado
    jne main 
                                                     

endm 

leerusuario macro
    local e1, e2
    mov tamus, 0
    e1:
        xor ax, ax
        mov ah, 01h
        int 21h
        cmp al, 0dh
        je e2
        cmp al, 1bh
        je inicio
        mov usering[si], al
        inc si 
        mov usering[si], '$'
        jmp e1
    e2:
endm

leerpass macro
    local e1, e2
    e1:
        mov ax, 00h
        mov ah, 08h
        int 21h
        cmp al, 0dh
        je e2
        cmp al, 1bh
        je inicio
        mov passing[si], al
        inc si
        mov passing[si], '$'
        mov ah, 2h
        mov dl, '*'
        int 21h
        jmp e1
    e2:
endm

calctamuserle macro
    local e1, e2
    xor si, si
    mov tamus, 0
    e1: 
        cmp usering[si], '$'
        je e2
        inc tamus
        inc si
        jmp e1
    e2:
endm

calctamuser macro
    local e1, e2
    xor si, si 
    mov tamarch, 0
    e1:
        cmp usersaved[si], '$'
        je e2
        inc tamarch
        inc si
        jmp e1
    e2:
endm

calctampass macro
    local e1, e2
    xor si, si
    mov tampass, 0
    e1: 
        cmp passing[si], '$'
        je e2
        inc tampass
        inc si
        jmp e1
    e2:
endm

calctampasss macro
    local e1, e2
    xor si, si
    mov tamarch, 0
    e1:
        cmp passsaved[si], '$'
        je e2
        inc tamarch
        inc si
        jmp e1
    e2:
endm

login macro
    local e1, e2, e3, e4, e5, e6
    mov ah, 3dh
    mov al, 0h
    mov dx, offset usuarios
    int 21h
    mov handle, ax
    mov bx, handle
    mov ah, 42h
    mov al, 00h
    mov cx, 0
    mov dx, 0
    int 21h
    e1:
        mov si, 00h
        mov controlpass, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h

        cmp auxcontenidoar[si], '$'
        je errornoexiste
        cmp auxcontenidoar[si], ','
        je e2
        mov al, auxcontenidoar[si]
        mov si, controlusers
        mov usersaved[si], al
        inc controlusers
        inc si
        mov usersaved[si], '$'
        jmp e1
    e2:  
    
        calctamuser
        calctamuserle
        mov si, tamus
        cmp tamarch, si
        je e3  ; se va a e3 cuando el tamarch = tamusario
        jne e4
    e3:
        xor si, si
    e6:
        mov al, usersaved[si]
        cmp al, '$'
        je e7
        cmp usering[si], al
        jne e4
        inc si
        jmp e6
    e4:
        mov si, 00h
        mov controlusers, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        cmp auxcontenidoar[si], 0dh
        je e5
        jmp e4
    e5:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        cmp auxcontenidoar[si], '$'
        je e1
        cmp auxcontenidoar[si], 0ah
        je e5
        mov controlusers, 0
        mov al, auxcontenidoar[si]
        mov si, controlusers
        mov usersaved[si], al
        inc controlusers
        inc si
        mov usersaved[si], '$'
        jmp e1
    e7:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h

        cmp auxcontenidoar[si], '$'
        je errorpass
        cmp auxcontenidoar[si], 0dh
        je e8
        cmp auxcontenidoar[si], 0ah
        je e8
        mov al, auxcontenidoar[si]
        mov si, controlpass
        mov passsaved[si], al
        inc controlpass
        inc si
        mov passsaved[si], '$'
        jmp e7
    e8:
        calctampasss
        calctampass
        mov si, tampass
        cmp tamarch, si
        je e9
        jne e10
    e9:
        xor si, si
    e12:
        mov al, passsaved[si]
        cmp al, '$'
        je ingresarsist
        cmp passing[si], al
        jne e10
        inc si
        jmp e12
    e10:
        mov si, 00h
        mov controlpass, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        cmp auxcontenidoar[si], ','
        je e11
        cmp auxcontenidoar[si], '$'
        je errorpass
        jmp e10
    e11:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        cmp auxcontenidoar[si], '$'
        je e7
        cmp auxcontenidoar[si], ','
        je e11
        mov controlpass, 0
        mov al, auxcontenidoar[si]
        mov si, controlpass
        mov passsaved[si], al
        inc controlpass
        inc si
        mov passsaved[si], '$'
        jmp e7
endm
     ;                                                    !!!MAIN!!!
main proc
    mov ax, @data
    mov ds, ax
    encabezado
    regresarEncabezado:
    call menu 
    
    cmp al, 31h
    je log 
    cmp ah, 3Fh
    je register 
    cmp ah, 43h
    je salir
       
ingresarsist:
    imprime msg5
    ey1:  
    mov si, 00h
    mov ah, 3fh
    mov bx, handle
    lea dx, auxcontenidoar
    mov cx, 1
    int 21h
    
    cmp auxcontenidoar[si], '$'
    je errornoexiste
    cmp auxcontenidoar[si], 0dh
    je adminUsuarios               ;guardado tipo de usuario  
    
    mov al, auxcontenidoar[si]
    mov si, controltype
    mov typesaved[si], al
    inc controltype
    inc si
    mov typesaved[si], '$'
    jmp ey1  
    
    jmp salir
errornoexiste:
    imprime msg6
    jmp salir
errorpass:                                ;!!!!!!!!!!!!!!!!!!!!  error pass       !!!!!!  
    
   
    mov ah, 3eh
    int 21h

    inc lockedTemp

    mov ax, lockedTemp[0]
    
    cmp al, 01h
    je firstTry 
    cmp al, 02h
    je secondTry 
    cmp al, 03h
    je treedTry
        
    
salir:
    mov ax, 4c00h
    int 21h
log:
    inicio:
    limpiarp
    regresoError:
    imprime msg1
    imprime msg2
    
   
    mov tamus,0      
    mov tampass,0     
    mov controlusers,0  
    mov controltype,0   
    mov controllock,0    
    
    mov controlpass ,0    
    mov tamarch,0
    mov di, 0
    mov memory, '$'         
    
    
    
    xor si, si
    leerusuario
    imprime msg3
    xor si, si
    leerpass
    ;login
    mov ah, 3dh
    mov al, 0h
    mov dx, offset usuarios
    int 21h
    mov handle, ax
    mov bx, handle
    mov ah, 42h
    mov al, 00h
    mov cx, 0
    mov dx, 0
    int 21h
    e1:               ; e1 buscamos las comas
        mov si, 00h
        mov controlpass, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h

        cmp auxcontenidoar[si], '$'
        je errornoexiste
        cmp auxcontenidoar[si], ','
        je e2
        mov al, auxcontenidoar[si] ; movemos a auxconten la letra
        mov si, controlusers
        mov usersaved[si], al  
        
        
       ; mov memory[di], al
        ;inc di 
        
        
        inc controlusers
        inc si
        mov usersaved[si], '$'
        jmp e1      ;sale hasta que encuentra una coma o un $
    e2: 
        ;mov al, auxcontenidoar[si]
        ;mov memory[di], al
        ;inc di
            
        calctamuser
        calctamuserle
        mov si, tamus
        cmp tamarch, si
        je e3   ; si tienen el mismo tamanio
        jne e4
    e3:
        xor si, si
    e6:
        mov al, usersaved[si]
        cmp al, '$'
        je e7
        cmp usering[si], al   ; compara los user si son iguales!!!!
        jne e4
        inc si
        jmp e6
    e4:
        mov si, 00h    ; e4 cuando sabe que ya no son iguales
        mov controlusers, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h  
        ;memory 
        ;mov al, auxcontenidoar[si]
        ;mov memory[di], al
        ;inc di 
        
        
        cmp auxcontenidoar[si], 0dh   ;recorre el archivo hasta que encuentra un salto de linea
        je e5
        jmp e4
    e5:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h 
        
       ; mov al, auxcontenidoar[si]
       ; mov memory[di], al
        ;inc di 
        
        
        
        cmp auxcontenidoar[si], '$'
        je e1
        cmp auxcontenidoar[si], 0ah
        je e5
        mov controlusers, 0
        mov al, auxcontenidoar[si]
        mov si, controlusers                                                          
        
        mov usersaved[si], al
        inc controlusers
        inc si
        mov usersaved[si], '$'
        jmp e1
    e7:                ;salta aqui cuando el usuario es el mismo
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        
        ;mov al, auxcontenidoar[si]
        ;mov memory[di], al
        ;inc di 
        

        cmp auxcontenidoar[si], '$'   ;lee la contra igual que el user
        je errorpass
        cmp auxcontenidoar[si], 0dh
        je e8
        cmp auxcontenidoar[si], 0ah
        je e8
        cmp auxcontenidoar[si], ','
        je e8
        mov al, auxcontenidoar[si]
        mov si, controlpass
        mov passsaved[si], al
        
        ;mov memory[di], al
        ;inc di
        
        
        inc controlpass
        inc si
        mov passsaved[si], '$'
        jmp e7
    e8:  
        ;mov al, auxcontenidoar[si]
        ;mov memory[di], al
        ;inc di
    
    
        calctampasss
        calctampass
        mov si, tampass
        cmp tamarch, si
        je e9
        jne e10
    e9:
        xor si, si
    e12:
        mov al, passsaved[si]
        cmp al, '$'
        je ingresarsist
        cmp passing[si], al ; comparamos las PW
        jne e10
        inc si
        jmp e12
    e10:      ; cuando la pw es erronea              e10
        mov si, 00h
        mov controlpass, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h  
        
        cmp auxcontenidoar[si], ','
        je e11
        ;cmp auxcontenidoar[si], 0ah ;esto lo agregue para que salga con salto
        je errorpass
        cmp auxcontenidoar[si], '$'
        je errorpass 
        
        mov al, auxcontenidoar[si]
        mov si, controltype                            ; controltype
        mov typesaved[si], al
        
        ;mov memory[di], al
        ;inc di
        
        inc controltype
        inc si
        mov typesaved[si], '$'
        

        jmp e10
    e11: 
    
        mov al, auxcontenidoar[si]
        ;mov memory[di], al
        ;inc di
        
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        
        
       
       
       
        
        cmp auxcontenidoar[si], '$'
        je e7
        cmp auxcontenidoar[si], ','
        je e11                                         
        mov controlpass, 0
        ;mov al, auxcontenidoar[si]
        ;mov si, controlpass
        ;mov passsaved[si], al
        ;inc controlpass
        ;inc si   
        
        mov al, auxcontenidoar[si]                      ;guardando el priemr valor de locked
        mov si, controllock
        mov typelock[si], al
        inc controllock
        
        
        mov al, auxcontenidoar[si]  
        mov ax, lockedTemp[0]
        ;mov al, 0
        cmp al, 02h
        je noPasar 
        
        ;mov al, auxcontenidoar[si]
        ;mov memory[di], al
       ; inc di
         
        
        noPasar:
        inc si 
        mov typelock[si], '$'
        
                                             
        mov passsaved[si], '$'                          ;call e7
        jmp e7a
     e7a:                                               ;para saber si el usuario esta blockeado
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        
        

        cmp auxcontenidoar[si], '$'   ;lee la contra igual que el locked
        je errorpass
        cmp auxcontenidoar[si], 0dh
        je e8
        cmp auxcontenidoar[si], 0ah
        je e8
        cmp auxcontenidoar[si], ','
        je e8
        mov al, auxcontenidoar[si]
        mov si, controllock
        mov typelock[si], al 
        
          
        mov ax, lockedTemp[0]
        ;mov al, 0
        cmp al, 02h
        je noPasar2 
        

        ;mov al, auxcontenidoar[0]
        ;mov memory[di], al
        ;inc di 
        
        noPasar2:
        
        
        inc controllock
        inc si
        mov typelock[si], '$'
        jmp e7a 
     firstTry: 
        ;mov [usering] , '$'
        ;mov passing , '$'
        mov usersaved , '$'
        mov passsaved , '$' 
    
        ;typesaved   db  100 dup('$')
        ;typelock    db  100 dup('$')                                                             
        ;imprime salto
        limpiarp
        imprime Ftry
        
        jmp regresoError 
     secondTry:
        mov usersaved , '$'
        mov passsaved , '$'  
        ;imprime salto
        limpiarp
        imprime Stry  
        jmp regresoError 
     treedTry:
        mov usersaved , '$'
        mov passsaved , '$'
         
        dec di 
        dec di
        mov memory[di], 'l'
        inc di 
        mov memory[di], 'o' 
        inc di 
        mov memory[di], 'c'
        inc di 
        mov memory[di], 'k'  
        inc di 
        mov memory[di], 'e' 
        inc di 
        mov memory[di], 'd'
        inc di
        mov memory[di], 0dh
        inc di  
        
        
        ;mov al, auxcontenidoar[0]
        ;mov memory[di], al
        ;inc di 
           
        
         
        ;imprime salto 
        jmp crear
        limpiarp
        imprime Ttry  
        mov ah,8h     ;pregunta por el numero
        int 21h
        cmp al,0dh 
        je regresarEncabezado
        jne treedTry
     crear:
        mov ax,@data
        mov ds,ax
        ;crear
        mov ah,3ch
        mov cx,0
        mov dx,offset nombre
        int 21h
        jc salir ;si no se pudo crear
        imprime msjcrear
        mov bx,ax
        mov ah,3eh ;cierra el archivo
        int 21h
      editar:
        ;abrir
        mov ah,3dh
        mov al,1h
        mov dx,offset nombre
        int 21h
        jc salir ;Si hubo error
        ;Escritura de archivo
        mov bx,ax ; mover hadfile
        mov cx,di ;num de caracteres a grabar
        mov dx,offset memory
        mov ah,40h
        int 21h
        imprime msjescr
        cmp cx,ax
        jne salir ;error salir
        mov ah,3eh ;Cierre de archivo
        int 21h
               
        
 
main endp
end main