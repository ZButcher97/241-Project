#include "mbed.h"

//Pin assignments
SPI SPI_Master (PA_7,PA_6,PA_5); 								//SPI1 MOSI, MISO, SCLK - PA_7, PA_6, PA_5
BusOut SPI_CS(PF_13, PF_14);										//
DigitalOut GreenLED(LED1);											//
DigitalIn Button(USER_BUTTON);									//
DigitalIn DO_NOT_USE(PB_12);    								// MAKE PB_12 (D19) an INPUT do NOT make an OUTPUT under any circumstances !!!!! ************* !!!!!!!!!!!
																								// This Pin is connected to the 5VDC from the FPGA card and an INPUT is 5V Tolerant
//Definitions																				
#define SPI_CS_Character 01;										//CS address for the display character slave module 
#define SPI_CS_Mode 10;													//CS address for the display mode slave module
#define SPI_CS_Deselect 11;											//CS deselect word
#define SPI_Data_None 0;												//SPI send no data word

//Functions 
int SPI_SendRead(int d, int CS);

//Main code
int main()
{
		//This sets up the SPI when starting up the MCU
		
		printf("Initalising.../n/r");
			
		SPI_CS = SPI_CS_Deselect;                   // Chip must be deselected, Chip Select is active LOW
		spi.format(8,0);            								// Setup the DATA frame SPI for 16 bit wide word, Clock Polarity 0 and Clock Phase 0 (0)
		spi.frequency(1000000);     								// 1MHz clock rate

		//Local Variables
		int SPI_test_send_data = 0b11111111;
		int SPI_recieved_data = 0;
	
		//This is the rest of the start up code.
		GreenLED = 1;
		
		printf("Initalised/n/r");
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
				
				SPI_recieved_data(SPI_test_send_data, 00);
				wait_ms(20);
		}
}

//SPI function to send and recieve data from the selected slave module. Input Data(0 if you dont want to send anything) and the slave module CS address)
int SPI_SendRead(int d, int CS)
{
		int SPI_Returned_Date = 0;
		SPI_CS = CS;																//Select the device by seting chip select LOW
		SPI_Master.write(0);												//Command
		SPI_Returned_Date = SPI_Master.write(d); 		// & 0x0F;  Mask to read back lower 4bit nibble
		SPI_CS = SPI_CS_Deselect;										//De-select the device by seting chip select HIGH
		return SPI_Returned_Date;    								//Returns recieved data from selected slave module
}

int SPI_ConfigReg(int Reset, int Samp)
{
	int RegValue = 0;
	int Instruction = 0;
	
	
}