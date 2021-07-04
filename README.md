# MechaCar Statistical Analysis
Statistical Analysis of new car model

## Linear Regression to Predict MPG

**insert screenshot**
* There are two categories that have statistical significance - vehicle length and ground clearance
* The P value threshold we are using is 0.05, and those are the only two columns that have a lower P value
* The R squared for this regression line is 71%, so the model is accurate over 2/3's of the time

## Summary Statistics on Suspension Coils

**two summary stats screenshots**
 * Lots 1 and 2 have a very small variance each, but lot 3 is well over the limit of 100.
 * In total, the variance does meet specification, which is why grouping by lot shows where issues in manufacturing lie.

## T-Tests on Suspension Coils

**two t test screenshots**
* Lots 1 & 2 have means that are not statistically different from the desired mean
  * This is known because the P value is higher than 0.05, so the null hypothesis cannot be rejected
* Lot 3 is just at the threshold for statistical difference.
  * The P value is very close to 0.05, so the means of the PSI are different enough to be statistically significant 
* Overall the means are not different. This result is similar to the variance tests, where Lot 3 has issues in manufacturing

## Study Design: MechaCar vs Competition

If I could take more data, my next step in understanding how MechaCar compares to the competition would be cost of the car by the fuel efficiency. I want to group by costs because consumers want the highest mpg for their budget range, so MechaCar needs to compete with similarly priced cars. 

* Metrics: Cost of Car, City MPG, Highway MPG
* Hypothesis: 
  * Alternative: MechaCar will have a higher fuel efficiency than other cars of the same price
  * Null: MechaCar will have the same or lower fuel efficiency than cars of the same price
* Test Used: If I had the fuel efficiency of a number of brands, I would start with an ANOVA test, then perform two sample t tests
  * Starting with ANOVA will tell me if there's any statistical difference in mpg over a large number of brands. If there isn't, then there is no reason to continue the testing
  * I would then use two sample t tests to test MechaCar against the other brands, then we could see what competition we beat.
  * I would run multiple tests for overall fuel efficiency, city, and highway
* Data Needed: 
  * Costs of MechaCars, and a large sample of potential competitor cars
  * Fuel usage statistics for each car sampled
