# STM32 Space Invaders

An interactive arcade game built entirely from scratch on stm32f401RCT6. This project implements a non-blocking, interrupt-driven embedded game engine featuring real-time gyroscope tilt controls, dynamic sprite rendering, bullet slot management, and bounding-box collision detection on an SSD1306 OLED display.

## 🚀 Features

* **Hardware-Driven Timing:** Utilizes STM32 hardware timers (`TIM1`) and Output Compare interrupts to govern background game ticks, enemy descent, and bullet physics without blocking the CPU with `HAL_Delay()`.

* **MPU6050 Tilt Controls:** Maps real-time roll data from an MPU6050 gyroscope/accelerometer via I2C to allow smooth left/right player ship movement by tilting your hardware.

* **Interrupt-Driven Firing:** Uses GPIO External Interrupts (`EXTI`) tied to a tactile switch to trigger weapon fire instantly.

* **Dynamic Slot-Based Bullet System:** Manages an independent 4-slot bullet array that handles active projectile rendering, boundary cleanup, and reuse.

* **Modular Architecture:** Clean separation of concerns across dedicated modules for rendering, physics/collisions, sensors, and sprites.

## 🛠️ Hardware Requirements

* **STM32 Microcontroller Board** (configured via STM32CubeIDE / HAL)
* **MPU6050** 6-Axis Accelerometer/Gyroscope Module (Connected via I2C1)
* **SSD1306 OLED Display** (128x64 pixels, I2C1)
* **Tactile Push Switch** (Connected to a designated EXTI GPIO pin with pull-down configuration)
* **Piezo Buzzer / Speaker** (Optional, wired to TIM1 Channel 1 for audio tone generation)

## 📂 Project Directory Structure

```
├── Core/
│   ├── Inc/
│   │   ├── main.h
│   │   ├── Renderer.h
│   │   ├── collision.h
│   │   ├── Sprites.h
│   │   ├── MPU_6050.h
│   │   ├── ssd1306.h
│   │   ├── ssd1306_conf.h
│   │   └── ssd1306_fonts.h
│   └── Src/
│       ├── main.c          # System initialization, EXTI handlers, audio stubs
│       ├── Renderer.c      # Main rendering loop and screen state machines
│       ├── collision.c     # Hitbox and bounding-box collision logic
│       ├── Sprites.c       # Bitmap arrays for player ship, enemies, and bullets
│       ├── MPU_6050.c      # I2C driver and roll/pitch extraction routines
│       └── ssd1306.c       # OLED display driver routines
```

## 🎯 Roadmap & Future Improvements

1. **Universal STM32 Portability:** 
   - Refactor hardware-specific configurations to allow seamless porting and compilation across *all* STM32 microcontroller families (F1, F4, G4, H7, etc.).
2. **Audio Integration (`audio.c` / `audio.h`):**
   - Hook up the existing timer PWM tone functions (`Tone`, `noTone`, `playLaser`, `playInvaderStep`) to trigger dynamically during game events.
3. **Bug Fixes & Polish:**
   - Fine-tune collision boundary edge cases and optimize accelerometer tilt jitter thresholds.
4. **Score Tracking & Win Condition:**
   - Implement an on-screen score counter and a win celebration state.
