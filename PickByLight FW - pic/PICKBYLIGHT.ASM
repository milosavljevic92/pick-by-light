
; PICBASIC PRO(TM) Compiler 3.0.4.1, (c) 1998, 2011 microEngineering Labs, Inc. All Rights Reserved. 
MPASMX_USED			EQU	1

#define	PBP_PATH	C:\PROGRAM FILES (X86)\PBP3\




        NOLIST
    ifdef PM_USED
        LIST
        "Error: PM does not support this device.  Use MPASM."
        NOLIST
    else
        LIST
        LIST p = 18F4550, r = dec, w = -311, w = -230, f = inhx32
        INCLUDE "P18F4550.INC"	; MPASM  Header
        NOLIST
    endif
        LIST
EEPROM_START	EQU	0F00000h
BLOCK_SIZE	EQU	32


PBP_HARDWAREDEF  macro
  endm


;        __CONFIG    _CONFIG1L, _PLLDIV_5_1L & _CPUDIV_OSC1_PLL2_1L & _USBDIV_2_1L
;        __CONFIG    _CONFIG1H, _FOSC_HSPLL_HS_1H & _FCMEN_OFF_1H & _IESO_OFF_1H
;        __CONFIG    _CONFIG2L, _PWRT_OFF_2L & _BOR_ON_2L & _BORV_3_2L & _VREGEN_ON_2L
;        __CONFIG    _CONFIG2H, _WDT_ON_2H & _WDTPS_512_2H
;        __CONFIG    _CONFIG3H, _CCP2MX_ON_3H & _PBADEN_OFF_3H & _LPT1OSC_OFF_3H & _MCLRE_ON_3H
;        __CONFIG    _CONFIG4L, _STVREN_ON_4L & _LVP_OFF_4L & _ICPRT_OFF_4L & _XINST_OFF_4L



; Define statements.
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00014	    DEFINE OSC 8
#define		OSC		 8
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00027	    DEFINE SER2_BITS 8
#define		SER2_BITS		 8
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00028	    DEFINE CHAR_PACING 1000
#define		CHAR_PACING		 1000
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00020	DEFINE  INTHAND       INT_ENTRY_H  ' Context saving for High Priority Ints
#define		INTHAND		       INT_ENTRY_H  
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00021	DEFINE  INTLHAND      INT_ENTRY_L  ' Context saving for Low Priority Ints
#define		INTLHAND		      INT_ENTRY_L  
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00022	DEFINE   ReEnterHPused  1
#define		ReEnterHPused		  1

RAM_START       		EQU	00000h
RAM_END         		EQU	007FFh
RAM_BANKS       		EQU	00008h
BANK0_START     		EQU	00060h
BANK0_END       		EQU	000FFh
BANK1_START     		EQU	00100h
BANK1_END       		EQU	001FFh
BANK2_START     		EQU	00200h
BANK2_END       		EQU	002FFh
BANK3_START     		EQU	00300h
BANK3_END       		EQU	003FFh
BANK4_START     		EQU	00400h
BANK4_END       		EQU	004FFh
BANK5_START     		EQU	00500h
BANK5_END       		EQU	005FFh
BANK6_START     		EQU	00600h
BANK6_END       		EQU	006FFh
BANK7_START     		EQU	00700h
BANK7_END       		EQU	007FFh
BANKA_START     		EQU	00000h
BANKA_END       		EQU	0005Fh

; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00028	A00000	FLAGS   VAR     BYTE BANKA SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 000h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00027	A00001	GOP     VAR     BYTE BANKA SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 001h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00012	A00002	R0      VAR     WORD BANKA SYSTEM       ' System Register
R0              		EQU	RAM_START + 002h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00013	A00004	R1      VAR     WORD BANKA SYSTEM       ' System Register
R1              		EQU	RAM_START + 004h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00014	A00006	R2      VAR     WORD BANKA SYSTEM       ' System Register
R2              		EQU	RAM_START + 006h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00015	A00008	R3      VAR     WORD BANKA SYSTEM       ' System Register
R3              		EQU	RAM_START + 008h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00016	A0000A	R4      VAR     WORD BANKA SYSTEM       ' System Register
R4              		EQU	RAM_START + 00Ah
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00017	A0000C	R5      VAR     WORD BANKA SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ch
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00018	A0000E	R6      VAR     WORD BANKA SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Eh
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00019	A00010	R7      VAR     WORD BANKA SYSTEM       ' System Register
R7              		EQU	RAM_START + 010h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00020	A00012	R8      VAR     WORD BANKA SYSTEM       ' System Register
R8              		EQU	RAM_START + 012h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00001	A00014	  '*********************************************************************
T1              		EQU	RAM_START + 014h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00001	A00016	  '*********************************************************************
T2              		EQU	RAM_START + 016h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00001	A00018	  '*********************************************************************
T3              		EQU	RAM_START + 018h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00001	A0001A	  '*********************************************************************
T4              		EQU	RAM_START + 01Ah
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00038	A0001C	INT_Flags   VAR BYTE  BANKA  SYSTEM
INT_Flags       		EQU	RAM_START + 01Ch
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00023	A0001D	RM1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 01Dh
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00026	A0001E	RM2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 01Eh
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00021	A0001F	RR1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 01Fh
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00024	A00020	RR2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 020h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00022	A00021	RS1     VAR     BYTE BANKA SYSTEM       ' Pin 1 Bank
RS1             		EQU	RAM_START + 021h
; C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.RAM	00025	A00022	RS2     VAR     BYTE BANKA SYSTEM       ' Pin 2 Bank
RS2             		EQU	RAM_START + 022h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00023	A00023	wsave       var byte  BANKA  SYSTEM   ' location for WREG
wsave           		EQU	RAM_START + 023h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00036	A00024	RetAddrH    VAR BYTE[3]  BANKA  SYSTEM  ' 21-bit return address Hi Pri.
RetAddrH        		EQU	RAM_START + 024h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00037	A00027	RetAddrL    VAR BYTE[3]  BANKA  SYSTEM  '                       Lo Pri.
RetAddrL        		EQU	RAM_START + 027h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00001	A0002A	  '*********************************************************************
PB01            		EQU	RAM_START + 02Ah
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00001	A0002B	  '*********************************************************************
PB02            		EQU	RAM_START + 02Bh
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00083	A0002C	    x                   var byte   
_x               		EQU	RAM_START + 02Ch
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00066	A0002D	    tmp var byte[15]
_tmp             		EQU	RAM_START + 02Dh
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00030	A00060	fsave0H     var WORD  BANK0  SYSTEM   ' locations for FSR registers
fsave0H         		EQU	RAM_START + 060h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00033	A00062	fsave0L     var WORD  BANK0  SYSTEM   ' low priority FSR locations
fsave0L         		EQU	RAM_START + 062h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00031	A00064	fsave1H     var WORD  BANK0  SYSTEM
fsave1H         		EQU	RAM_START + 064h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00034	A00066	fsave1L     var WORD  BANK0  SYSTEM
fsave1L         		EQU	RAM_START + 066h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00032	A00068	fsave2H     var WORD  BANK0  SYSTEM
fsave2H         		EQU	RAM_START + 068h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00035	A0006A	fsave2L     var WORD  BANK0  SYSTEM
fsave2L         		EQU	RAM_START + 06Ah
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00025	A0006C	bsave       var byte  BANK0  SYSTEM   ' location for BSR register
bsave           		EQU	RAM_START + 06Ch
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00028	A0006D	psaveH      VAR BYTE  BANK0  SYSTEM   ' PCLATH Hi Pri.
psaveH          		EQU	RAM_START + 06Dh
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00029	A0006E	psaveL      VAR BYTE  BANK0  SYSTEM   '        Lo Pri.
psaveL          		EQU	RAM_START + 06Eh
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00026	A0006F	psaveUH     VAR BYTE  BANK0  SYSTEM   ' PCLATU Hi Pri.
psaveUH         		EQU	RAM_START + 06Fh
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00027	A00070	psaveUL     VAR BYTE  BANK0  SYSTEM   '        Lo Pri.
psaveUL         		EQU	RAM_START + 070h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00024	A00071	ssave       var byte  BANK0  SYSTEM   ' location for STATUS register
ssave           		EQU	RAM_START + 071h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00029	A00072	HP_Vars  VAR  WORD[34]        ; group vars together for less banking
_HP_Vars         		EQU	RAM_START + 072h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00030	    R0_SaveH      VAR HP_Vars[0]
_R0_SaveH        		EQU	_HP_Vars
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00031	    R1_SaveH      VAR HP_Vars[2]
_R1_SaveH        		EQU	_HP_Vars + 004h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00032	    R2_SaveH      VAR HP_Vars[4]
_R2_SaveH        		EQU	_HP_Vars + 008h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00033	    R3_SaveH      VAR HP_Vars[6]
_R3_SaveH        		EQU	_HP_Vars + 00Ch
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00034	    R4_SaveH      VAR HP_Vars[8]
_R4_SaveH        		EQU	_HP_Vars + 010h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00035	    R5_SaveH      VAR HP_Vars[9]
_R5_SaveH        		EQU	_HP_Vars + 012h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00036	    R6_SaveH      VAR HP_Vars[10]
_R6_SaveH        		EQU	_HP_Vars + 014h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00037	    R7_SaveH      VAR HP_Vars[11]
_R7_SaveH        		EQU	_HP_Vars + 016h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00038	    R8_SaveH      VAR HP_Vars[12]
_R8_SaveH        		EQU	_HP_Vars + 018h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00039	    Flag_GOP_H    VAR HP_Vars[13]
_Flag_GOP_H      		EQU	_HP_Vars + 01Ah
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00042	    RM_H          VAR HP_Vars[14]
_RM_H            		EQU	_HP_Vars + 01Ch
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00045	    RR_H          VAR HP_Vars[15]
_RR_H            		EQU	_HP_Vars + 01Eh
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00048	    RS_H          VAR HP_Vars[16]
_RS_H            		EQU	_HP_Vars + 020h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00051	    T1_SaveH      VAR HP_Vars[17]
_T1_SaveH        		EQU	_HP_Vars + 022h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00052	    T2_SaveH      VAR HP_Vars[19]
_T2_SaveH        		EQU	_HP_Vars + 026h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00053	    T3_SaveH      VAR HP_Vars[21]
_T3_SaveH        		EQU	_HP_Vars + 02Ah
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00054	    T4_SaveH      VAR HP_Vars[23]
_T4_SaveH        		EQU	_HP_Vars + 02Eh
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00055	    T5_SaveH      VAR HP_Vars[25]
_T5_SaveH        		EQU	_HP_Vars + 032h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00056	    T6_SaveH      VAR HP_Vars[27]
_T6_SaveH        		EQU	_HP_Vars + 036h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00057	    T7_SaveH      VAR HP_Vars[29]
_T7_SaveH        		EQU	_HP_Vars + 03Ah
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00058	    TBLPTRU_H     VAR HP_Vars[31]
_TBLPTRU_H       		EQU	_HP_Vars + 03Eh
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00060	    TBLPTR_H      VAR HP_Vars[32]
_TBLPTR_H        		EQU	_HP_Vars + 040h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00063	    Product_H     VAR HP_Vars[33]
_Product_H       		EQU	_HP_Vars + 042h
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00271	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00272	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00273	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00274	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00040	      Flags_SaveH   VAR Flag_GOP_H.lowbyte
_Flags_SaveH     		EQU	_Flag_GOP_H
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00041	      GOP_SaveH     VAR Flag_GOP_H.highbyte
_GOP_SaveH       		EQU	_Flag_GOP_H + 001h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00043	      RM1_SaveH     VAR RM_H.lowbyte
_RM1_SaveH       		EQU	_RM_H
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00044	      RM2_SaveH     VAR RM_H.highbyte
_RM2_SaveH       		EQU	_RM_H + 001h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00046	      RR1_SaveH     VAR RR_H.lowbyte
_RR1_SaveH       		EQU	_RR_H
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00047	      RR2_SaveH     VAR RR_H.highbyte
_RR2_SaveH       		EQU	_RR_H + 001h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00049	      RS1_SaveH     VAR RS_H.lowbyte
_RS1_SaveH       		EQU	_RS_H
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00050	      RS2_SaveH     VAR RS_H.highbyte
_RS2_SaveH       		EQU	_RS_H + 001h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00059	      TBLPTRU_SaveH VAR TBLPTRU_H.lowbyte
_TBLPTRU_SaveH   		EQU	_TBLPTRU_H
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00061	      TBLPTRH_SaveH VAR TBLPTR_H.highbyte
_TBLPTRH_SaveH   		EQU	_TBLPTR_H + 001h
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00062	      TBLPTRL_SaveH VAR TBLPTR_H.lowbyte
_TBLPTRL_SaveH   		EQU	_TBLPTR_H
_Flag_GOP_H??LOWBYTE		EQU	_Flag_GOP_H
_Flag_GOP_H??HIGHBYTE		EQU	_Flag_GOP_H + 001h
_RM_H??LOWBYTE   		EQU	_RM_H
_RM_H??HIGHBYTE  		EQU	_RM_H + 001h
_RR_H??LOWBYTE   		EQU	_RR_H
_RR_H??HIGHBYTE  		EQU	_RR_H + 001h
_RS_H??LOWBYTE   		EQU	_RS_H
_RS_H??HIGHBYTE  		EQU	_RS_H + 001h
_TBLPTRU_H??LOWBYTE		EQU	_TBLPTRU_H
_TBLPTR_H??HIGHBYTE		EQU	_TBLPTR_H + 001h
_TBLPTR_H??LOWBYTE		EQU	_TBLPTR_H
#define __rs232Tx        	_PORTD??7
#define __rs232Rx        	_PORTD??6
#define __inputA1        	_PORTA??0
#define __inputA2        	_PORTA??1
#define __inputA3        	_PORTA??2
#define __inputA4        	_PORTA??3
#define __OutputA1       	_PORTD??2
#define __OutputA2       	_PORTD??3
#define __OutputA3       	_PORTD??1
#define __OutputA4       	_PORTD??0
#define _NewStateA1      	 PB01, 004h
#define _NewStateA2      	 PB01, 005h
#define _NewStateA3      	 PB01, 006h
#define _NewStateA4      	 PB01, 007h
#define _OldStateA1      	 PB02, 000h
#define _OldStateA2      	 PB02, 001h
#define _OldStateA3      	 PB02, 002h
#define _OldStateA4      	 PB02, 003h
#define _InputA1         	 PB01, 000h
#define _InputA2         	 PB01, 001h
#define _InputA3         	 PB01, 002h
#define _InputA4         	 PB01, 003h
#define _Serviced_H      	_INT_Flags??0
#define _Serviced_L      	_INT_Flags??1
#define _InHPint         	_INT_Flags??2
#define _NoPriority      	_INT_Flags??3
#define _VarsSaved_H     	 PB02, 004h
#define _PORTD??7        	 PORTD, 007h
#define _PORTD??6        	 PORTD, 006h
#define _PORTA??0        	 PORTA, 000h
#define _PORTA??1        	 PORTA, 001h
#define _PORTA??2        	 PORTA, 002h
#define _PORTA??3        	 PORTA, 003h
#define _PORTD??2        	 PORTD, 002h
#define _PORTD??3        	 PORTD, 003h
#define _PORTD??1        	 PORTD, 001h
#define _PORTD??0        	 PORTD, 000h
#define _INTCON2??7      	 INTCON2, 007h
#define _UCON??3         	 UCON, 003h
#define _UCFG??3         	 UCFG, 003h
#define _INT_Flags??0    	 INT_Flags, 000h
#define _INT_Flags??1    	 INT_Flags, 001h
#define _INT_Flags??2    	 INT_Flags, 002h
#define _INT_Flags??3    	 INT_Flags, 003h

