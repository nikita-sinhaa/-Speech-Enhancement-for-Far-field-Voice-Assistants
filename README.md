# -Speech-Enhancement-for-Far-field-Voice-Assistants

## 🎯 Objective
Design a speech enhancement pipeline using beamforming and noise reduction to improve far-field audio captured by virtual microphones.

## 📁 Structure
- `c_firmware/`: Embedded C code for FRDM
- `matlab_simulation/`: Beamforming and noise suppression testing
- `frdm_drivers/`: HAL and codec interface (to be added)
- `output/`: WAV files + logs

## 🚀 Workflow
1. Simulate in MATLAB → `beamforming_sim.m`, `spectral_subtraction.m`
2. Deploy to FRDM with `main.c`
3. Live test via microphone array (real or simulated)

## 💡 Algorithms
- Delay-and-sum beamforming
- Spectral subtraction (NR)
- Simple VAD

## 👩‍💻 Author
**Nikita Sinha** 
-🔧 Firmware & Embedded Systems | M.S. Electrical and Computer Engineering
