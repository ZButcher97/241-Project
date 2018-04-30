#include "mbed.h"

//Pin assignments
SPI SPI_Master (PA_7,PA_6,PA_5); 								//SPI1 MOSI, MISO, SCLK - PA_7, PA_6, PA_5
BusOut SPI_SS(PF_13, PF_14);										//
DigitalOut GreenLED(LED1);											//
DigitalIn Button(USER_BUTTON);									//
DigitalIn DO_NOT_USE(PB_12);    								// MAKE PB_12 (D19) an INPUT do NOT make an OUTPUT under any circumstances !!!!! ************* !!!!!!!!!!!
																								// This Pin is connected to the 5VDC from the FPGA card and an INPUT is 5V Tolerant
//Definitions																				
#define SPI_SS_ConfigReg 01;										//SS address for the Config Register SPI slave module
#define SPI_SS_DataReg 10;											//SS address for the Data Register SPI slave module
#define SPI_SS_LCD 00;													//SS address for the LCD Data SPI slave module
#define SPI_SS_Deselect 11;											//SS deselect word
#define SPI_Data_None 0;												//SPI send no data word
#define SPI_LCD_Mode 000000010000;							//Bit that sets the mode for the LCD 
#define SPI_Reset	000000000100;									//Reset bit for the FPGA
#define SPI_Sampling 000000000010;							//Sampling enable/disable bit
#define SPI_MASK_Overflow 000000000001;					//Mask to read the Overflow bit 
#define SPI_MASK_Avaliable 000000001000;				//Mask to read the Avaliable bit
#define SPI_MASK_FIFOLength 111100000000;				//Mask to read the FIFO length 

//Functions 
int SPI_SendRead(int d, int CS);
int SPI_ConfigReg(int Reset, int Samp, int Mode);
int Calc_HeartRate();
int NormData();
int LCD_SendChar();

//Main code
int main()
{
		//This sets up the SPI when starting up the MCU
		
		printf("Initalising.../n/r");
			
		SPI_SS = SPI_SS_Deselect;                   // Chip must be deselected, Chip Select is active LOW
		SPI.format(8,0);            								// Setup the DATA frame SPI for 16 bit wide word, Clock Polarity 0 and Clock Phase 0 (0)
		SPI.frequency(1000000);     								// 1MHz clock rate

		//Local Variables
		int SPI_test_send_data = 0b11111111;
		int SPI_recieved_data = 0;
	
		//This is the rest of the start up code.
		GreenLED = 1;
		
		printf("Initalised/n/r");
		
		SPI_SendRead(SPI_Reset, SPI_SS_ConfigRed);
		
	
		printf("Starting main loop./n/r");
	
		//This is the main loop that happens after the initlisation has happend on start up		
		while(1)
		{
				if(Button == 1)
				{
						SPI_test_send_data = 0b11111111;
						//LED and printf are for debugging
						GreenLED = 1;
						printf("Button Pressed/n/r");
				} else {
						SPI_test_send_data = 0b00000000;
						GreenLED = 0;
				}
				
				SPI_SendRead(SPI_test_send_data, 00);
				wait_ms(20);
		}
}

//SPI function to send and recieve data from the selected slave module. Input Data(0 if you dont want to send anything) and the slave module CS address)
int SPI_SendRead(int d, int SS)
{
		int SPI_Returned_Date = 0;
		SPI_SS = SS;																//Select the device by seting chip select LOW
		SPI_Master.write(0);												//Command
		SPI_Returned_Date = SPI_Master.write(d); 		// & 0x0F;  Mask to read back lower 4bit nibble
		SPI_SS = SPI_SS_Deselect;										//De-select the device by seting chip select HIGH
		return SPI_Returned_Date;    								//Returns recieved data from selected slave module
}

int SPI_ConfigReg(int Reset, int Samp, int Mode)
{
	int SS = SPI_SS_ConfigReg;
	int RegValue = 0;
	int Instruction = 0;
	int Overflow = SPI_MASK_Overflow;
	int Avaliable = SPI_MASK_Avaliable;
	long long FifoLen = SPI_MASK_FIFOLength;
	if(Reset) 
	{
		Instruction |= SPI_Reset;
	}
	if(Samp) 
	{
				Instruction |= SPI_Sampling;
	}
	if(Mode)
	{
				Instruction |= SPI_LCD_Mode;
	}
	
	RegValue = SPI_SendRead(Instruction, SS);
	
	return RegValue;
	
//	Overflow &= RegValue; 											//This is used to split the word into the bits neede and this should be included in the main() code
//	Avaliable &= RegValue;
//	FifoLen &= RegValue;
	
}

int Calc_HeartRate()
{
	
}

int NormData()
{
	
}

int LCD_SendChar()
{
	
}