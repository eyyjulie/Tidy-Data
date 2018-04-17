Human Activity Recognition Using Smartphones Dataset Code Book

Modified by Julie Macon. Original dataset and feature information from [1].

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we [1] captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time Acc-XYZ and time Gyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time body acc-XYZ and time gravity acc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time body acc jerk-XYZ and time body gyro jerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time body acc mag, time gravity acc mag, time body acc jerk mag, time body gyro mag, time body gyro jerk mag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freq body acc-XYZ, freq body acc jerk-XYZ, freq body gyro-XYZ, freq  body acc  jerk mag, freq body gyro mag, freq body gyro jerk mag.

| Variable | Definition |
| --- | --- |
| subject | Identifier for one of the 30 volunteers within the 19-48 -year age bracket participating in the experiment. |
| activity | WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, STANDING, LAYING |
| time body acc  mean x | Mean body acceleration x-direction signal (time domain) |
| time body acc  mean y | Mean body acceleration y-direction signal (time domain) |
| time body acc  mean z | Mean body acceleration z-direction signal  (time domain) |
| time body acc  std x | Standard deviation body acceleration x-direction signal  (time domain) |
| time body acc  std y | Standard deviation body acceleration y-direction signal  (time domain) |
| time body acc  std z | Standard deviation body acceleration z-direction signal  (time domain) |
| time gravity acc  mean x | Mean gravity acceleration x-direction signal (time domain) |
| time gravity acc  mean y | Mean gravity acceleration y-direction signal (time domain) |
| time gravity acc  mean z | Mean gravity acceleration z-direction signal  (time domain) |
| time gravity acc  std x | Standard deviation gravity acceleration x-direction signal  (time domain) |
| time gravity acc  std y | Standard deviation gravity acceleration y-direction signal  (time domain) |
| time gravity acc  std z | Standard deviation gravity acceleration z-direction signal  (time domain) |
| time body acc jerk  mean x | Mean body acceleration jerk x-direction signal (time domain) |
| time body acc jerk  mean y | Mean body acceleration jerk y-direction signal (time domain) |
| time body acc jerk  mean z | Mean body acceleration jerk z-direction signal  (time domain) |
| time body acc jerk  std x | Standard deviation body acceleration jerk x-direction signal  (time domain) |
| time body acc jerk  std y | Standard deviation body acceleration jerk y-direction signal  (time domain) |
| time body acc jerk  std z | Standard deviation body acceleration jerk z-direction signal  (time domain) |
| time body gyro mean x | Mean body angular velocity x-direction signal (time domain) |
| time body gyro mean y | Mean body angular velocity y-direction signal (time domain) |
| time body gyro mean z | Mean body angular velocity z-direction signal  (time domain) |
| time body gyro std x | Standard deviation body angular velocity x-direction signal  (time domain) |
| time body gyro std y | Standard deviation body angular velocity y-direction signal  (time domain) |
| time body gyro std z | Standard deviation body angular velocity z-direction signal  (time domain) |
| time body gyro jerk  mean x | Mean body angular velocity jerk x-direction signal (time domain) |
| time body gyro jerk  mean y | Mean body angular velocity jerk y-direction signal (time domain) |
| time body gyro jerk  mean z | Mean body angular velocity jerk z-direction signal  (time domain) |
| time body gyro jerk  std x | Standard deviation body angular velocity jerk x-direction signal  (time domain) |
| time body gyro jerk  std y | Standard deviation body angular velocity jerk y-direction signal  (time domain) |
| time body gyro jerk  std z | Standard deviation body angular velocity jerk z-direction signal  (time domain) |
| time body acc mag mean | Mean body acceleration magnitude (time domain) |
| time body acc mag std | Standard deviation body acceleration magnitude (time domain) |
| time gravity acc mag mean | Mean gravity acceleration magnitude (time domain) |
| time gravity acc mag std | Standard deviation gravity acceleration magnitude (time domain) |
| time body acc jerk mag mean | Mean body acceleration jerk magnitude (time domain) |
| time body acc jerk mag std | Standard deviation body acceleration jerk magnitude (time domain) |
| time body gyro mag mean | Mean body angular velocity magnitude (time domain) |
| time body gyro mag std | Standard deviation body angular velocity magnitude (time domain) |
| time body gyro jerk mag mean | Mean body angular velocity jerk magnitude (time domain) |
| time body gyro jerk mag std | Standard deviation body angular velocity jerk magnitude (time domain) |
| freq body acc  mean x | Mean body acceleration x-direction signal (frequency domain) |
| freq body acc  mean y | Mean body acceleration y-direction signal (frequency domain) |
| freq body acc  mean z | Mean body acceleration z-direction signal  (frequency domain) |
| freq body acc  std x | Standard deviation body acceleration x-direction signal  (frequency domain) |
| freq body acc  std y | Standard deviation body acceleration y-direction signal  (frequency domain) |
| freq body acc  std z | Standard deviation body acceleration z-direction signal  (frequency domain) |
| freq body acc  mean freq x | Mean body acceleration frequency x-direction signal (frequency domain) |
| freq body acc  mean freq y | Mean body acceleration frequency y-direction signal (frequency domain) |
| freq body acc  mean freq z | Mean body acceleration frequency z-direction signal  (frequency domain) |
| freq body acc jerk  mean x | Mean body acceleration jerk x-direction signal (frequency domain) |
| freq body acc jerk  mean y | Mean body acceleration jerk y-direction signal (frequency domain) |
| freq body acc jerk  mean z | Mean body acceleration jerk z-direction signal  (frequency domain) |
| freq body acc jerk  std x | Standard deviation body acceleration jerk x-direction signal  (frequency domain) |
| freq body acc jerk  std y | Standard deviation body acceleration jerk y-direction signal  (frequency domain) |
| freq body acc jerk  std z | Standard deviation body acceleration jerk z-direction signal  (frequency domain) |
| freq body acc jerk  mean freq x | Mean body acceleration jerk frequency x-direction signal (frequency domain) |
| freq body acc jerk  mean freq y | Mean body acceleration jerk frequency y-direction signal (frequency domain) |
| freq body acc jerk  mean freq z | Mean body acceleration jerk frequency z-direction signal  (frequency domain) |
| freq body gyro mean x | Mean body angular velocity x-direction signal (frequency domain) |
| freq body gyro mean y | Mean body angular velocity y-direction signal (frequency domain) |
| freq body gyro mean z | Mean body angular velocity z-direction signal  (frequency domain) |
| freq body gyro std x | Standard deviation body angular velocity x-direction signal  (frequency domain) |
| freq body gyro std y | Standard deviation body angular velocity y-direction signal  (frequency domain) |
| freq body gyro std z | Standard deviation body angular velocity z-direction signal  (frequency domain) |
| freq body gyro mean freq x | Mean body angular velocity frequency x-direction signal (frequency domain) |
| freq body gyro mean freq y | Mean body angular velocity frequency y-direction signal (frequency domain) |
| freq body gyro mean freq z | Mean body angular velocity frequency z-direction signal  (frequency domain) |
| freq body acc mag mean | Mean body acceleration magnitude (frequency domain) |
| freq body acc mag std | Standard deviation body acceleration magnitude (frequency domain) |
| freq body acc mag mean freq | Mean body acceleration magnitude frequency (frequency domain) |
| freq body acc jerk mag mean | Mean body acceleration jerk magnitude (frequency domain) |
| freq body acc jerk mag std | Standard deviation body acceleration jerk magnitude (frequency domain) |
| freq body acc jerk mag mean freq | Mean body acceleration jerk magnitude frequency (frequency domain) |
| freq body gyro mag mean | Mean body angular velocity magnitude (frequency domain) |
| freq body gyro mag std | Standard deviation body angular velocity magnitude (frequency domain) |
| freq body gyro mag mean freq | Mean body angular velocity magnitude frequency (frequency domain) |
| freq body gyro jerk mag mean | Mean body angular velocity jerk magnitude (frequency domain) |
| freq body gyro jerk mag std | Standard deviation body angular velocity jerk magnitude (frequency domain) |
| freq body gyro jerk mag mean freq | Mean body angular velocity jerk magnitude frequency (frequency domain) |
| angle time body acc mean gravity | Mean body acceleration gravity on angle |
| angle time body acc jerk mean gravity mean | Mean body acceleration gravity jerk on angle |
| angle time body gyro mean gravity mean | Mean body angular velocity gravity on angle |
| angle time body gyro jerk mean gravity mean | Mean body angular velocity gravity jerk on angle |
| anglex gravity mean | Mean angle gravity x-direction |
| angley gravity mean | Mean angle gravity y-direction |
| anglez gravity mean | Mean angle gravity z-direction |

License:

========

Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
