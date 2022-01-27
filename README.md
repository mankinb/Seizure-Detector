Seizure Detector

This program written in MATLAB works on three channels of human EEG data. The data I used was sampled at 3 kHz.

Neural recordings are evaluated on the basis of:

1. Signal amplitude
2. Zero Crossings
3. Line Length

It works by looping through the data in 10-second windows for the duration of the recording.

Results are displayed graphically.

I trained this algorithm on one dataset, then tested on a secondary set, modifying the parameters such that it works fairly well for both patients with distinct neural recordings.