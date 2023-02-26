# r_analysis on MechaCars
## V. Isualize expands their reach 

Using R to analyze and predict various things based on the data from a production set of MechaCars.

## Linear Regression to Predict MPG

![Linear_regression_summary_output](https://user-images.githubusercontent.com/116296092/221440015-99e9751e-ff26-4b76-9c22-f38f7e5c7fb8.jpg)

The linear regression son the MPG dataset answers a few questions for us:

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- In the Pr(>|t|) column, any value smaller than (traditionally) .05 is considered statistically significant, meaning it provides a non-random amount of variance in the dataset. Here we see that, technically speaking, none of the categories provide any statistical significance in the MPG data. This segues perfectly into the next question:

Does this linear model predict MPG of MechaCar prototypes effectively?
- The answer is clearly no. Even investigating the dataset manually, it's obvious that some of the data is inaccurate. There is a vehicle with a curb weight of 8337.981 lbs, and a MPG of 80.0. Shortly following that is a 10,000lbs vehicle that clocks at 43. A handful of other MPGs then follow a rough pattern of 30's and 40's, but with wildly varying curb weights. While these high numbers are possible, it stands to reason the data may be flawed when such a wide range of weights equate to similar MPG ratings.

The final question asks whether the slope of the line is considered to be 0. Without better cleaning of the data, or a wider collection of data points gathered, the answer is currently no. With the Intercept being statistically insignificant at 5.08, there is not sufficient evidence to reject the null hypothesis that the slope is equal to 0.

## Summary Statistics on Suspension Coils

![PSI_summary_by_lot](https://user-images.githubusercontent.com/116296092/221440035-7092406e-787a-41b4-93bd-57260aaa914d.jpg)

"The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?"

Considering the frame above, the first 2 Lots are within the 100psi variance. Lot 1 is the most stable, followed by Lot 2. With Lot 3's variance being as high as it is, those coils within that lot may need to be recalled for safety and or quality assurance purposes until they meet the specifications.

## T-Tests on Suspension Coils

![total_summary_df](https://user-images.githubusercontent.com/116296092/221440082-ac5d49e7-1872-458c-ba3f-349461432fc2.jpg)

![ttest_all_lots](https://user-images.githubusercontent.com/116296092/221440061-9a98948f-a197-4ca8-83cc-8bc0d1d03238.jpg)

Statistically speaking, there is not a significant difference when comparing across all lots, and Lots 1 and 3 fall into acceptable p-value range of ">.05".

![ttest_lot1](https://user-images.githubusercontent.com/116296092/221440099-b95d8dcf-18fd-4602-ad35-9d22049a85f4.jpg)

![ttest_lot3](https://user-images.githubusercontent.com/116296092/221440112-7a2757eb-cf24-422b-817e-10952ed0bf9d.jpg)

The variance appears in Lot 2, where there is a p-value of .0005. With this value being lower than the limit of .05, it is worth investigating why it is so different when compared with the other 2 sets, especially when the Mean of X is consistent with the overall PSI of 1500.

![ttest_lot2](https://user-images.githubusercontent.com/116296092/221440117-ab931975-2f36-4ccd-8d0f-1d8c27c18ede.jpg)

## Study Design: MechaCar vs Competition

Ultimately, MechaCar needs to tighten their data-gathering requirements. The prototypes are all over the place and to provide an accurate estimate of how it stacks up against the competitor vehicles, that data needs to be as clean and accurate as possible. Once that's done, a few other tests may be run to determine how successful Mecha Car will be. Cheifly, the power draw and discharge rate over a given period of time. MechaCar is assumed to be electric (at 10,000lbs), thus requiring the company to know how long the battery will last before it dies. Compared to other vehicles currently on the market, this factor would be hugely important in both the marketing and growth of MechaCar as a company.

The test one would use to compare the efficacy of MechaCar with a competitor's battery would easily be a T-test. To compare the differences between them, the null hypothesis could be posited as "over 100 miles, the MechaCar's battery will not outperform a competitor's while both are fully charged". Data would then be collected to test the battery's levels and discharge at the start of, during, and at the end of the 100 mile section. Other data such as weather, terrain, road conditions, etc. may also need to be collected, but collectively could be used to either refute or accept the claim that the MechaCar is not better than a competitor.
