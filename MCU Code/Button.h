#include <stm32f4xx.h>

#define ButtonMask  (1<<13)		//Sets up a mask because Push button 1 (On board push button) is set to PC13

void BUTTONT_Initalise(void);
int BUTTON_PressCheck(void);
