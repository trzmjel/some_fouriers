% Parametry sygnału
amplituda = 1;
czestotliwosc = 73; % Hz
czas_trwania = 2; % sekundy
czestotliwosc_probkowania = 500; % Hz

% Czas sygnału
t = linspace(0, czas_trwania, czas_trwania * czestotliwosc_probkowania);

% Generowanie sygnału sinusoidalnego
sygnal = amplituda * sin(2 * pi * czestotliwosc * t);

% Transformaty Fouriera
widmo = abs(fft(sygnal));
f = linspace(0, czestotliwosc_probkowania, length(widmo));

% Wykresy
subplot(2, 1, 1);
plot(t, sygnal);
title('Sygnał sinusoidalny w dziedzinie czasu');
xlabel('Czas [s]');
ylabel('Amplituda');

subplot(2, 1, 2);
plot(f, widmo);
title('Widmo częstotliwościowe');
xlabel('Częstotliwość [Hz]');
ylabel('Amplituda');
pause
