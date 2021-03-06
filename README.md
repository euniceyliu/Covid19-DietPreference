# Covid-19 & Diet Preference
The repo contains the code and data for the independent research project that I conducted in Dartmouth QSS54: Intermediate Quantitative Data Analysis for Sociologists. My research aims to determine the effects of COVID-19 pandemic on vegetarian diet preference within the United States. In this study, I argue that in the United States, the local COVID-19 pandemic increases people’s preference for the vegetarian diet by pushing people to be healthier or more health-conscious.

I present the following hypothesis:
(1) State-level COVID-19 rate are positively associated with people’s preference for the vegetarian diet , controlling for the unemployment rate.
(2) State-level unemployment rate will suppress the positive association between local COVID-19 rate and people’s preference for vegetarian diet.
## Data Sources
#### Google Trends Data targeting the keyword “vegetarian diet” among the 50 States and the District of Columbia: 
Google Trends. Retrieved November 1, 2021 (https://trends.google.com/trends/?geo=US).

#### State-level COVID-19 Data: 
New York Times. 2021. GitHub. Retrieved October 22, 2021 (https://github.com/nytimes/covid-19-data/blob/master/us-states.csv).

#### 2020 Census Data of the Resident Population for the 50 States, the District of Columbia, and Puerto Rico from the United States Census Bureau: 
US Census Bureau. 2021. “2020 Census Apportionment Results.” Census.gov. Retrieved November 10, 2021 (https://www.census.gov/data/tables/2020/dec/2020-apportionment-data.html).

#### Unemployment Rates Data from U.S. Bureau of Labor Statistics: 
U.S. Bureau of Labor Statistics. 2021. “Unemployment Rates for States.” U.S. Bureau of Labor Statistics. Retrieved November 1, 2021 (https://www.bls.gov/web/laus/laumstrk.htm)

## Code
#### [Recode Do File](https://github.com/euniceyliu/Covid19-DietPreference/blob/main/code/covid%26diet_recode.do):
To Merge All Datasets, Compile Total Covid-19 Cases Per Month and Calculuate Covid-19 Rate

#### [Analysis Do File](https://github.com/euniceyliu/Covid19-DietPreference/blob/main/code/covid%26diet_analysis.do):
To Run Fixed Effects and Random Effects Models


## Output
#### [Table 1: Univariate Descriptive Statistics of Google Trend Score for the term “vegetarian diet”, COVID-19  Rate, and Unemployment Rate](https://github.com/euniceyliu/Covid19-DietPreference/blob/main/output/table1_univariate_descriptive_statistics.pdf)

#### [Table 2: Within and Between Variation For Google Trend Score for “vegetarian diet”, COVID-19  Rate, Unemployment Rate](https://github.com/euniceyliu/Covid19-DietPreference/blob/main/output/table2_within_between_variation%20.pdf)

#### [Table 3: OLS, Random Effects, State Fixed Effects and State-Month Fixed Effects Regression Estimates Predicting Google Trend Score For Search of Vegetarian Diet](https://github.com/euniceyliu/Covid19-DietPreference/blob/main/output/table3_regression_models.pdf)

#### [Table 4: State-by-month Fixed Effects Predicting Google Trend Score For Search of Vegetarian Diet Before and Afer Controlling Unemployment Rate](https://github.com/euniceyliu/Covid19-DietPreference/blob/main/output/table4_control_unemployment.pdf)

