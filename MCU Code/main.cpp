#include "mbed.h"

//Pin assignments
SPI SPI_Master (PA_7,PA_6,PA_5); 									//SPI1 MOSI, MISO, SCLK - PA_7, PA_6, PA_5
BusOut SPI_SS(PF_13, PF_14);											//
InterruptIn OVERFLOW(PF_4);
DigitalOut GreenLED(LED1);												//
DigitalIn Button(USER_BUTTON);										//
DigitalIn DO_NOT_USE(PB_12);    									// MAKE PB_12 (D19) an INPUT do NOT make an OUTPUT under any circumstances !!!!! ************* !!!!!!!!!!!
																									// This Pin is connected to the 5VDC from the FPGA card and an INPUT is 5V Tolerant
																								
//Definitions																				
#define SPI_SS_FIFO 0b01													//SS address for the FIFO  Register SPI slave module
#define SPI_SS_LCD 0b10													  //SS address for the LCD Data SPI slave module
#define SPI_SS_Deselect 0b11											//SS deselect word

#define SPI_R_SpaceAvaliable 0b10000000
#define SPI_R_FIFO_Config 0b10000001
#define SPI_R_FIFO_Value 0b11000000
#define SPI_W_FIFO_Config 0b10000001

#define SPI_R_LCD_SpaceAvaliable 0b10000000
#define SPI_W_LCD_SendChar 0b10000001
#define SPI_W_LCD_CMD 0b10000010

//Variables and Arrays
int *FIFO;
int FIFO_Config;																	//Avail Overflow Res Res Res Res Samp Reset <- bit loayout of FIFO config reg
int LCD_Mode = 1;
int Sampling = 0;
int LCD_Display_Err = 0;

static const int SPI_RESET = 0b00000001;
static const int SPI_START_SAMP = 0b00000010;

//Functions 
int SPI_SendRead(int d, int CS);									//Function to send and recieve data over SPI to slave modules
int Calc_HeartRate();															//Function to take values from an array and calcluate the instintenious and average heart rate
int LCD_SendString(char put[16]);									//Function to send a string over the LCD_SPI line 
int LCD_SendChar(unsigned char put);							//Function to send a character over the LCD_SPI line
int FIFO_Add(int Data_Add);												//Function to Adds a value to the MCU FIFO Buffer
int FIFO_Read();																	//Function to Read and remove a value from the FIFO Buffer
int BUTTON_PressCheck(void);											//Function to check for a button press (debounced)
int OVERFLOW_Detect(void);												//Function attached to the rising edge of the overflow input to inturrupt and block the code 
int SPI_Return_SpaceAval(); 											//Function to read the space avaliable in the FPGA FIFO buffer
int SPI_Return_FIFO_Config();											//Function to read the config register of the FPGA FIFO buffer
int SPI_Return_FIFO_Value();											//Function to read the value from the FPGA FIFO buffer
int SPI_Return_LCD_SpaceAval();										//Function to read the LCD space avaliable in FIFO buffer
void SPI_Send_FIFO_Config(int data);							//Function to send the FIFO_Config register from MCU to FPGA
void SPI_Send_LCD_Char(int data);									//Function to send characters to the LCD
void SPI_Send_LDC_CMD(int data);										//Function to send Commands/Instructions to the LCD



//Main code
int main()
{
	//This sets up the SPI when starting up the MCU
		
	printf("Initalising...\n\r");
			
	SPI_SS = SPI_SS_Deselect;                   		// Chip must be deselected, Chip Select is active LOW
	SPI_Master.format(8,0);            							// Setup the DATA frame SPI for 16 bit wide word, Clock Polarity 0 and Clock Phase 0 (0)
	SPI_Master.frequency(1000000);     							// 1MHz clock rate

	//Local Variables
	int SPI_recieved_data = 0;
	
	OVERFLOW.rise(&OVERFLOW_Detect);
	
	//This is the rest of the start up code.
	GreenLED = 1;
		
	printf("Initalised\n\r");
	
		

	//Inital reset of system
	SPI_Send_FIFO_Config(SPI_RESET);
	
	printf("Starting main loop.\n\r");
	
	//This is the main loop that happens after the initlisation has happend on start up		
	while(1)
	{
		if (BUTTON_PressCheck())
		{
			if(Sampling)
			{
				LCD_Mode = !LCD_Mode;
			} else {
				Sampling = 1;
			}
		}
		if(LCD_Mode == 1)
		{
			LCD_SendString((char*)"Current Heart Rate");
		} else {
			LCD_SendString((char*)"Average Heart Rate");
		}
		if(LCD_Display_Err == 1)
		{
			LCD_SendString((char*)"DISPLAY ERROR");
		}
	}
}

