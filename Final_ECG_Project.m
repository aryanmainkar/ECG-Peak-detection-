% Peak Detection Script#1

clear all;
close  all;

% Menu option 
ECGfiles = {'100m';'208m'};
ECG_options = ECGfiles(:,1);
ECG_file = menu('Select the file to be evaluated: ',ECG_options);

if ECG_file == 1
load '100m.mat'
end

if ECG_file == 2
load '208m.mat'
end

% Extracting data from Val function

y = val(1,:); % extract ECG magnitude from val, row 1
t = val(1,:); % extract time magnitude from val,  column 1

sampling_time = 0.003; % time between data points in seconds

t(1:length(y)) = ((1:length(y))-1)*sampling_time; % create a time array for ECG signal y by multiplying index with sampling rate
                                                                           
 m = 0; % initialize s valley counter
threshold = -80;

% Filtering out the noise from the data

for j = 1:length(t)-10   ;
    
    yn(j) = mean(y(j:j+10));
    
end

for i = 1:length(yn)-2   % start for loop 
   
    if (yn(i+1)-yn(i)< 0) & (yn(i+2)-yn(i+1) >= 0) & yn(i)< threshold         % conditional statement to find valleys                                                                                    
      m = m+1;        % counter for valleys
      Valleys(m) = y(i+1);     % magnitude of the valley
      Valley_LOC(m) = i+1; % location of the valley
 
      S(m) = i+1;     % index value of the valley
      TS(m)= t(i+1); % time value of the valley
  else
      % add more statements if additional conditions have to be satisfied
  end % end for conditional loop
  
end   % end of for loop

% Calculating time interval between S valleys
 for j = 1:(m-1)
     
     SS(j) = (S(j+1)-S(j))*sampling_time; 
     
 end

% Plotting ECG Signal 

subplot (2, 1, 1);
set(gca,'fontsize', 12);
plot(y)
hold on
plot(yn,'-r')
title('ECG Signal');
xlabel ('time(sec)'); ylabel ('ECG magnitude (mV)');

% Plotting the SS interval
 subplot (2, 1, 2);
 set(gca,'fontsize', 12);
 plot(TS(1:m-1),SS);
 title ('SS Interval');
 xlabel ('time(sec)'); ylabel ('SS interval (sec)');

% Output statement
 No_V = size(Valleys(1,:));
 No_V1 = No_V(:,2);
 fprintf('The total number of s valleys are:%0.0f \n',No_V1)

 






