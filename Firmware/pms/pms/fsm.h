#ifndef FSM_H_
#define FSM_H_

#define PMS_START 1
#define PMS_CHARGE 2
#define PMS_PV_CHARGE 3
#define PMS_DISCHARGE 4
#define PMS_SHUTDOWN 255

//TODO
//#define PMS_SLEEP 6

extern uint8_t pms_state;
extern uint8_t pms_next_state;
uint8_t pms_state;
uint8_t pms_next_state;

void determine_state();


#endif