# r_analysis on MechaCars
## V. Isualize expands their reach 

Using R to analyze and predict various things based on the data from a production set of MechaCars.

## Linear Regression to Predict MPG

IMAGE HERE

The linear regression son the MPG dataset answers a few questions for us:

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- In the Pr(>|t|) column, any value smaller than (traditionally) .05 is considered statistically significant, meaning it provides a non-random amount of variance in the dataset. Here we see that, technically speaking, none of the categories provide any statistical significance in the MPG data. This segues perfectly into the next question:

Does this linear model predict MPG of MechaCar prototypes effectively?
- The answer is clearly no. Even investigating the dataset manually, it's obvious that some of the data is inaccurate. There is a vehicle with a curb weight of 8337.981 lbs, and a MPG of 80.0. Shortly following that is a 10,000lbs vehicle that clocks at 43. A handful of other MPGs then follow a rough pattern of 30's and 40's, but with wildly varying curb weights. While these high numbers are possible, it stands to reason the data may be flawed when such a wide range of weights equate to similar MPG ratings.

The final question asks whether the slope of the line is considered to be 0. Without better cleaning of the data, or a wider collection of data points gathered, the answer is currently no. With the Intercept being statistically insignificant at 5.08, there is not sufficient evidence to reject the null hypothesis that the slope is equal to 0.

## Summary Statistics on Suspension Coils

IMAGE HERE

"The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?"

Considering the frame above, the first 2 Lots are within the 100psi variance. Lot 1 is the most stable, followed by Lot 2. With Lot 3's variance being as high as it is, those coils within that lot may need to be recalled for safety and or quality assurance purposes until they meet the specifications.


