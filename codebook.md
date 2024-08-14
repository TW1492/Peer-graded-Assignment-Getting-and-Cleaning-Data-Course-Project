# Code Book

This code book describes the data and the 68 variables of the data file "TidyDataAverages.txt". The data is based on an experiment performed by the scientists Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz which was published in the article "Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine" in the workshop proceedings "International Workshop of Ambient Assisted Living (IWAAL 2012)" in November, 2012. The raw data set of this experiment is can be dowloaded via the following url: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.


## Description of the experiment

We begin with a description of the underlying experiment: 30 participants of the age 19-49 were equipped with a smart phone (Samsung Galaxy S II). Then, each of the individuals performed the activities walking, walking upstairs, walking down stairs, sitting, standing and laying. During these activitites a accelerometer and gyroscope of the phone took in 50Hz frequency several measurements. The acceleration signal is split into a body acceleration and gravity acceleration each in direction of the X,Y,Z-axis repectively. The gyroscope measured the angular velocity of the participants body with respect to the X,Y,Z-axis respectively. From these signals, jerk signals were obtained via derivation. Likewise, magnitude signals were obtained by taking absolute values of the acceleration, jerk, angular velocity and angular jerk. Finally, fast Fourier transformation was applied to some of the signals to transform the time based data into frequency based data.

## Description of the data
The file "TidyDataAverages.txt" contains the average of the means and standard deviations for each individual subject and each activity of the following signals that were recorded in the experiment:

- Body component acceleration in direction of the X,Y,Z-axis
- Magnitude of body component of acceleration
- Body component jerk in direction of the X,Y,Z-axis
- Magnitude of body component of jerk 
- Gravity component acceleration in direction of the X,Y,Z-axis
- Magnitude of gravity component of acceleration
- Gravity component jerk in direction of the X,Y,Z-axis
- Magnitude of gravity component of jerk 
- Angular velocity of body of participant with respect to X,Y,Z-axis
- Magnitude of angular velocity of participant
- Angular jerk of body of participant with respect to X,Y,Z-axis
- Magnitude of angular jerk of participant
- Fast Fourier transformation of body component acceleration in direction of the X,Y,Z-axis
- Fast Fourier transformation of magnitude of body component of acceleration
- Fast Fourier transformation body component jerk in direction of the X,Y,Z-axis
- Fast Fourier transformation magnitude of body component of jerk 
- Fast Fourier transformation of angular velocity of body of participant with respect to X,Y,Z-axis
- Fast Fourier transformation of magnitude of angular velocity of participant
- Fast Fourier transformation of magnitude of angular jerk of participant



## Abbreviations

The following abbreviations are used in the variable names of the variables appearing in "TidyDataAverages.txt".

|     Token        |        Description                                    |
|:----------------:|-------------------------------------------------------|
| body             | Signal that belongs to the body component of an experiment participant measured by the phone's accelerometer or gyroscope |
| gravity          | Signal that belongs to the gravity component of an experiment participant measured by the phone's accelerometer |
| fastFourier      | Indicates that a fast Fourier transformation is applied to a time based signal to create a frequence based signal |
| avg_st           | Average value of a data set  which contains standard deviations of measurements |
| acc_X            | Value of acceleration in direction of the X-axis; unit: standard gravitation unit; unit symbol: g |
| acc_Y            | Value of acceleration in direction of the Y-axis; unit: standard gravitation unit; unit symbol: g |
| acc_Z            | Value of acceleration in direction of the Z-axis; unit: standard gravitation unit; unit symbol: g |
| acc_mag          | Value of the magnitude of the acceleration; unit: standard gravitation unit; unit symbol: g |
| jerk_X           | Value of jerk in direction of the X-axis; unit: standard gravitation units per second; unit symbol: g/s |
| jerk_Y           | Value of jerk in direction of the Y-axis; unit: standard gravitation units per second; unit symbol: g/s |
| jerk_Z           | Value of jerk in direction of the Z-axis; unit: standard gravitation units per second; unit symbol: g/s |
| jerk_mag         | Value of the magnitude of the jerk; unit: standard gravitation unit per second; unit symbol: g/s |
|ang_velocity_X    | Value of angular velocity with respect to the X-axis; unit: radiants per second; unit symbol: r/s |
|ang_velocity_Y    | Value of angular velocity with respect to the Y-axis; unit: radiants per second; unit symbol: r/s |
|ang_velocity_Z    | Value of angular velocity with respect to the Z-axis; unit: radiants per second; unit symbol: r/s |
|ang_velocity_mag  | Value of magnitude of angular velocity; unit: radiant per second; unit symbol: r/s |
|ang_jerk_X    | Value of angular jerk with respect to the X-axis; unit: radiants per (second)^2; unit symbol: r/s^2 |
|ang_jerk_Y    | Value of angular jerk with respect to the Y-axis; unit: radiants per (second)^2; unit symbol: r/s^2 |
|ang_jerk_Z    | Value of angular jerk with respect to the Z-axis; unit: radiants per (second)^2; unit symbol: r/s^2 |
|ang_jerk_mag  | Value of magnitude of angular jert; unit: radiants per (second)^2; unit symbol: r/s^2 |