; Constants.
_USBMEMORYADDRESS		EQU	00400h
_majorVer        		EQU	00001h
_revisionVer     		EQU	00005h
_rs232_bps       		EQU	00006h

; EEPROM data.


	INCLUDE	"PICKBYLIGHT.MAC"
	INCLUDE	"C:\PROGRAM FILES (X86)\PBP3\PBPPIC18.LIB"


; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00036	#HEADER
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00062	#CONFIG
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00252	BANKA   $0000, $005F
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00253	BANK0   $0060, $00FF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00254	BANK1   $0100, $01FF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00255	BANK2   $0200, $02FF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00256	BANK3   $0300, $03FF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00257	BANK4   $0400, $04FF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00258	BANK5   $0500, $05FF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00259	BANK6   $0600, $06FF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00260	BANK7   $0700, $07FF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00266	    INCLUDE "PBPPI18L.RAM"
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00267	#ELSE
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00268	    LIBRARY  "PBPPIC18"

; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00269	    INCLUDE "PBPPIC18.RAM"
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00270	#ENDIF
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00275	USBMEMORYADDRESS Con	$400	' USB RAM starts here
; C:\PROGRAM FILES (X86)\PBP3\DEVICES\PIC18F4550.PBPINC	00279	#HEADER
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00014	    DEFINE OSC 8

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00015	    asm

	ASM?

            __CONFIG    _CONFIG1L, _PLLDIV_1_1L & _CPUDIV_OSC1_PLL2_1L & _USBDIV_1_1L
            __CONFIG    _CONFIG1H, _FOSC_INTOSC_HS_1H & _FCMEN_OFF_1H & _IESO_OFF_1H
            __CONFIG    _CONFIG2L, _PWRT_ON_2L & _BOR_OFF_2L & _BORV_3_2L & _VREGEN_OFF_2L
            __CONFIG    _CONFIG2H, _WDT_OFF_2H & _WDTPS_512_2H
            __CONFIG    _CONFIG3H, _CCP2MX_OFF_3H & _PBADEN_OFF_3H & _LPT1OSC_OFF_3H & _MCLRE_OFF_3H
            __CONFIG    _CONFIG4L, _STVREN_OFF_4L & _LVP_OFF_4L & _XINST_OFF_4L   
            __CONFIG    _CONFIG5L, _CP1_ON_5L & _CP0_ON_5L
            __CONFIG    _CONFIG5H, _CPB_ON_5H & _CPD_ON_5H          
    

	ENDASM?

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00027	    DEFINE SER2_BITS 8
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00028	    DEFINE CHAR_PACING 1000

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00031	    output _rs232tx
	OUTPUT?T	__rs232Tx

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00032	    input _rs232Rx
	INPUT?T	__rs232Rx

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00040	    input _inputA1 
	INPUT?T	__inputA1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00041	    input _inputa2 
	INPUT?T	__inputA2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00042	    input _inputA3 
	INPUT?T	__inputA3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00043	    input _inputA4 
	INPUT?T	__inputA4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00049	    output _OutputA1
	OUTPUT?T	__OutputA1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00050	    output _OutputA2
	OUTPUT?T	__OutputA2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00051	    output _OutputA3
	OUTPUT?T	__OutputA3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00052	    output _OutputA4
	OUTPUT?T	__OutputA4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00067	    clear
	CLEAR?	
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00069	    majorVer con 1
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00070	    revisionVer con 5
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00071	    rs232_bps con 6 '9600 bps

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00073	    ADCON1              = $0F 'iskljuèi komparatore na  portevima
	MOVE?CB	00Fh, ADCON1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00074	    CMCON               = $7
	MOVE?CB	007h, CMCON

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00075	    INTCON2.7           = $0 'ukljuciti interne pull na portb
	MOVE?CT	000h, _INTCON2??7

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00076	    UCON.3              = $0 '
	MOVE?CT	000h, _UCON??3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00077	    UCFG.3              = $1 
	MOVE?CT	001h, _UCFG??3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00078	    PORTB               = $00 'postavi sve na portu B na 0
	MOVE?CB	000h, PORTB

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00079	    PORTC               = $00 'postavi sve na portu B na 0
	MOVE?CB	000h, PORTC

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00080	    OSCCON              = %01110110 'setovanje osccon registra    
	MOVE?CB	076h, OSCCON

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00084	    INCLUDE "DT_INTS-18.bas"         ; Base Interrupt System

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00018	DISABLE DEBUG
	DDISABLE?	
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00020	DEFINE  INTHAND       INT_ENTRY_H  ' Context saving for High Priority Ints
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00021	DEFINE  INTLHAND      INT_ENTRY_L  ' Context saving for Low Priority Ints

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00044	INT_Flags = 0 
	MOVE?CB	000h, INT_Flags

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00046	goto  OVER_DT_INTS_18
	GOTO?L	_OVER_DT_INTS_18

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00048	ASM

	ASM?

