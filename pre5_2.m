%created by Semih BOLUKBASI - Beyza KARACA
clc
clear
close all

t = 0:1e-5:8e-3; %current
ac = 4 * sin(2 * pi * 1e3 * t);

out = 0; %output voltage

%During Positive Half Cycle: Output voltage (VO) = 0 Volts
%During Negative Half Cycle: Output voltage (VO) = (Vin + Vd) Volts
for i=1:length(ac)-1
    if ac(i) >= 0
        out(end+1) = 0;
    else
        out(end+1) = ac(i) + 0.7;
    end
end

plot(t,ac,'b')
hold on
plot(t,out,'r')
legend("Input Voltage","Output Voltage",'location',"southeast")
title('AC V-t Graph')
xlabel('Time (t)')
ylabel('Voltage (V)')



