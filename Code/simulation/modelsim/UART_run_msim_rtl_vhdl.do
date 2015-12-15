transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/Rami Code/enardFF_2.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/UART.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/eightBitRegister.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/Recepteur.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/VitesseDeBaud.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/Emetteur.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/ControleurUART.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/eightBitShiftRegister.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/RecepteurControl.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/clk_div41.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/clk_div256.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/eightToOneMux.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/controleur_emetteur.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/eightBitShiftRegister_emetteur.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/clk_div2.vhd}
vcom -93 -work work {C:/Users/David/Desktop/Projet_Marc/Code/endArdFF_2R1.vhd}

