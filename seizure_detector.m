features = zeros(3, 540);

window_start = 1;
window_end = 10000;

for i = window_start:window_end
  
features(1, i) = amp_calculator(cleanA(3, window_start:window_end));
features(2, i) = zero_crossings(cleanA(3, window_start:window_end));
features(3, i) = line_length(cleanA(3, window_start:window_end));

amplitudes = features(1, 1:i);
crossings = features(2, 1:i);
length = features(3, 1:i);

window_start = window_start + 10000;
window_end = window_end + 10000;

end

tiledlayout(4,1);
nexttile
plot(cleanA(3, :));
xlabel("ms")
ylabel("mV")
title("Patient A Channel 3 - Neural Recording")
nexttile
plot(amplitudes)
xlabel("ms")
ylabel("mV")
title("Patient A Channel 3 - Amplitude")
nexttile
plot(crossings)
xlabel("ms")
ylabel("mV")
title("Patient A Channel 3 - Zero Crossings")
nexttile
plot(length)
ylabel("mV")
xlabel("ms")
title("Patient A Channel 3 - Line Length")


detector = zeros(1, 540);
for i = 1:540
    
if ((amplitudes(i) > 750 && amplitudes(i) < 1000) || (amplitudes(i) > 8000)) && ((length(i) > 33000 && length(i) < 60000) || (length(i) > 110000))
    
   detector(i) = 1;
    
end

end


tiledlayout(2, 1);
nexttile
plot(cleanA(3, :));
xlabel("ms")
ylabel("mV")
title("Patient B Channel 2 - Neural Recording")
nexttile
plot(detector)
xlabel("ms")
ylabel("Seizure")
ylim([0 2])
title("Patient B Channel 2 - Seizure Detection")


