# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<p align="center">
  <img width=auto height="500" src=Resources/lin_reg_mpg.png>
  </p>

- Since the p-values ( "Pr(>|t|)" ) of the **vehicle_length** and **ground_clearance** variables were less than 0.05, they have a significant impact (they added a non-random amount of variance) on the mpg values in the dataset.
- The slope of the linear regression is non-zero, as there exist two significant linear relationships between mpg and the variables of **vehicle_length** and **ground_clearance**. No significant linear relationships would inidicate a slope of zero.
- No because the intercept's statistical significace indicates that there are other variables contributing to mpg that our dataset has not taken into account (they are not in our dataset).

## Summary Statistics on Suspension Coils

<p align="center">
  <img width=auto height="500" src=Resources/total_sum.png>
  </p>

<p align="center">
  <img width=auto height="500" src=Resources/lot_sum.png>
  </p>

Question: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- I am slightly confused by this question since I thought that "The units of the variance are the square of the units of the mean value" (https://sites.chem.utoronto.ca/chemistry/coursenotes/analsci/stats/MeasMeanVar.html#:~:text=It%20has%20the%20same%20units,units%20of%20the%20mean%20value), and the mean of psi data would be in psi. However, assuming the units of variance are correctly psi, then the variance of the total, lot 1, and lot 2 datasets would be less than 100psi and well within specification.

## T-Tests on Suspension Coils

<p align="center">
  <img width=auto height="500" src=Resources/t-tests.png>
  </p>

- If our null-hypothesis is that our samples' difference from the population mean is zero, and we reject this hypothesis for all p values less than or equal to our significance value of 0.05, we reject the null hypothesis for lot 3. This means that lot 1 and lot 2 are statistically similar to the population.

## Study Design: MechaCar vs Competition

One important variable in the selection of a car is gas mileage (mpg). A null hypothesis could be that the average maximum gas mileage of two sample datasets collected from two separate car models under identical testing conditions is zero. We could use a two-sample t-test for this because it shows whether a statistical difference exists between two distribution means, and that the datatype for mpg is continuous (though we typically round it).