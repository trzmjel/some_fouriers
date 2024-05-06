% Parametry sygnału
A = 1;
f = 73; % Hz
t1= 2; % sekundy
t2= 2; % sekundy
phi = 0;
n = 1;
czestotliwosc_probkowania = 500; % Hz
czas_trwania = 5; %s

% Czas sygnału
t = linspace(0, czas_trwania, czas_trwania * czestotliwosc_probkowania);

% Generowanie sygnału sinusoidalnego
sygnal = A * (t / t1).^n ./ 1+(t/t1).^n .* exp(-t/t2) .* cos(2 * pi * f * t + phi);

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
