# STM32 Embedded Space Shooter / Invaders

An interactive arcade game built entirely from scratch using the stm32F401RCT6. This project implements a non-blocking, interrupt-driven embedded game engine featuring real-time accelerometer tilt controls, dynamic sprite rendering, bullet slot management, and bounding-box collision detection on an SSD1306 OLED display.

---

## 🚀 Features

- **Hardware-Driven Timing:** Utilizes STM32 hardware timers (`TIM1`) and Output Compare interrupts to govern background game ticks, enemy descent, and bullet physics without blocking the CPU with `HAL_Delay()`.
- **MPU6050 Tilt Controls:** Maps real-time roll data from an MPU6050 gyroscope/accelerometer via I2C to allow smooth left/right player ship movement by tilting your hardware.
- **Interrupt-Driven Firing:** Uses GPIO External Interrupts (`EXTI`) tied to a tactile switch to trigger weapon fire instantly.
- **Dynamic Slot-Based Bullet System:** Manages an independent 4-slot bullet array that handles active projectile rendering, boundary cleanup, and reuse.
- **Modular Architecture:** Clean separation of concerns across dedicated modules for rendering, physics/collisions, sensors, and sprites.

---

## 🛠️ Hardware Requirements

- **STM32 Microcontroller Board** (configured via STM32CubeIDE / HAL)
- **MPU6050** 6-Axis Accelerometer/Gyroscope Module (Connected via I2C1)
- **SSD1306 OLED Display** (128x64 pixels, I2C1)
- **Tactile Push Switch** (Connected to a designated EXTI GPIO pin with pull-down configuration)
- **Piezo Buzzer / Speaker** (Optional, wired to TIM1 Channel 1 for audio tone generation)

---

## 📂 Project Structure

```text
├── Core/
│   ├── Inc/
│   │   ├── main.h
│   │   ├── Renderer.h
│   │   ├── collision.h
│   │   ├── Sprites.h
│   │   ├── MPU_6050.h
│   │   └── ssd1306.h
│   └── Src/
│       ├── main.c          # System initialization, EXTI handlers, audio stubs
│       ├── Renderer.c      # Main rendering loop and screen state machines
│       ├── collision.c     # Hitbox and bounding-box collision logic
│       ├── Sprites.c       # Bitmap arrays for player ship, enemies, and bullets
│       └── MPU_6050.c      # I2C driver and roll/pitch extraction routines
```

---

## 🎯 Future Improvements & Roadmap

To bring this project from a functional prototype to a polished arcade experience, the following features and bug fixes are scheduled for upcoming iterations:

1. **Audio Integration (`audio.c` / `audio.h`):**
   - Hook up the existing timer PWM tone functions (`Tone`, `noTone`, `playLaser`, `playInvaderStep`) to trigger dynamically during game events (e.g., laser fire sound on button press, marching sound during enemy descent, explosion sound on collision).
2. **Minor Bug Fixes & Polish:**
   - Fine-tune enemy-to-player bottom collision boundaries so the "You Lose" state triggers consistently across all screen edge cases.
   - Optimize floating-point/integer conversion thresholds in `Render_Tilt()` to eliminate minor jittering when the MPU6050 is held completely still.
3. **Score Tracking & Win Condition:**
   - Implement an on-screen score counter that increments each time an enemy ship is successfully destroyed.
   - Add a "You Win" celebration state when all 4 enemy slots are cleared.
