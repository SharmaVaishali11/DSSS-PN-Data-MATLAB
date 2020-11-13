clc 
clear all
pnSequence = comm.PNSequence('Polynomial',[3 2 0],'SamplesPerFrame',20,'InitialConditions',[0 0 1]);
x1 = pnSequence()
subplot(3,1,1)
stairs(x1)
title('PN Sequence')
xlabel('bit value')
ylabel('amplitude')

for i=1:20
    r(i)=rand
    if r(i)<0.5
        b(i)=0
    else
        b(i)=1
    end
end
subplot(3,1,2)
stairs(b)
title('Data Sequence')
xlabel('bit value')
ylabel('amplitude')

y=xor(x1,b)
subplot(3,1,3)
stairs(y)
title('Output Sequence')
xlabel('bit value')
ylabel('amplitude')