## Variable Names

The following table exmplains the 

| Index |     Variable Name    |        Description                               |
|:-----:|:--------------------:|--------------------------------------------------|
|1| subject | The partitioners of the experminet are labeled by the numbers from 1 to 30. |
|2| activity | The activity the experiment participant performed when the phone took the measurements; values: "walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying" |
|3| avg_mean_body_acc_X | The avarage mean of the body component of the acceleration in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|4| avg_mean_body_acc_Y | The avarage mean of the body component of the acceleration in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|5| avg_mean_body_acc_Z | The avarage mean of the body component of the acceleration in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|6| avg_sd_body_acc_X | The avarage standard deviation of the body component of the acceleration in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|7| avg_sd_body_acc_Y | The avarage standard deviation of the body component of the acceleration in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|8| avg_sd_body_acc_Z | The avarage standard deviation of the body component of the acceleration in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|9| avg_mean_gravity_acc_X | The avarage mean of gravity component of the acceleration in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|10| avg_mean_gravity_acc_Y | The avarage mean of the gravity component of the acceleration in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|11| avg_mean_gravity_acc_Z | The avarage mean of the gravity component of the acceleration in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g |
|12| avg_sd_gravity_acc_X | The avarage standard deviation of the gravity component of the acceleration in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|13| avg_sd_gravity_acc_Y | The avarage standard deviation of the gravity component of the acceleration in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|14| avg_sd_gravity_acc_Z | The avarage standard deviation of the gravity component of the acceleration in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g |
|15| avg_mean_body_jerk_X | The avarage mean of the body component of the jerk in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|16| avg_mean_body_jerk_Y | The avarage mean of the body component of the jerk in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|17| avg_mean_body_jerk_Z | The avarage mean of the body component of the jerk in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|18| avg_sd_body_jerk_X | The avarage standard deviation of the body component of the jerk in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation unit per second; unit symbol: g/s | 
|19| avg_sd_body_jerk_Y | The avarage standard deviation of the body component of the jerk in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation unit per second; unit symbol: g/s | 
|20| avg_sd_body_jerk_Z | The avarage standard deviation of the body component of the jerk in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation unit per second; unit symbol: g/s | 
|21| avg_mean_body_ang_velocity_X| The avarage mean of the angular velocity of the body of a experiment participant with respect to the X-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s
|22| avg_mean_body_ang_velocity_Y| The avarage mean of the angular velocity of the body of a experiment participant with respect to the Y-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s
|23| avg_mean_body_ang_velocity_Z| The avarage mean of the angular velocity of the body of a experiment participant with respect to the Z-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s
|24| avg_sd_body_ang_velocity_X| The avarage standard deviation of the angular velocity of the body of a experiment participant with respect to the X-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s
|25| avg_sd_body_ang_velocity_Y| The avarage standard deviation of the angular velocity of the body of a experiment participant with respect to the Y-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s
|26| avg_sd_body_ang_velocity_Z| The avarage standard deviation of the angular velocity of the body of a experiment participant with respect to the Z-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s
|27| avg_mean_body_ang_jerk_X| The avarage mean of the angular jerk of the body of a experiment participant with respect to the X-axis; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2
|28| avg_mean_body_ang_jerk_Y| The avarage mean of the angular velocity of the body of a experiment participant with respect to the Y-axis; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2
|29| avg_mean_body_ang_jerk_Z| The avarage mean of the angular velocity of the body of a experiment participant with respect to the Z-axis; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2
|30| avg_sd_body_ang_jerk_X| The avarage mean of the angular velocity of the body of a experiment participant with respect to the X-axis; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2
|31| avg_sd_body_ang_jerk_Y| The avarage mean of the angular velocity of the body of a experiment participant with respect to the Y-axis; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2
|32| avg_sd_body_ang_jerk_Z| The avarage mean of the angular velocity of the body of a experiment participant with respect to the Z-axis; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2
|33| avg_mean_body_acc_mag | The avarage mean of the magnitute of the body component of the acceleration measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|34| avg_sd_gravity_acc_mag | The avarage standard deviation of the magnitute of the body component of the acceleration measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g
|35| avg_mean_body_acc_mag | The avarage mean of the magnitute of the gravity component of the acceleration measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|36| avg_sd_gravity_acc_mag | The avarage standard deviation of the magnitute of the gravity component of the acceleration measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g
|37| avg_mean_body_jerk_mag | The avarage mean of the magnitute of the body component of the jerk measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|38| avg_sd_body_jerk_mag | The avarage standard deviation of the magnitute of the body component of the jerk measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s |
|39| avg_mean_body_ang_velocity_mag | The avarage mean of the magnitude of the angular velocity of the body of a experiment participant; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|40| avg_sd_body_ang_velocity_mag | The avarage standard deviation of the magnitude of the angular velocity of the body of a experiment participant; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|41| avg_mean_body_ang_jerk_mag | The avarage mean of the magnitude of the angular jerk of the body of a experiment participant; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2 |
|42| avg_sd_body_ang_jerk_mag | The avarage standard deviation of the magnitude of the angular jerk of the body of a experiment participant; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2 |
|43| avg_mean_fastFourier_body_acc_X | The avarage mean of the fast Fourier transformation of the body component of the acceleration in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|44| avg_mean_fastFourier_body_acc_Y | The avarage mean of the fast Fourier transformation of the body component of the acceleration in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|45| avg_mean_fastFourier_body_acc_Z | The avarage mean of the fast Fourier transformation of the body component of the acceleration in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|46| avg_sd_fastFourier_body_acc_X | The avarage standard deviation of the fast Fourier transformation of the body component of the acceleration in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|47| avg_sd_fastFourier_body_acc_Y | The avarage standard deviation of the fast Fourier transformation of the body component of the acceleration in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|48| avg_sd_fastFourier_body_acc_Z | The avarage standard deviation of the fast Fourier transformation of the body component of the acceleration in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|49| avg_mean_fastFourier_body_jerk_X | The avarage mean of the fast Fourier transformation of the body component of the jerk in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|50| avg_mean_fastFourier_body_jerk_Y | The avarage mean of the fast Fourier transformation of the body component of the jerk in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|51| avg_mean_fastFourier_body_jerk_Z | The avarage mean of the fast Fourier transformation of the body component of the jerk in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|52| avg_sd_fastFourier_body_jerk_X | The avarage standard deviation of the fast Fourier transformation of the body component of the jerk in direction of the X-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|53| avg_sd_fastFourier_body_jerk_Y | The avarage standard deviation of the fast Fourier transformation of the body component of the jerk in direction of the Y-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|54| avg_sd_fastFourier_body_jerk_Z | The avarage standard deviation of the fast Fourier transformation of the body component of the jerk in direction of the Z-axis measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|55| avg_mean_fastFourier_body_ang_velocity_X | The avarage mean of the fast Fourier transformation of the angular velocity of the body of a experiment participant with respect to the X-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|56| avg_mean_fastFourier_body_ang_velocity_Y | The avarage mean of the fast Fourier transformation of the angular velocity of the body of a experiment participant with respect to the Y-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|57| avg_mean_fastFourier_body_ang_velocity_Z | The avarage mean of the fast Fourier transformation of the angular velocity of the body of a experiment participant with respect to the Z-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|58| avg_sd_fastFourier_body_ang_velocity_X | The avarage standard deviation of the fast Fourier transformation of the angular velocity of the body of a experiment participant with respect to the X-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|59| avg_sd_fastFourier_body_ang_velocity_Y | The avarage standard deviation of the fast Fourier transformation of the angular velocity of the body of a experiment participant with respect to the Y-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|60| avg_sd_fastFourier_body_ang_velocity_Z | The avarage standard deviation of the fast Fourier transformation of the angular velocity of the body of a experiment participant with respect to the Z-axis; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|61| avg_mean_fastFourier_body_acc_mag | The avarage mean of the fast Fourier transformation of the magnitude of the body component of the acceleration measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|62| avg_sd_fastFourier_body_acc_mag | The avarage standard deviation of the fast Fourier transformation of the magnitude of the body component of the acceleration measured by the phone's accelerometer; unit: standard gravitation unit; unit symbol: g | 
|63| avg_mean_fastFourier_body_jerk_mag | The avarage mean of the fast Fourier transformation of the magnitude of the body component of the jerk measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|64| avg_sd_fastFourier_body_jerk_mag | The avarage standard deviation of the fast Fourier transformation of the magnitude of the body component of the jerk measured by the phone's accelerometer; unit: standard gravitation units per second; unit symbol: g/s | 
|65| avg_mean_fastFourier_body_ang_velocity_mag | The avarage mean of the fast Fourier transformation of the magnitude ot the angular velocity of the body of a experiment participant; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|66| avg_sd_fastFourier_body_ang_velocity_mag | The avarage standard deviation of the fast Fourier transformation of the magnitude of the angular velocity of the body of a experiment participant; the values are measured by the phone's gyroscope; unit: radiants per second; unit symbol: r/s |
|67| avg_mean_fastFourier_body_ang_jerk_mag | The avarage mean of the fast Fourier transformation of the magnitude ot the angular jerk of the body of a experiment participant; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2 |
|68| avg_sd_fastFourier_body_ang_jerk_mag | The avarage standard deviation of the fast Fourier transformation of the magnitude of the angular jerk of the body of a experiment participant; the values are measured by the phone's gyroscope; unit: radiants per (second)^2; unit symbol: r/s^2 |