;____ Check for PBPL (PBP ver. 2.50 and above only)__________________________
PBPLongs_Used = 0
  if (R1 - R0 == 4)
PBPLongs_Used = 1
;    messg PBPL Used = 1
  endif

  nolist
;____ DEFINE available interrupt sources_____________________________________

  #define INT_INT   INTCON, INT0IF  ;-- INT External, 16F compatible
  #define INT0_INT  INTCON, INT0IF  ;-- INT0 External 
  #define INT1_INT  INTCON3,INT1IF  ;-- INT1 External 
  #define INT2_INT  INTCON3,INT2IF  ;-- INT2 External 
  #define INT3_INT  INTCON3,INT3IF  ;-- INT3 External 
  #define RBC_INT   INTCON, RBIF    ;-- RB Port Change 
  #define TMR0_INT  INTCON, TMR0IF  ;-- TMR0 Overflow  18F
  #define TMR1_INT  PIR1, TMR1IF    ;-- TMR1 Overflow 
  #define TMR2_INT  PIR1, TMR2IF    ;-- TMR2 to PR2 Match 
  #define TMR3_INT  PIR2, TMR3IF    ;-- TMR3 Overflow 
  #define TMR4_INT  PIR3, TMR4IF    ;-- TMR4 Overflow 
  #define TX_INT    PIR1, TXIF      ;-- USART Transmit 
  #define TX1_INT   PIR1, TX1IF     ;-- USART1 Transmit 
  #define TX2_INT   PIR3, TX2IF     ;-- USART2 Transmit 
  #define RX_INT    PIR1, RCIF      ;-- USART Receive 
  #define RX1_INT   PIR1, RC1IF     ;-- USART1 Receive 
  #define RX2_INT   PIR3, RC2IF     ;-- USART2 Receive 
  #define CMP_INT   PIR2, CMIF      ;-- Comparator 
  #define EE_INT    PIR2, EEIF      ;-- EEPROM/FLASH Write Operation 
  #define BUS_INT   PIR2, BCLIF     ;-- Bus Collision 
  #define LVD_INT   PIR2, LVDIF     ;-- Low Voltage Detect 
  #define HLVD_INT  PIR2, HLVDIF    ;-- High/Low Voltage Detect 
  #define PSP_INT   PIR1, PSPIF     ;-- Parallel Slave Port Read/Write 
  #define AD_INT    PIR1, ADIF      ;-- A/D Converter 
  #define SSP_INT   PIR1, SSPIF     ;-- Master Synchronous Serial Port 
  #define CCP1_INT  PIR1, CCP1IF    ;-- CCP1 
  #define CCP2_INT  PIR2, CCP2IF    ;-- CCP2 
  #define CCP3_INT  PIR3, CCP3IF    ;-- CCP3 
  #define CCP4_INT  PIR3, CCP4IF    ;-- CCP4 
  #define CCP5_INT  PIR3, CCP5IF    ;-- CCP5 
  #define OSC_INT   PIR2, OSCFIF    ;-- Oscillator Fail 

; -- Added for ver. 3.2 --
  #define SPP_INT   PIR1, SPPIF     ;-- Streaming Parallel Port Read/Write
  #define BUS1_INT  PIR2, BCL1IF    ;-- Bus 1 Collision 
  #define BUS2_INT  PIR3, BCL2IF    ;-- Bus 2 Collision
  #define ECCP1_INT PIR2, ECCP1IF   ;-- ECCP1
  #define LCD_INT   PIR3, LCDIF     ;-- LCD Driver
  #define PMP_INT   PIR1, PMPIF     ;-- Parallel Master Port
  #define SSP1_INT  PIR1, SSP1IF    ;-- Synchronous Serial Port 1
  #define SSP2_INT  PIR3, SSP2IF    ;-- Synchronous Serial Port 2
  #define TMR5_INT  PIR3, TMR5IF    ;-- Timer 5
  #define PT_INT    PIR3, PTIF      ;-- PWM Time Base
  #define IC1IF_INT  PIR3, IC1IF    ;-- Motion Feedback
  #define IC2QEIF_INT  PIR3, IC2QEIF  ;-- Motion Feedback
  #define IC3DRIF_INT  PIR3, IC3DRIF  ;-- Motion Feedback

;_____ Comparators __________________________________________________________
  #define CMP0_INT  PIR1, CMP0IF    ;-- Comparator 0 - 1230/1330 only

CMPIFREG = PIR2                     ;-- Comparator 1
CMPIEREG = PIE2
CMPIPREG = IPR2
    ifdef C1IF                      ;     18F24K20  18F25K20  18F26K20
CM1IFBIT = C1IF                     ;     18F44K20  18F45K20  18F46K20
    endif
    ifdef CM1IF
CM1IFBIT = CM1IF                    ;     several J PICs
    endif
    ifdef CMP1IF
CMPIFREG = PIR1                     ;     1230/1330 only
CM1IFBIT = CMP1IF
CMPIEREG = PIE1
CMPIPREG = IPR1
    endif

    ifdef CM1IFBIT
       #define CMP1_INT  CMPIFREG, CM1IFBIT     
    endif

    ifdef C2IF                      ;-- Comparator 2
CM2IFBIT = C2IF                     ;     18F24K20  18F25K20  18F26K20
    endif                           ;     18F44K20  18F45K20  18F46K20
    ifdef CM2IF
CM2IFBIT = CM2IF                    ;     several J PICs
    endif    
    ifdef CMP2IF
CM2IFBIT = CMP2IF                   ;     1230/1330 only
    endif    

    ifdef CM2IFBIT
      #define CMP2_INT  CMPIFREG, CM2IFBIT     
    endif

;_____ USB Module ___________________________________________________________

  #define USB_INT       PIR2, USBIF   ;-- USB Interrupt (funnel)
  #define USB_ACTV_INT  UIR,  ACTVIF  ;-- Bus Activity Detect 
  #define USB_ERR_INT   UIR,  UERRIF  ;-- USB Error Condition INT (funnel)
  #define USB_RST_INT   UIR,  URSTIF  ;-- USB Reset 
  #define USB_IDLE_INT  UIR,  IDLEIF  ;-- Idle Detect 
  #define USB_STALL_INT UIR,  STALLIF ;-- A STALL Handshake 
  #define USB_TRN_INT   UIR,  TRNIF   ;-- Transaction Complete 
  #define USB_SOF_INT   UIR,  SOFIF   ;-- START-OF-FRAME Token 

; -- USB Error Flags --
  #define USB_BTO_INT   UEIR, BTOEF   ;-- Bus Turnaround Time-out Error
  #define USB_BTS_INT   UEIR, BTSEF   ;-- Bit Stuff Error
  #define USB_CRC16_INT UEIR, CRC16EF ;-- CRC16 Failure
  #define USB_CRC5_INT  UEIR, CRC5EF  ;-- CRC5 Host Error
  #define USB_DFN8_INT  UEIR, DFN8EF  ;-- Data Field Size Error
  #define USB_PID_INT   UEIR, PIDEF   ;-- PID Check Failure
   
;_____ Ethernet Module ______________________________________________________
  #define ETH_INT       PIR2, ETHIF   ;-- Ethernet Module
  #define ETH_DMA_INT    EIR, DMAIF   ;-- DMA Interrupt
  #define ETH_LINK_INT   EIR, LINKIF  ;-- Link Status Change
  #define ETH_PKT_INT    EIR, PKTIF   ;-- Receive Packet Pending
  #define ETH_RXER_INT   EIR, RXERIF  ;-- Receive Error
  #define ETH_TXER_INT   EIR, TXERIF  ;-- Transmit Error
  #define ETH_TX_INT     EIR, TXIF    ;-- Transmit

;_____ CAN Module ___________________________________________________________
  #define CAN_ERR_INT    PIR3, ERRIF    ;-- CAN bus Error
  #define CAN_IRX_INT    PIR3, IRXIF    ;-- Invalid Received Message
  #define CAN_RXB0_INT   PIR3, RXB0IF   ;-* Receive Buffer 0      Mode 0
  #define CAN_FIFOWM_INT PIR3, FIFOWMIF ;-- FIFO Watermark        Mode 1, 2
  #define CAN_RXB1_INT   PIR3, RXB1IF   ;-* Receive Buffer 1      Mode 0
  #define CAN_RXBn_INT   PIR3, RXBnIF   ;-- Any Receive Buffer    Mode 1, 2
  #define CAN_TXB0_INT   PIR3, TXB0IF   ;-- Transmit Buffer 0
  #define CAN_TXB1_INT   PIR3, TXB1IF   ;-- Transmit Buffer 1
  #define CAN_TXB2_INT   PIR3, TXB2IF   ;-* Transmit Buffer 2     Mode 0
  #define CAN_TXBn_INT   PIR3, TXBnIF   ;-- Any Transmit Buffer   Mode 1, 2
  #define CAN_WAKE_INT   PIR3, WAKIF    ;-- CAN bus Activity Wake-up


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00185	asm

	ASM?

; -- macro --
INT_Source  macro  IFR, IFB, IER, IEB, IPR, IPB
    if (IflagReg == IFR) && (IflagBit == IFB)  
  list  
INT_Flag_Reg = IFR
INT_Flag_Bit = IFB
INT_Enable_Reg = IER
INT_Enable_Bit = IEB
INT_Priority_Reg = IPR
INT_Priority_Bit = IPB
Found = 1
    endif
  nolist  
    endm 


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00203	asm

	ASM?

;____________________________________________________________________________
GetIntInfo  macro  IflagReg, IflagBit
  nolist
INT_Flag_Reg = -1
INT_Flag_Bit = -1
INT_Enable_Reg = -1
INT_Enable_Bit = -1
  ifdef  IPR1
INT_Priority_Reg = -1
INT_Priority_Bit = -1
  endif
