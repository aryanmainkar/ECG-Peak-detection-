% Peak Detection Script#1

clear all; 
close all;

t=0:0.001:1;
noise=0%rand(1,length(t));
y=sin(2*pi*5*t)+0.1*noise; 
z=t+sin(2*pi*5*t)+ sin(2*pi*10*t)+0.1*noise;

%Removing noise using moving average filter

for j=1:length(t)-50;   %20 is the rolling/average element
    
    zn(j)=mean(z(j:j+50));
    
end

                                      
n=0; % initialize peak counter

threshold=0.5;

for i=1:length(zn)-2   % start for loop 
   
    
  if (zn(i+1)-zn(i)>0) &  (zn(i+2)-zn(i+1) <= 0) &  zn(i) > threshold
                                                       
    
      n=n+1;        % counter for peak indices
      
      
  else
      % add more statements if additional conditions have to be satisfied
  end % end for conditional loop
  
end   % end of for loop

plot(t,z1)
hold on
plot(t,z,'g')
hold on 
plot(t,detrend(z),'-r')