//SPI function to send and recieve data from the selected slave module. Input Data(0 if you dont want to send anything) and the slave module CS address)
int SPI_SendRead(int d, int SS)
{
	int SPI_Returned_Date = 0;
	SPI_SS = SS;																	//Select the device by seting chip select LOW
	//SPI_Master.write(0);												//Command -> writes twice in each function to retrieve data/register on next spi cycle
	SPI_Returned_Date = SPI_Master.write(d); 			// & 0x0F;  Mask to read back lower 4bit nibble
	SPI_SS = SPI_SS_Deselect;											//De-select the device by seting chip select HIGH
	return SPI_Returned_Date;    									//Returns recieved data from selected slave module
}


int Calc_HeartRate()
{
	int *RangeFind;
	for(int i = 0; i < 100; i++)
	{
		
	}
}

int LCD_SendString(char Data[16])
{
	for(int i = 0; Data[i]!='\0'; i++)
	{
	SPI_Send_LCD_Char(Data[i]);
	}
}

int FIFO_Add(int Data_Add)
{
	int Added = 0;
	int Index = 0;
	
	while(Added == 0)
	{
		if(FIFO[Index] == 0)
		{
			FIFO[Index] = Data_Add;
			Added = 1;
		}
	}
	
}

int FIFO_Read()
{
	int Return_Data = FIFO[0];
	int *Shift_Array;
	int Index = 1;
	int Shifted = 0;
	
	while(Shifted == 0)
	{
		if (FIFO[Index] != 0)
		{
			Shift_Array[Index - 1] = FIFO[Index];
			Index++;
		} else {
			Shifted = 1;
		}
	}
	
	
	Shifted = 0;
	Index = 0;
		while(Shifted == 0)
	{
		if (Shift_Array[Index] != 0)
		{
			FIFO[Index] = Shift_Array[Index];
			Index++;
		} else {
			Shifted = 1;
		}
	}
	
	return Return_Data;
}

int BUTTON_PressCheck(void)
{
	while(1){
		int Button_Bounce_Counter = 40;
		for(int i = 0; i <= 20; i++)
		{
			if (Button == 1)			//tests to see if the button has been pressed
			{
				Button_Bounce_Counter += 1;
			} else 
			{
				Button_Bounce_Counter -= 1;
			}
		}
		
		if(Button_Bounce_Counter > 60)
		{
			return 1;
		} else if (Button_Bounce_Counter < 20){
			return 0;
		} 
	}
}

int OVERFLOW_Detect(void)
{
	//stop sampling
	printf("BUFFER ERROR\n\r");
	while(1)
	{
		GreenLED = !GreenLED;
		wait_ms(250);
	}
}

int SPI_Return_SpaceAval()
{
	SPI_SendRead(SPI_R_SpaceAvaliable, SPI_SS_FIFO);
	int Rdata = SPI_SendRead(0, SPI_SS_Deselect);
	return Rdata;
}

int SPI_Return_FIFO_Config()
{
	SPI_SendRead(SPI_R_FIFO_Config, SPI_SS_FIFO);
	int Rdata = SPI_SendRead(0, SPI_SS_Deselect);
	return Rdata;
}

int SPI_Return_FIFO_Value()
{
	SPI_SendRead(SPI_R_FIFO_Value, SPI_SS_FIFO);
	int Rdata = SPI_SendRead(0, SPI_SS_Deselect);
	return Rdata;
}

int SPI_Return_LCD_SpaceAval()
{
	SPI_SendRead(SPI_R_LCD_SpaceAvaliable, SPI_SS_LCD);
	int Rdata = SPI_SendRead(0, SPI_SS_Deselect);
	return Rdata;
}

void SPI_Send_FIFO_Config(int data)
{
	SPI_SendRead(SPI_W_FIFO_Config, SPI_SS_FIFO);
	SPI_SendRead(data, SPI_SS_FIFO);
}

void SPI_Send_LCD_Char(int data)
{
	SPI_SendRead(SPI_W_LCD_SendChar, SPI_SS_LCD);
	SPI_SendRead(data, SPI_SS_LCD);
}

void SPI_Send_LDC_CMD(int data)
{
	SPI_SendRead(SPI_W_LCD_CMD, SPI_SS_LCD);
	SPI_SendRead(data, SPI_SS_LCD);
}
