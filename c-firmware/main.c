
#include <stdio.h>
#include "audio_buffer.h"
#include "beamformer.h"
#include "noise_reduction.h"
#include "vad.h"

int main() {
    init_audio();
    while (1) {
        if (is_voice_active()) {
            apply_beamforming();
            apply_noise_reduction();
            output_audio();
        }
    }
    return 0;
}