Found = 0

  ifdef INT0IF  ;----{ INT0 External Interrupt }----------[INTCON, INT0IF]---
      INT_Source  INTCON,INT0IF, INTCON,INT0IE, -1, -1
  endif
  ifdef INT1IF  ;----{ INT1 External Interrupt }---------[INTCON3, INT1IF]---
      INT_Source  INTCON3,INT1IF, INTCON3,INT1IE, INTCON3,INT1IP
  endif
  ifdef INT2IF  ;----{ INT2 External Interrupt }---------[INTCON3, INT2IF]---
      INT_Source  INTCON3,INT2IF, INTCON3,INT2IE, INTCON3,INT2IP
  endif
  ifdef INT3IF  ;----{ INT3 External Interrupt }---------[INTCON3, INT3IF]---
      INT_Source  INTCON3,INT3IF, INTCON3,INT3IE, INTCON2,INT3IP
  endif
  ifdef RBIF    ;----{ RB Port Change Interrupt }-----------[INTCON, RBIF]---
      INT_Source  INTCON,RBIF, INTCON, RBIE,INTCON2,RBIP
  endif
  ifdef TMR0IF  ;----{ TMR0 Overflow Interrupt }----------[INTCON, TMR0IF]---
      INT_Source  INTCON,TMR0IF, INTCON,TMR0IE, INTCON2,TMR0IP
  endif
  ifdef TMR1IF  ;----{ TMR1 Overflow Interrupt }------------[PIR1, TMR1IF]---
      INT_Source  PIR1,TMR1IF, PIE1,TMR1IE, IPR1,TMR1IP
  endif
  ifdef TMR2IF  ;----{ TMR2 to PR2 Match Interrupt }--------[PIR1, TMR2IF]---
      INT_Source  PIR1,TMR2IF, PIE1,TMR2IE, IPR1,TMR2IP
  endif
  ifdef TMR3IF  ;----{ TMR3 Overflow Interrupt }------------[PIR2, TMR3IF]---
      INT_Source  PIR2,TMR3IF, PIE2,TMR3IE, IPR2,TMR3IP
  endif
  ifdef TMR4IF  ;----{ TMR4 Overflow Interrupt }------------[PIR3, TMR4IF]---
      INT_Source  PIR3,TMR4IF, PIE3,TMR4IE, IPR3,TMR4IP
  endif
  ifndef TX1IF  ;----{ USART Transmit Interrupt }-------------[PIR1, TXIF]---
      ifdef TXIF
          INT_Source  PIR1,TXIF, PIE1,TXIE, IPR1,TXIP
      endif
  endif
  ifdef TX1IF   ;----{ USART1 Transmit Interrupt }-----------[PIR1, TX1IF]---
      INT_Source  PIR1,TX1IF, PIE1,TX1IE, IPR1,TX1IP
  endif
  ifdef TX2IF   ;----{ USART2 Transmit Interrupt }-----------[PIR3, TX2IF]---
      INT_Source  PIR3,TX2IF, PIE3,TX2IE, IPR3,TX2IP
  endif
  ifndef RC1IF  ;----{ USART Receive Interrupt }---------------[PIR1 RCIF]---  
    ifdef RCIF
        INT_Source  PIR1,RCIF, PIE1,RCIE, IPR1,RCIP
    endif
  endif
  ifdef RC1IF   ;----{ USART1 Receive Interrupt }------------[PIR1, RC1IF]---
      INT_Source  PIR1,RC1IF, PIE1,RC1IE, IPR1,RC1IP
  endif
  ifdef RC2IF   ;----{ USART2 Receive Interrupt }------------[PIR3, RC2IF]---
      INT_Source  PIR3,RC2IF, PIE3,RC2IE, IPR3,RC2IP
  endif
  ifdef CMIF    ;----{ Comparator Interrupt }-----------------[PIR2, CMIF]---
      INT_Source  PIR2,CMIF, PIE2,CMIE, IPR2,CMIP
  endif
  ifdef EEIF    ;----{ EEPROM/FLASH Write Operation Interrupt [PIR2, EEIF]---
      INT_Source  PIR2,EEIF, PIE2,EEIE, IPR2,EEIP
  endif
  ifdef BCLIF   ;----{ Bus Collision Interrupt }-------------[PIR2, BCLIF]---
      INT_Source  PIR2,BCLIF, PIE2,BCLIE, IPR2,BCLIP
  endif
  ifdef LVDIF   ;----{ Low Voltage Detect Interrupt }--------[PIR2, LVDIF]---
      INT_Source  PIR2,LVDIF, PIE2,LVDIE, IPR2,LVDIP
  endif
  ifdef HLVDIF  ;----{ High/Low Voltage Detect Interrupt }--[PIR2, HLVDIF]---
      INT_Source  PIR2,HLVDIF, PIE2,HLVDIE, IPR2,HLVDIP
  endif
  ifdef PSPIF   ;----{ Parallel Slave Port Interrupt }-------[PIR1, PSPIF]---
      INT_Source  PIR1,PSPIF, PIE1,PSPIE, IPR1,PSPIP
  endif
  ifdef ADIF    ;----{ A/D Converter Interrupt }--------------[PIR1, ADIF]---
      INT_Source  PIR1,ADIF, PIE1,ADIE, IPR1,ADIP
  endif
  ifdef SSPIF   ;----{ Synchronous Serial Port Interrupt }---[PIR1, SSPIF]---
      INT_Source  PIR1,SSPIF, PIE1,SSPIE, IPR1,SSPIP
  endif
  ifdef CCP1IF  ;----{ CCP1 Interrupt }---------------------[PIR1, CCP1IF]---
      INT_Source  PIR1,CCP1IF, PIE1,CCP1IE, IPR1,CCP1IP
  endif
  ifdef CCP2IF  ;----{ CCP2 Interrupt Flag }----------------[PIR2, CCP2IF]---
      INT_Source  PIR2,CCP2IF, PIE2,CCP2IE, IPR2,CCP2IP
  endif
  ifdef CCP3IF  ;----{ CCP3 Interrupt Flag }----------------[PIR3, CCP3IF]---
      INT_Source  PIR3,CCP3IF, PIE3,CCP3IE, IPR3,CCP3IP
  endif
  ifdef CCP4IF  ;----{ CCP4 Interrupt Flag }----------------[PIR3, CCP4IF]---
      INT_Source  PIR3,CCP4IF, PIE3,CCP4IE, IPR3,CCP4IP
  endif
  ifdef CCP5IF  ;----{ CCP5 Interrupt Flag }----------------[PIR3, CCP5IF]---
      INT_Source  PIR3,CCP5IF, PIE3,CCP5IE, IPR3,CCP5IP
  endif
  ifdef OSCFIF  ;----{ Osc Fail  Interrupt Flag }-----------[PIR2, OSCFIF]---
      INT_Source  PIR2,OSCFIF, PIE2,OSCFIE, IPR2,OSCFIP
  endif


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00313	asm

	ASM?

; -- Added for ver. 3.2 --
  ifdef SPPIF   ;----{ Streaming Parallel Port Read/Write }--[PIR1, SPPIF]---
      INT_Source  PIR1,SPPIF, PIE1,SPPIE, IPR1,SPPIP
  endif
  ifdef BCL1IF  ;----{ Bus 1 Collision }--------------------[PIR2, BCL1IF]---
      INT_Source  BUS1_INT, PIE2,BCL1IE, IPR2,BCL1IP
  endif
  ifdef BCL2IF  ;----{ Bus 2 Collision }--------------------[PIR3, BCL2IF]---
      INT_Source  BUS2_INT, PIE3,BCL2IE, IPR3,BCL2IP
  endif
  ifdef CMP0IF  ;----{ Comparator 0 }-----------------------[PIR1, CMP0IF]---
      INT_Source  CMP0_INT, PIE1,CMP0IE, IPR1,CMP0IP
  endif
  ifdef CM1IFBIT  ;--{ Comparator 1 }-----------------------------[varies]---
      INT_Source  CMP1_INT, CMPIEREG,CM1IFBIT, CMPIPREG,CM1IFBIT
  endif
  ifdef CM2IFBIT  ;--{ Comparator 2 }-----------------------------[varies]---
      INT_Source  CMP2_INT, CMPIEREG,CM2IFBIT, CMPIPREG,CM2IFBIT
  endif
  ifdef ECCP1IF  ;---{ ECCP1 }-----------------------------[PIR2, ECCP1IF]---
      INT_Source  ECCP1_INT, PIE2,ECCP1IE, IPR2,ECCP1IP
  endif
  ifdef LCDIF   ;----{ LCD Driver }--------------------------[PIR3, LCDIF]---
      INT_Source  LCD_INT, PIE3,LCDIE, IPR3,LCDIP
  endif
  ifdef PMPIF   ;----{ Parallel Master Port }----------------[PIR1, PMPIF]---
      INT_Source  PMP_INT, PIE1,PMPIE, IPR1,PMPIP
  endif
  ifdef SSP1IF  ;----{ Synchronous Serial Port 1 }----------[PIR1, SSP1IF]---
      INT_Source  SSP1_INT, PIE1,SSP1IE, IPR1,SSP1IP
  endif
  ifdef SSP2IF  ;----{ Synchronous Serial Port 2 }----------[PIR3, SSP2IF]---
      INT_Source  SSP2_INT, PIE3,SSP2IE, IPR3,SSP2IP
  endif
  ifdef TMR5IF  ;----{ Timer 5 }----------------------------[PIR3, TMR5IF]---
      INT_Source  TMR5_INT, PIE3,TMR5IE, IPR3,TMR5IP
  endif
  ifdef PTIF    ;----{ PWM Time Base }------------------------[PIR3, PTIF]---
      INT_Source  PT_INT, PIE3,PTIE, IPR3,PTIP
  endif
  ifdef IC1IF   ;----{ Motion Feedback IC1}------------------[PIR3, IC1IF]---
      INT_Source  IC1IF_INT, PIE3,IC1IE, IPR3,IC1IP
  endif
  ifdef IC2QEIF ;----{ Motion Feedback IC2QE}--------------[PIR3, IC2QEIF]---
      INT_Source  IC2QEIF_INT, PIE3,IC2QEIE, IPR3,IC2QEIP
  endif
  ifdef IC3DRIF ;----{ Motion Feedback IC3DR}--------------[PIR3, IC3DRIF]---
      INT_Source  IC3DRIF_INT, PIE3,IC3DRIE, IPR3,IC3DRIP
  endif
  
;  ifdef   ;----{  }-------------[, ]---
;      INT_Source  , ,, ,
;  endif


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00369	asm  ; -- USB sources --

	ASM?
  ; -- USB sources --
  ifdef USBIF   ;----{ USB  Interrupt funnel }---------------[PIR2, USBIF]---
      INT_Source  PIR2,USBIF, PIE2,USBIE, IPR2,USBIP
          
                ;----{ Bus Activity Detect }-----------------[UIR, ACTVIF]---
      INT_Source  USB_ACTV_INT, UIE,ACTVIE, _NoPriority
  
                ;----{ USB Reset }---------------------------[UIR, URSTIF]---
      INT_Source  USB_RST_INT, UIE,URSTIE, _NoPriority
  
                ;----{ Idle Detect }-------------------------[UIR, IDLEIF]---
      INT_Source  USB_IDLE_INT, UIE,IDLEIE, _NoPriority
  
                ;----{ A STALL Handshake }------------------[UIR, STALLIF]---
      INT_Source  USB_STALL_INT, UIE,STALLIE, _NoPriority
  
                ;----{ Transaction Complete }-----------------[UIR, TRNIF]---
      INT_Source  USB_TRN_INT, UIE,TRNIE, _NoPriority
  
                ;----{ START-OF-FRAME Token }-----------------[UIR, SOFIF]---
      INT_Source  USB_SOF_INT, UIE,SOFIE, _NoPriority
  
; -- USB Error Flags --
                ;----{ USB Error Condition Int funnel }------[UIR, UERRIF]---
      INT_Source  USB_ERR_INT, UIE,UERRIE, _NoPriority
   
                ;----{ Bus Turnaround Time-out Error }-------[UEIR, BTOEF]---
      INT_Source  USB_BTO_INT, UEIE,BTOEE, _NoPriority
   
                ;----{ Bit Stuff Error }---------------------[UEIR, BTSEF]---
      INT_Source  USB_BTS_INT, UEIE,BTSEE, _NoPriority
   
                ;--{ CRC16 Failure }-----------------------[UEIR, CRC16EF]---
      INT_Source  USB_CRC16_INT, UEIE,CRC16EE, _NoPriority
   
                ;---{ CRC5 Host Error }---------------------[UEIR, CRC5EF]---
      INT_Source  USB_CRC5_INT, UEIE,CRC5EE, _NoPriority
   
                ;---{ Data Field Size Error }---------------[UEIR, DFN8EF]---
      INT_Source  USB_DFN8_INT, UEIE,DFN8EE, _NoPriority
   
                ;----{ PID Check Failure }-------------------[UEIR, PIDEF]---
      INT_Source  USB_PID_INT, UEIE,PIDEE, _NoPriority
  endif


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00415	asm  ; -- Ethernet sources --

	ASM?
  ; -- Ethernet sources --
  ifdef ETHIF  ;----{ Ethernet Module }----------------------[PIR2, ETHIF]---
      INT_Source  ETH_INT, PIE2,ETHIE, IPR2,ETHIP
   
               ;----{ DMA Interrupt }-------------------------[EIR, DMAIF]---
      INT_Source  ETH_DMA_INT, EIE,DMAIE, _NoPriority
   
               ;----{ Link Status Change }-------------------[EIR, LINKIF]---
      INT_Source  ETH_LINK_INT, EIE,LINKIE, _NoPriority
   
               ;----{ Receive Packet Pending }----------------[EIR, PKTIF]---
      INT_Source  ETH_PKT_INT, EIE,PKTIE, _NoPriority
   
               ;----{ Receive Error }------------------------[EIR, RXERIF]---
      INT_Source  ETH_RXER_INT, EIE,RXERIE, _NoPriority
              
               ;----{ Transmit Error }-----------------------[EIR, TXERIF]---
      INT_Source  ETH_TXER_INT, EIE,TXERIE, _NoPriority
   
               ;----{ Transmit }-------------------------------[EIR, TXIF]---
      INT_Source  ETH_TX_INT, EIE,TXIE, _NoPriority
  endif


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00439	asm  ; -- CAN Module --

	ASM?
  ; -- CAN Module --
  ifdef WAKIF  
               ;----{ CAN bus Error }------------------------[PIR3, ERRIF]---
      INT_Source  CAN_ERR_INT, PIE3,ERRIE, IPR3,ERRIP
  
               ;----{ Invalid Received Message }-------------[PIR3, IRXIF]---
      INT_Source  CAN_IRX_INT, PIE3,IRXIE, IPR3,IRXIP
  
               ;----{ Receive Buffer 0 }------Mode 0--------[PIR3, RXB0IF]---
      INT_Source  CAN_RXB0_INT, PIE3,RXB0IE, IPR3,RXB0IP
               ;----{ FIFO Watermark }--------Mode 1, 2---[PIR3, FIFOWMIF]---
      INT_Source  CAN_FIFOWM_INT, PIE3,FIFOWMIE, IPR3,FIFOWMIP
  
               ;----{ Receive Buffer 1 }------Mode 0--------[PIR3, RXB1IF]---
      INT_Source  CAN_RXB1_INT, PIE3,RXB1IE, IPR3,RXB1IP
               ;----{ Any Receive Buffer }----Mode 1, 2-----[PIR3, RXBnIF]---
      INT_Source  CAN_RXBn_INT, PIE3,RXBnIE, IPR3,RXBnIP
  
               ;----{ Transmit Buffer 0 }-------------------[PIR3, TXB0IF]---
      INT_Source  CAN_TXB0_INT, PIE3,TXB0IE, IPR3,TXB0IP
  
               ;----{ Transmit Buffer 1 }-------------------[PIR3, TXB1IF]---
      INT_Source  CAN_TXB1_INT, PIE3,TXB1IE, IPR3,TXB1IP
  
               ;----{ Transmit Buffer 2 }-----Mode 0=-------[PIR3, TXB2IF]---
      INT_Source  CAN_TXB2_INT, PIE3,TXB2IE, IPR3,TXB2IP
               ;----{ Any Transmit Buffer }---Mode 1, 2-----[PIR3, TXBnIF]---
      INT_Source  CAN_TXBn_INT, PIE3,TXBnIE, IPR3,TXBnIP
  
               ;----{ CAN bus Activity Wake-up }-------------[PIR3, WAKIF]---
      INT_Source  CAN_WAKE_INT, PIE3,WAKIE, IPR3,WAKIP
  endif
  
  list
    endm
  list  


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00478	ASM

	ASM?

    ifndef  USE_LOWPRIORITY
INT_ENTRY_L
        retfie
    else
        if (USE_LOWPRIORITY != 1)
INT_ENTRY_L
            retfie
        endif
    endif        


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00491	Asm

	ASM?

asm = 0    ; Assembly language Interrupts
ASM = 0
Asm = 0
pbp = 1    ; Basic language interrupts
PBP = 1
Pbp = 1
YES = 1
yes = 1
Yes = 1
NO = 0
no = 0
No = 0
H equ 'H'  ; High Priority
h equ 'H'
L equ 'L'  ; Low Priority
l equ 'L'

  nolist
  
;_____________________________________________________________________________
SaveFSR  macro  F, Pr
  list
    if (F >= 0) && (F <= 2)
        if (Pr == H) || (Pr == L)
            movff    FSR#v(F)L, fsave#v(F)Pr
            movff    FSR#v(F)H, fsave#v(F)Pr + 1
          nolist
        else
            ERROR "SaveFSR - Invalid Priority"
        endif
    else
        ERROR "SaveFSR - Invalid FSR number"
    endif
    list
  endm


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00530	Asm

	ASM?

RestFSR  macro  F, Pr
  list
    if (F >= 0) && (F <= 2)
        if (Pr == H) || (Pr == L)
            movff    fsave#v(F)Pr , FSR#v(F)L
            movff    fsave#v(F)Pr + 1 , FSR#v(F)H 
          nolist
        else
            ERROR "RestFSR - Invalid Priority"
        endif
    else
        ERROR "RestFSR - Invalid FSR number"
    endif
    list
  endm


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00549	Asm

	ASM?

INT_FINISH_H   macro
  endm


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00555	ASM

	ASM?

INT_CREATE_H  macro
  local OverCREATE
    goto OverCREATE
Priority = H    
INT_ENTRY_H  
    movff   PCLATU, psaveUH
    movff   PCLATH, psaveH
    SaveFSR  0, H
    SaveFSR  1, H
    SaveFSR  2, H
    bsf      _InHPint, 0
List_Start_H
    bcf      _Serviced_H, 0         ; Clear Serviced flag
    clrf  BSR
PREV_BANK = 0
    ifdef INT_LIST_H
        INT_LIST_H                  ; Expand the users list of HP INT handlers
    else
        ifdef INT_LIST
            INT_LIST                ; Expand the 16F Compatible List
        else
            error "INT_CREATE_H - INT_LIST or INT_LIST_H not found"
        endif
    endif
    btfsc    _Serviced_H,0          ; if anything was serviced
    goto     List_Start_H           ; go around, and check again

    ifdef ReEnterHPused             ; was ReEnterPBP-18.bas included
        GetAddress21  INT_EXIT_H, RetAddrH
        L?GOTO   _RestorePBP_H      ; Restore PBP system Vars
    endif

INT_EXIT_H
PREV_BANK = 0
    bcf      _InHPint, 0
    RestFSR  0, H                   ; Restore FSR0, if it was saved?
    RestFSR  1, H                   ; Restore FSR1, if it was saved?
    RestFSR  2, H                   ; Restore FSR2, if it was saved?
    movff    psaveH, PCLATH
    movff    psaveUH, PCLATU
    retfie    FAST                  ; Return from Interrupt
OverCREATE
    bsf   INTCON,GIE, 0             ; Enable High Priority Interrupts
    bsf   INTCON,PEIE, 0            ; Enable Peripheral Interrupts
  endm

;---[Stay compatible with the 14-bit version]---------------------------------
INT_CREATE  macro
    INT_CREATE_H
  endm


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00609	ASM

	ASM?

INT_CREATE_L  macro
  local OverCREATE
    goto OverCREATE
    ifdef USE_LOWPRIORITY
        if (USE_LOWPRIORITY != 1)
       error "'DEFINE USE_LOWPRIORITY 1' required for Low Priority Interrupts"
        endif
    else
       error "'DEFINE USE_LOWPRIORITY 1' required for Low Priority Interrupts"
    endif
Priority = L
INT_ENTRY_L  
    movff   WREG, wsave             ; Wreg
    movff   STATUS, ssave           ; STATUS
    movff   BSR, bsave              ; BSR
    movff   PCLATU, psaveUL
    movff   PCLATH, psaveL
    SaveFSR  0, L                   ; FSR0
    SaveFSR  1, L                   ; FSR1
    SaveFSR  2, L                   ; FSR2
    bcf      _InHPint, 0    
List_Start_L
  clrf  BSR
PREV_BANK = 0
    bcf      _Serviced_L, 0
    ifdef INT_LIST_L
        INT_LIST_L                  ; Expand the users list of HP INT handlers
    else
        error "INT_CREATE_L - INT_LIST_L not defined, can not create"
    endif
    btfsc    _Serviced_L, 0         ; if anything was serviced
    goto     List_Start_L           ; go around, and check again

    ifdef ReEnterLPused             ; was ReEnterPBP-18LP.bas included
        GetAddress21  INT_EXIT_L, RetAddrL
        L?GOTO   _RestorePBP_L      ; Restore PBP system Vars
    endif

INT_EXIT_L
PREV_BANK = 0
    RestFSR  0, L                   ; Restore saved vars
    RestFSR  1, L
    RestFSR  2, L                
    movff   psaveUL, PCLATU
    movff   psaveL, PCLATH
    movff   bsave, BSR              ; BSR
    movff   wsave, WREG             ; WREG
    movff   ssave, STATUS           ; STATUS
    retfie                          ; Return from Interrupt
OverCREATE
    bsf   RCON,IPEN, 0              ; Enable Interrupt Priorities
    bsf   INTCON,GIEL, 0            ; Enable Low Priority Interrupts
  endm


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00665	ASM

	ASM?

;---[Returns the Address of a Label as a Word]--(under 64K)------------------
GetAddress macro Label, Wout
    CHK?RP Wout
    movlw low Label          ; get low byte
    movwf Wout
    movlw High Label         ; get high byte
    movwf Wout + 1
    endm

;---[Returns the Address of a Label as a 3 byte array]---(under/over 64k)-----
GetAddress21 macro Label, Aout
    CHK?RP Aout
    movlw low Label          ; get low byte
    movwf Aout
    movlw high Label         ; get high byte
    movwf Aout + 1
    movlw upper Label        ; get upper byte
    movwf Aout + 2
    endm

;---[find correct bank for a PBP BIT variable]-------------------------------
CHKRP?T  macro reg, bit
        CHK?RP  reg
    endm
    


;---[find Assigned Priority for specified INT Source]------------------------
INT_Count = 0

FindIntPriority  macro IntFlagReg, IntFlagBit
  local LoopCount
    nolist
Pfound = 0
LoopCount = 1
      while LoopCount <= INT_Count
          if  (IntFlagReg == PrList#v(LoopCount)R)
             if (IntFlagBit == PrList#v(LoopCount)B)
  list
Priority =  PrList#v(LoopCount)Priority
Pfound = 1
             endif
          endif
LoopCount += 1
      endw
  endm  


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00714	ASM

	ASM?


;---[Add an Interrupt Source to the user's list of INT Handlers]--------------
INT_Handler  macro  IntFlagReg, IntFlagBit, Label, Type, Reset
  list
    local AfterSave, AfterUser, NoInt
INT_Count += 1
PrList#v(INT_Count)R = IntFlagReg
PrList#v(INT_Count)B = IntFlagBit
PrList#v(INT_Count)Priority = Priority
        GetIntInfo   IntFlagReg, IntFlagBit
        if (Found == YES)
            btfss    INT_Enable_Reg, INT_Enable_Bit, 0  ; if INT is enabled
            goto   NoInt
            btfss    INT_Flag_Reg, INT_Flag_Bit, 0      ; and the Flag set?
            goto     NoInt
            if (Priority == H)
                bsf      _Serviced_H, 0
            else
                bsf      _Serviced_L, 0
            endif
            ifdef NO_CLRWDT
                if  (NO_CLRWDT != 1)
                    CLRWDT
                endif
            else
                CLRWDT
            endif
                
            if (Type == PBP)                         ; If INT handler is PBP
              if (Priority == H)
                ifdef ReEnterHPused
                    GetAddress21  AfterSave, RetAddrH  
                    L?GOTO  _SavePBP_H        ; Save PBP system Vars in HP INT
                else
    error "ReEnterPBP-18 must be INCLUDEd to use High Priority PBP interrupts"
                endif
              else ; Priority = L
                ifdef ReEnterLPused
                    GetAddress21  AfterSave, RetAddrL  
                    L?GOTO  _SavePBP_L        ; Save PBP system Vars in LP INT
                else
   error "ReEnterPBP-18LP must be INCLUDEd to use Low Priority PBP interrupts"
                endif
              endif
            endif
AfterSave
PREV_BANK = 0
            if (Priority == H)
                  GetAddress21  AfterUser, RetAddrH  
            else ; Priority = L
                  GetAddress21  AfterUser, RetAddrL
            endif  
            L?GOTO   Label                        ; goto the users INT handler
                    
AfterUser
PREV_BANK = 0
            if (Reset == YES)                      ; reset flag (if specified)
                bcf      INT_Flag_Reg, INT_Flag_Bit, 0 
            endif
        else
            error Interrupt Source (IntFlagReg,IntFlagBit) not found
        endif
NoInt
    clrf  BSR
PREV_BANK = 0
    endm


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00783	asm

	ASM?

;---[Returns from a "goto" subroutine]--(21-bit RetAddr? must be set first)---
INT_RETURN  macro
  local Ret2LP, Ret2HP
      btfsc   _InHPint, 0
      goto    Ret2HP
Ret2LP
      movff   RetAddrL + 2, PCLATU  ; Load PC buffers with return address
      movff   RetAddrL + 1, PCLATH
      movf    RetAddrL, W, 0
    clrf  BSR                    ; Set to BANK0 before returning
PREV_BANK = 0                    ; Tell PBP about the BANK change
      movwf   PCL, 0             ; Go back to where we were
      
Ret2HP       
      movff   RetAddrH + 2, PCLATU ; Load PC buffers with return address
      movff   RetAddrH + 1, PCLATH
      movf    RetAddrH, W, 0
    clrf  BSR                    ; Set to BANK0 before returning
PREV_BANK = 0                    ; Tell PBP about the BANK change
      movwf   PCL, 0             ; Go back to where we were
    endm    
    
;---[Enable an interrupt source]----------------------------------------------
INT_ENABLE  macro  IntFlagReg, IntFlagBit
      GetIntInfo   IntFlagReg, IntFlagBit
      if (Found == YES)
          FindIntPriority  IntFlagReg, IntFlagBit
          if (Pfound == 1)
              if (INT_Priority_Reg != -1)
                  if (Priority == H)
                      bsf  INT_Priority_Reg, INT_Priority_Bit, 0
                  else
                      if (Priority == L)
                          bcf  INT_Priority_Reg, INT_Priority_Bit, 0
                      else
                          error "INT_ENABLE - Invalid Priority Specified"
                      endif
                  endif
              else
                  if (Priority == L)
                      error "INT0_INT can NOT be assigned to Low Priority"
                  endif
              endif
          else
              error "INT_ENABLE - Priority State Not Found"
          endif
;          bcf     INT_Flag_Reg, INT_Flag_Bit, 0        ; clear the flag first 
          bsf     INT_Enable_Reg, INT_Enable_Bit, 0    ; enable the INT source  
      else
          error  "INT_ENABLE - Interrupt Source not found!"
      endif
    endm    

;---[Disable an interrupt source]---------------------------------------------
INT_DISABLE  macro  IntFlagReg, IntFlagBit
      GetIntInfo   IntFlagReg, IntFlagBit
      if (Found == YES)
          bcf     INT_Enable_Reg, INT_Enable_Bit, 0   ; disable the INT source  
      else
          error "INT_DISABLE - Interrupt Source not found!"
      endif
    endm    

;---[Clear an interrupt Flag]-------------------------------------------------
INT_CLEAR  macro  IntFlagReg, IntFlagBit
      GetIntInfo   IntFlagReg, IntFlagBit
      if (Found == YES)
          bcf     INT_Flag_Reg, INT_Flag_Bit, 0       ; clear the INT flag
      else
          error "INT_CLEAR -  Interrupt Source not found!"
      endif
    endm



	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00860	ASM

	ASM?

Save_TBLPTR = 0

    ifdef SIN_USED
Save_TBLPTR = 1
    endif
    ifdef DTMFOUT_USED
Save_TBLPTR = 1
    endif
    ifdef SERDELAY_USED
Save_TBLPTR = 1
    endif
    ifdef CONVBIT_USED
Save_TBLPTR = 1
    endif
    ifdef ERASECODE_USED
Save_TBLPTR = 1
    endif
    ifdef READCODE_USED
Save_TBLPTR = 1
    endif
    ifdef WRITECODE_USED
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?BCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?BCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?BCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?CCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?CCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?CCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?WCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?WCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKDOWN?WCLW
Save_TBLPTR = 1
    endif
    ifdef LOOK2_USED 
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?BCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?BCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?BCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?CCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?CCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?CCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?TCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?TCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?TCLW
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?WCLB
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?WCLT
Save_TBLPTR = 1
    endif
    ifdef LOOKUP?WCLW
Save_TBLPTR = 1
    endif


	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00952	OVER_DT_INTS_18:

	LABEL?L	_OVER_DT_INTS_18	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\DT_INTS-18.BAS	00954	ENABLE DEBUG
	DENABLE?	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00085	    INCLUDE "ReEnterPBP-18.bas"     ; Include if using PBP interrupts

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00020	DISABLE DEBUG
	DDISABLE?	
; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00022	DEFINE   ReEnterHPused  1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00024	VarsSaved_H = 0
	MOVE?CT	000h, _VarsSaved_H

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00026	goto OverReEnterH
	GOTO?L	_OverReEnterH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00065	SavePBP_H:               ' Save all PBP system Vars High Priority

	LABEL?L	_SavePBP_H	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00066	  if VarsSaved_H = 0 then
	CMPNE?TCL	_VarsSaved_H, 000h, L00002

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00067	    R0_SaveH = R0
	MOVE?WW	R0, _R0_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00068	    R1_SaveH = R1
	MOVE?WW	R1, _R1_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00069	    R2_SaveH = R2
	MOVE?WW	R2, _R2_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00070	    R3_SaveH = R3
	MOVE?WW	R3, _R3_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00071	    asm

	ASM?

        if (PBPLongs_Used == 1)
            MOVE?WW  R0+2, _R0_SaveH+2
            MOVE?WW  R1+2, _R1_SaveH+2
            MOVE?WW  R2+2, _R2_SaveH+2
            MOVE?WW  R3+2, _R3_SaveH+2
        endif
    

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00079	    R4_SaveH = R4
	MOVE?WW	R4, _R4_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00080	    R5_SaveH = R5
	MOVE?WW	R5, _R5_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00081	    R6_SaveH = R6
	MOVE?WW	R6, _R6_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00082	    R7_SaveH = R7
	MOVE?WW	R7, _R7_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00083	    R8_SaveH = R8
	MOVE?WW	R8, _R8_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00084	    Flags_SaveH = FLAGS
	MOVE?BB	FLAGS, _Flags_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00085	    GOP_SaveH = GOP
	MOVE?BB	GOP, _GOP_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00086	    RM1_SaveH = RM1
	MOVE?BB	RM1, _RM1_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00087	    RM2_SaveH = RM2
	MOVE?BB	RM2, _RM2_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00088	    RR1_SaveH = RR1
	MOVE?BB	RR1, _RR1_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00089	    RR2_SaveH = RR2
	MOVE?BB	RR2, _RR2_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00090	@ if Save_TBLPTR == 1

	ASM?
 if Save_TBLPTR == 1

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00091	    TBLPTRU_SaveH = TBLPTRU
	MOVE?BB	TBLPTRU, _TBLPTRU_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00092	    TBLPTRH_SaveH = TBLPTRH
	MOVE?BB	TBLPTRH, _TBLPTRH_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00093	    TBLPTRL_SaveH = TBLPTRL
	MOVE?BB	TBLPTRL, _TBLPTRL_SaveH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00094	@ endif

	ASM?
 endif

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00095	    ASM

	ASM?

        ifdef RS1
            MOVE?BB    RS1, _RS1_SaveH
        endif
        ifdef RS2
            MOVE?BB    RS2, _RS2_SaveH
        endif
        ifdef MUL_USED
            MOVE?WW    PRODL, _Product_H
        endif
        ifdef T1
            MOVE?WW    T1, _T1_SaveH
            if (PBPLongs_Used == 1)
                MOVE?WW  T1+2, _T1_SaveH+2
            endif
        endif
        ifdef T2
            MOVE?WW    T2, _T2_SaveH
            if (PBPLongs_Used == 1)
                MOVE?WW  T2+2, _T2_SaveH+2
            endif
        endif
        ifdef T3
            MOVE?WW    T3, _T3_SaveH
            if (PBPLongs_Used == 1)
                MOVE?WW  T3+2, _T3_SaveH+2
            endif
        endif
        ifdef T4
            MOVE?WW    T4, _T4_SaveH
            if (PBPLongs_Used == 1)
                MOVE?WW  T4+2, _T4_SaveH+2
            endif
        endif
        ifdef T5
            MOVE?WW    T5, _T5_SaveH
            if (PBPLongs_Used == 1)
                MOVE?WW  T5+2, _T5_SaveH+2
            endif
        endif
        ifdef T6
            MOVE?WW    T6, _T6_SaveH
            if (PBPLongs_Used == 1)
                MOVE?WW  T6+2, _T6_SaveH+2
            endif
        endif
        ifdef T7
            MOVE?WW    T7, _T7_SaveH
            if (PBPLongs_Used == 1)
                MOVE?WW  T7+2, _T7_SaveH+2
            endif
        endif
    

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00148	    VarsSaved_H = 1
	MOVE?CT	001h, _VarsSaved_H

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00149	  endif
	LABEL?L	L00002	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00150	@ INT_RETURN

	ASM?
 INT_RETURN

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00152	RestorePBP_H:

	LABEL?L	_RestorePBP_H	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00153	  if VarsSaved_H = 1 then
	CMPNE?TCL	_VarsSaved_H, 001h, L00004

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00154	    R0 = R0_SaveH
	MOVE?WW	_R0_SaveH, R0

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00155	    R1 = R1_SaveH
	MOVE?WW	_R1_SaveH, R1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00156	    R2 = R2_SaveH
	MOVE?WW	_R2_SaveH, R2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00157	    R3 = R3_SaveH
	MOVE?WW	_R3_SaveH, R3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00158	    asm

	ASM?

        if (PBPLongs_Used == 1)
            MOVE?WW  _R0_SaveH+2, R0+2
            MOVE?WW  _R1_SaveH+2, R1+2 
            MOVE?WW  _R2_SaveH+2, R2+2 
            MOVE?WW  _R3_SaveH+2, R3+2 
        endif
    

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00166	    R4 = R4_SaveH
	MOVE?WW	_R4_SaveH, R4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00167	    R5 = R5_SaveH
	MOVE?WW	_R5_SaveH, R5

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00168	    R6 = R6_SaveH
	MOVE?WW	_R6_SaveH, R6

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00169	    R7 = R7_SaveH
	MOVE?WW	_R7_SaveH, R7

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00170	    R8 = R8_SaveH
	MOVE?WW	_R8_SaveH, R8

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00171	    FLAGS = Flags_SaveH
	MOVE?BB	_Flags_SaveH, FLAGS

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00172	    GOP = GOP_SaveH
	MOVE?BB	_GOP_SaveH, GOP

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00173	    RM1 = RM1_SaveH
	MOVE?BB	_RM1_SaveH, RM1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00174	    RM2 = RM2_SaveH
	MOVE?BB	_RM2_SaveH, RM2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00175	    RR1 = RR1_SaveH
	MOVE?BB	_RR1_SaveH, RR1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00176	    RR2 = RR2_SaveH
	MOVE?BB	_RR2_SaveH, RR2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00177	@ if Save_TBLPTR == 1

	ASM?
 if Save_TBLPTR == 1

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00178	    TBLPTRU = TBLPTRU_SaveH
	MOVE?BB	_TBLPTRU_SaveH, TBLPTRU

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00179	    TBLPTRH = TBLPTRH_SaveH
	MOVE?BB	_TBLPTRH_SaveH, TBLPTRH

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00180	    TBLPTRL = TBLPTRL_SaveH
	MOVE?BB	_TBLPTRL_SaveH, TBLPTRL

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00181	@ endif

	ASM?
 endif

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00182	    ASM

	ASM?

        ifdef RS1
            MOVE?BB    _RS1_SaveH, RS1
        endif
        ifdef RS2
            MOVE?BB    _RS2_SaveH, RS2
        endif
        ifdef MUL
            MOVE?WW    _Product_H, PRODL
        endif
        ifdef T1
            MOVE?WW    _T1_SaveH, T1
            if (PBPLongs_Used == 1)
                MOVE?WW  _T1_SaveH+2, T1+2 
            endif
        endif
        ifdef T2
            MOVE?WW    _T2_SaveH, T2
            if (PBPLongs_Used == 1)
                MOVE?WW  _T2_SaveH+2, T2+2 
            endif
        endif
        ifdef T3
            MOVE?WW    _T3_SaveH, T3
            if (PBPLongs_Used == 1)
                MOVE?WW  _T3_SaveH+2, T3+2 
            endif
        endif
        ifdef T4
            MOVE?WW    _T4_SaveH, T4
            if (PBPLongs_Used == 1)
                MOVE?WW  _T4_SaveH+2, T4+2 
            endif
        endif
        ifdef T5
            MOVE?WW    _T5_SaveH, T5
            if (PBPLongs_Used == 1)
                MOVE?WW  _T5_SaveH+2, T5+2 
            endif
        endif
        ifdef T6
            MOVE?WW    _T6_SaveH, T6
            if (PBPLongs_Used == 1)
                MOVE?WW  _T6_SaveH+2, T6+2 
            endif
        endif
        ifdef T7
            MOVE?WW    _T7_SaveH, T7
            if (PBPLongs_Used == 1)
                MOVE?WW  _T7_SaveH+2, T7+2 
            endif
        endif
        ifdef T8
            ifndef NO_T7_WARNING
                messg "Temp variables exceeding T7"
            endif
        endif
    

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00240	    VarsSaved_H = 0
	MOVE?CT	000h, _VarsSaved_H

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00241	  ENDIF
	LABEL?L	L00004	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00242	@ INT_RETURN

	ASM?
 INT_RETURN

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00244	OverReEnterH:

	LABEL?L	_OverReEnterH	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\REENTERPBP-18.BAS	00245	ENABLE DEBUG
	DENABLE?	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00087	    ASM

	ASM?

    INT_LIST  macro    
         INT_Handler   TMR1_INT,  _DoInputs,   PBP,  yes
        endm
        INT_CREATE               
    

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00093	    T1CON = %00110001                      
	MOVE?CB	031h, T1CON

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00094	    @ INT_ENABLE  TMR1_INT  'Upali tajmer  

	ASM?
 INT_ENABLE  TMR1_INT  

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00095	      _OutputA1 = 0
	MOVE?CT	000h, __OutputA1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00096	      _OutputA2 = 0
	MOVE?CT	000h, __OutputA2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00097	      _OutputA3 = 0
	MOVE?CT	000h, __OutputA3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00098	      _OutputA4 = 0
	MOVE?CT	000h, __OutputA4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00100	    pause 500	                   
	PAUSE?C	001F4h

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00102	Init:  

	LABEL?L	_Init	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00103	    sEROUT _rs232Tx,rs232_bps,[".........................................................................", 13,10] 
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00104	    sEROUT _rs232Tx,rs232_bps,["Init start", 13,10] 
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	049h
	SEROUT?C	06Eh
	SEROUT?C	069h
	SEROUT?C	074h
	SEROUT?C	020h
	SEROUT?C	073h
	SEROUT?C	074h
	SEROUT?C	061h
	SEROUT?C	072h
	SEROUT?C	074h
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00105	    SEROUT _rs232Tx,rs232_bps,["PickByLight FW:",#majorVer,".",#revisionver,13,10]
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	050h
	SEROUT?C	069h
	SEROUT?C	063h
	SEROUT?C	06Bh
	SEROUT?C	042h
	SEROUT?C	079h
	SEROUT?C	04Ch
	SEROUT?C	069h
	SEROUT?C	067h
	SEROUT?C	068h
	SEROUT?C	074h
	SEROUT?C	020h
	SEROUT?C	046h
	SEROUT?C	057h
	SEROUT?C	03Ah
	SEROUTD?C	_majorVer
	SEROUT?C	02Eh
	SEROUTD?C	_revisionVer
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00106	    SEROUT _rs232Tx,rs232_bps,["Tecomatic.net - Novi Sad",13,10]
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	054h
	SEROUT?C	065h
	SEROUT?C	063h
	SEROUT?C	06Fh
	SEROUT?C	06Dh
	SEROUT?C	061h
	SEROUT?C	074h
	SEROUT?C	069h
	SEROUT?C	063h
	SEROUT?C	02Eh
	SEROUT?C	06Eh
	SEROUT?C	065h
	SEROUT?C	074h
	SEROUT?C	020h
	SEROUT?C	02Dh
	SEROUT?C	020h
	SEROUT?C	04Eh
	SEROUT?C	06Fh
	SEROUT?C	076h
	SEROUT?C	069h
	SEROUT?C	020h
	SEROUT?C	053h
	SEROUT?C	061h
	SEROUT?C	064h
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00107	    SEROUT _rs232Tx,rs232_bps,["Year: 2021",13,10] 
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	059h
	SEROUT?C	065h
	SEROUT?C	061h
	SEROUT?C	072h
	SEROUT?C	03Ah
	SEROUT?C	020h
	SEROUT?C	032h
	SEROUT?C	030h
	SEROUT?C	032h
	SEROUT?C	031h
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00108	    SEROUT _rs232Tx,rs232_bps,["FW realese: 18.01.2021",13,10] 
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	046h
	SEROUT?C	057h
	SEROUT?C	020h
	SEROUT?C	072h
	SEROUT?C	065h
	SEROUT?C	061h
	SEROUT?C	06Ch
	SEROUT?C	065h
	SEROUT?C	073h
	SEROUT?C	065h
	SEROUT?C	03Ah
	SEROUT?C	020h
	SEROUT?C	031h
	SEROUT?C	038h
	SEROUT?C	02Eh
	SEROUT?C	030h
	SEROUT?C	031h
	SEROUT?C	02Eh
	SEROUT?C	032h
	SEROUT?C	030h
	SEROUT?C	032h
	SEROUT?C	031h
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00109	    sEROUT _rs232Tx,rs232_bps,[".........................................................................", 13,10] 
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	02Eh
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00110	    pause 30 
	PAUSE?C	01Eh

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00111	    gosub SendInterfaceDetail 
	GOSUB?L	_SendInterfaceDetail

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00112	    goto Main
	GOTO?L	_Main

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00114	Main:  

	LABEL?L	_Main	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00115	    gosub DoOutputs  
	GOSUB?L	_DoOutputs

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00116	    pause 50
	PAUSE?C	032h

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00117	goto Main 
	GOTO?L	_Main

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00120	DoInputs:

	LABEL?L	_DoInputs	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00121	    gosub ReadInputs
	GOSUB?L	_ReadInputs

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00122	    if InputA1 = 1 or InputA2 = 1 or InputA3 = 1 or InputA4 = 1  then gosub senddata
	CMPEQ?TCB	_InputA1, 001h, T1
	CMPEQ?TCB	_InputA2, 001h, T2
	LOR?BBW	T1, T2, T2
	CMPEQ?TCB	_InputA3, 001h, T3
	LOR?WBW	T2, T3, T3
	CMPEQ?TCB	_InputA4, 001h, T4
	LOR?WBW	T3, T4, T4
	CMPF?WL	T4, L00006
	GOSUB?L	_senddata
	LABEL?L	L00006	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00123	@ INT_RETURN

	ASM?
 INT_RETURN

	ENDASM?


; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00125	SendData:

	LABEL?L	_senddata	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00126	      sEROUT _rs232Tx,rs232_bps,["PBL-IN->",#InputA1,#InputA2,#InputA3,#InputA4,13,10] 
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	050h
	SEROUT?C	042h
	SEROUT?C	04Ch
	SEROUT?C	02Dh
	SEROUT?C	049h
	SEROUT?C	04Eh
	SEROUT?C	02Dh
	SEROUT?C	03Eh
	SEROUTD?T	_InputA1
	SEROUTD?T	_InputA2
	SEROUTD?T	_InputA3
	SEROUTD?T	_InputA4
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00127	      pause 50
	PAUSE?C	032h

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00128	Return
	RETURN?	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00130	DoOutputs:

	LABEL?L	_DoOutputs	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00131	     serin  _rs232Rx ,rs232_bps,["PBL-OUT->"],tmp[0],tmp[1],tmp[2],tmp[3]
	SERPIN?T	__rs232Rx
	SERMODE?C	_rs232_bps

	LABEL?L	L00001	
	SERINQ?CL	050h, L00001
	SERINQ?CL	042h, L00001
	SERINQ?CL	04Ch, L00001
	SERINQ?CL	02Dh, L00001
	SERINQ?CL	04Fh, L00001
	SERINQ?CL	055h, L00001
	SERINQ?CL	054h, L00001
	SERINQ?CL	02Dh, L00001
	SERINQ?CL	03Eh, L00001
	SERIN?B	_tmp
	SERIN?B	_tmp + 00001h
	SERIN?B	_tmp + 00002h
	SERIN?B	_tmp + 00003h

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00132	    _OutputA1 = tmp[0]
	MOVE?BT	_tmp, __OutputA1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00133	    _OutputA2 = tmp[1]
	MOVE?BT	_tmp + 00001h, __OutputA2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00134	    _OutputA3 = tmp[2]
	MOVE?BT	_tmp + 00002h, __OutputA3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00135	    _OutputA4 = tmp[3] 
	MOVE?BT	_tmp + 00003h, __OutputA4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00136	    _rs232Rx = 0
	MOVE?CT	000h, __rs232Rx

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00137	return
	RETURN?	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00139	SendInterfaceDetail: 

	LABEL?L	_SendInterfaceDetail	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00140	    sEROUT _rs232Tx,rs232_bps,["Interface SN:","4455",13,10] 
	SERPIN?T	__rs232Tx
	SERMODE?C	_rs232_bps
	SEROUT?C	049h
	SEROUT?C	06Eh
	SEROUT?C	074h
	SEROUT?C	065h
	SEROUT?C	072h
	SEROUT?C	066h
	SEROUT?C	061h
	SEROUT?C	063h
	SEROUT?C	065h
	SEROUT?C	020h
	SEROUT?C	053h
	SEROUT?C	04Eh
	SEROUT?C	03Ah
	SEROUT?C	034h
	SEROUT?C	034h
	SEROUT?C	035h
	SEROUT?C	035h
	SEROUT?C	00Dh
	SEROUT?C	00Ah

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00141	return
	RETURN?	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00143	ReadInputs: 

	LABEL?L	_ReadInputs	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00144	    NewStateA1 =  _inputA1
	MOVE?TT	__inputA1, _NewStateA1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00145	    NewStateA2 =  _inputA2
	MOVE?TT	__inputA2, _NewStateA2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00146	    NewStateA3 =  _inputA3
	MOVE?TT	__inputA3, _NewStateA3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00147	    NewStateA4 =  _inputA4
	MOVE?TT	__inputA4, _NewStateA4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00148	    if NewStateA1 < OldStateA1 then 
	CMPGE?TTL	_NewStateA1, _OldStateA1, L00008

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00149	        InputA1 = 1 
	MOVE?CT	001h, _InputA1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00150	    else
	GOTO?L	L00009
	LABEL?L	L00008	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00151	        InputA1 = 0 
	MOVE?CT	000h, _InputA1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00152	    ENDIF   
	LABEL?L	L00009	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00153	    if NewStateA2 < OldStateA2 then 
	CMPGE?TTL	_NewStateA2, _OldStateA2, L00010

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00154	        InputA2 = 1
	MOVE?CT	001h, _InputA2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00155	    else 
	GOTO?L	L00011
	LABEL?L	L00010	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00156	        InputA2 = 0
	MOVE?CT	000h, _InputA2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00157	    ENDIF    
	LABEL?L	L00011	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00158	    if NewStateA3 < OldStateA3 then 
	CMPGE?TTL	_NewStateA3, _OldStateA3, L00012

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00159	        InputA3= 1
	MOVE?CT	001h, _InputA3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00160	    else
	GOTO?L	L00013
	LABEL?L	L00012	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00161	        InputA3= 0
	MOVE?CT	000h, _InputA3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00162	    ENDIF    
	LABEL?L	L00013	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00163	    if NewStateA4 < OldStateA4 then 
	CMPGE?TTL	_NewStateA4, _OldStateA4, L00014

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00164	        InputA4 = 1
	MOVE?CT	001h, _InputA4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00165	    else
	GOTO?L	L00015
	LABEL?L	L00014	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00166	        InputA4 = 0
	MOVE?CT	000h, _InputA4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00167	    ENDIF    
	LABEL?L	L00015	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00168	    OldStateA1 = NewStateA1       
	MOVE?TT	_NewStateA1, _OldStateA1

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00169	    OldStateA2 = NewStateA2 
	MOVE?TT	_NewStateA2, _OldStateA2

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00170	    OldStateA3 = NewStateA3          
	MOVE?TT	_NewStateA3, _OldStateA3

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00171	    OldStateA4 = NewStateA4         
	MOVE?TT	_NewStateA4, _OldStateA4

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00172	return
	RETURN?	

; C:\USERS\DMILOSAVLJEVIC\DOCUMENTS\PROJECT\TECOMATIC\PICKBYLIGHT\PICKBYLIGHT.PBP	00174	end 'kraj :) 
	END?	

	END
