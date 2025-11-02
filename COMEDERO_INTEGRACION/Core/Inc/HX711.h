#ifndef INC_HX711_H_
#define INC_HX711_H_

#include "stdint.h"
#include "stm32f1xx_hal.h"

/* Requirements:
 *  - Provide a TIM_HandleTypeDef configured at 1 MHz (1 µs tick).
 *  - Call HX711_Process() frequently from main loop or scheduler.
 */

/* Operation type passed to callback */
typedef enum {
    HX_OP_NONE = 0,
    HX_OP_READ,
    HX_OP_CALIBRATE
} hx711_operation_e;

/* Forward declare */
typedef struct hx711_s hx711_t;

/* Callback prototype */
typedef void (*hx711_cb_t)(hx711_t *dev, hx711_operation_e op, int32_t result_mg, void *user);

/* Public + internal fields (single definition to avoid redefinition errors).
 * NOTE: some "internal" members are exposed here for simplicity so the .c and .h match.
 */
struct hx711_s {
    /* Public configuration */
    GPIO_TypeDef *dt_port;
    uint16_t dt_pin;
    GPIO_TypeDef *sck_port;
    uint16_t sck_pin;
    TIM_HandleTypeDef *htim_us; /* timer at 1MHz */

    /* Calibration / scale */
    int32_t tare;                 /* raw offset */
    int32_t known_counts_per_mg;  /* counts per mg */
    int32_t FP;                   /* fixed point scale, e.g. 1000 */

    volatile uint8_t busy;        /* non-zero when an async op is in progress */

    /* --- internal fields used by implementation --- */
    uint8_t extra_pulses;         /* number of extra pulses for gain */
    uint8_t state;                /* internal state id (opaque to user) */
    uint32_t start_tick_ms;       /* HAL_GetTick at start for timeouts */

    /* bit reading */
    uint8_t bit_index;
    uint32_t current_raw;
    uint32_t target_us;           /* next target microsecond tick (from TIM counter) */

    /* averaging */
    uint8_t samples_target;
    uint8_t samples_done;
    int64_t accum;

    /* callback */
    hx711_cb_t cb;
    void *cb_user;

    /* calibration sequence bookkeeping */
    int32_t calibrate_known_weight;
    uint8_t cal_samples_tare;
    uint8_t cal_samples_known;
};

/* API */
void HX711_Construct(hx711_t *dev,
                     GPIO_TypeDef *dt_port, uint16_t dt_pin,
                     GPIO_TypeDef *sck_port, uint16_t sck_pin,
                     TIM_HandleTypeDef *htim_us,
                     int32_t fixed_point_scale);

void HX711_InitPins(hx711_t *dev);

int32_t HX711_ReadBlocking(hx711_t *dev);
int32_t HX711_GetAverageBlocking(hx711_t *dev, uint8_t samples);

int HX711_StartReadAsync(hx711_t *dev, uint8_t samples, hx711_cb_t cb, void *user);
int HX711_StartCalibrateAsync(hx711_t *dev,
                              int32_t knownWeight_mg,
                              uint8_t samples_for_tare,
                              uint8_t samples_for_known,
                              hx711_cb_t cb, void *user);

void HX711_Process(hx711_t *dev);

void HX711_CalibrateBlocking(hx711_t *dev, int32_t knownWeight_mg);
int32_t HX711_WeighBlocking(hx711_t *dev);

#endif /* INC_HX711_H_ */
