%% Template prepared by Manuel Barrios. Creation: April 8, 2024

CPU_SYSCLKOUT           =   192.5E6;  %CPU Clock
CPU_EPWMCLKDIV          =   1/2;    %By default
CPU_PWMCLK              =   CPU_SYSCLKOUT*CPU_EPWMCLKDIV;
CPU_HSPCLKDIV           =   1;      %By default
CPU_CLKDIV              =   1;      %By default
CPU_TBPRD               =   (0.5*CPU_PWMCLK)/(fsw*CPU_HSPCLKDIV*CPU_CLKDIV);
CPU_Timer_period        =   cast(CPU_TBPRD,"int16");
CPU_DAC_bits            =   (2^12)-1;
CPU_ADC_bits            =   (2^12)-1;
CPU_DAC_offset          =   CPU_DAC_bits/2;
CPU_ADC_inputvoltage    =   3;      
CPU_ADC_res             =   3/CPU_ADC_bits;
CPU_CLK_CYCLE           =   CPU_SYSCLKOUT*CPU_EPWMCLKDIV;
CPU_DT_HF               =   250E-9;     %Modify this value (nano seconds) in case you want to change the Deadtime.
CPU_RF_HF               =   cast(CPU_DT_HF/CPU_CLK_CYCLE^-1,"int16");  %RF means RED and FED