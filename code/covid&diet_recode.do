* 21F QSS54 Final Project: The assoication between COVID-19 cases and preferences for vegetarian diet
* Recode File To Merge All Datasets, Compile Total Covid-19 Cases Per Month and Calculuate Covid-19 Rate
* Author: Eunice You-Chi Liu

*********** Start log file ***********
log using "finalproj.recode.log", replace

*********** COVID-STATE DATA PROCESSING ***********
clear
* import and read in covid data 
import delimited /Users/euniceliu/Desktop/covid-state.csv
* keep relevant data for later merging and analysis (state, cases, date)
keep state cases date 
save covid-state-process, replace

///// Calculate Monthly Covid-19 cases/////

*********** create state-level 2020/03/13 to 2020/04/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/03/13 to 2020/04/12 (one month interval)
drop if date < "2020-03-13"
drop if date > "2020-04-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_march13_apirl12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_march13_apirl12_2020 = total(cases)
* The covidcases_march13_apirl12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-04-12")
* save the data
save covid_0313_0412_2020, replace

*********** create state-level 2020/04/13 to 2020/05/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/04/13 to 2020/05/12 (one month interval)
drop if date < "2020-04-13"
drop if date > "2020-05-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_apirl13_may12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_apirl13_may12_2020 = total(cases)
* The covidcases_apirl13_may12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-05-12")
save covid_0413_0512_2020, replace

*********** create state-level 2020/05/13 to 2020/06/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/05/13 to 2020/06/12 (one month interval)
drop if date < "2020-05-13"
drop if date > "2020-06-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_may13_june12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_may13_june12_2020 = total(cases)
* The covidcases_may13_june12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-06-12")
save covid_0513_0612_2020, replace

*********** create state-level 2020/06/13 to 2020/07/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/06/13 to 2020/07/12 (one month interval)
drop if date < "2020-06-13"
drop if date > "2020-07-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_june13_july12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_june13_july12_2020 = total(cases)
* The covidcases_june13_july12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-07-12")
save covid_0613_0712_2020, replace

*********** create state-level 2020/07/13 to 2020/08/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/07/13 to 2020/08/12 (one month interval)
drop if date < "2020-07-13"
drop if date > "2020-08-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_july13_aug12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_july13_aug12_2020 = total(cases)
* The covidcases_july13_aug12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-08-12")
save covid_0713_0812_2020, replace

*********** create state-level 2020/08/13 to 2020/09/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/08/13 to 2020/09/12 (one month interval)
drop if date < "2020-08-13"
drop if date > "2020-09-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_aug13_sep12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_aug13_sep12_2020 = total(cases)
* The covidcases_aug13_sep12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-09-12")
save covid_0813_0912_2020, replace

*********** create state-level 2020/09/13 to 2020/10/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/09/13 to 2020/10/12 (one month interval)
drop if date < "2020-09-13"
drop if date > "2020-10-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_sep13_oct12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_sep13_oct12_2020 = total(cases)
* The covidcases_sep13_oct12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-10-12")
save covid_0913_1012_2020, replace

*********** create state-level 2020/10/13 to 2020/11/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/10/13 to 2020/11/12 (one month interval)
drop if date < "2020-10-13"
drop if date > "2020-11-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_oct13_nov12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_oct13_nov12_2020 = total(cases)
* The covidcases_oct13_nov12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-11-12")
save covid_1013_1112_2020, replace

*********** create state-level 2020/11/13 to 2020/12/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/11/13 to 2020/12/12 (one month interval)
drop if date < "2020-11-13"
drop if date > "2020-12-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_nov13_dec12_2020 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_nov13_dec12_2020 = total(cases)
* The covidcases_nov13_dec12_2020 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2020-12-12")
save covid_1113_1212_2020, replace

*********** create state-level 2020/12/13 to 2021/1/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2020/12/13 to 2021/1/12 (one month interval)
drop if date < "2020-12-13"
drop if date > "2021-01-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_dec13_jan12_2021 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_dec13_jan12_2021 = total(cases)
* The covidcases_dec13_jan12_2021 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2021-01-12")
save covid_1213_0112_2021, replace

*********** create state-level 2021/1/13 to 2021/2/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2021/1/13 to 2021/2/12 (one month interval)
drop if date < "2021-01-13"
drop if date > "2021-02-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_jan13_feb12_2021 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_jan13_feb12_2021 = total(cases)
* The covidcases_jan13_feb12_2021 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2021-02-12")
save covid_0113_0212_2021, replace

*********** create state-level 2021/2/13 to 2021/3/12 total covid case data ***********
clear
use "covid-state-process"
* keep date that is only between 2021/2/13 to 2021/3/12 (one month interval)
drop if date < "2021-02-13"
drop if date > "2021-03-12"
* sort the dataset by state and date so when generating total cases the data is in chronological order
* and the states is in alphaetical order
sort state date
* generate a variable covidcases_feb13_march12_2021 that accounts for the total covid cases during
* the time interval
bysort state: egen covidcases_feb13_march12_2021 = total(cases)
* The covidcases_feb13_march12_2021 column has the total number of covid cases replicated 
* across the date so I decided to keep the last row (it doesnt really matter which row i keep because
* the total covid cases are calculated per states and filled up all the rows of that state). Dropping the
* other date facilitates further merging
keep if strpos(date,"2021-03-12")
save covid_0213_0312_2021, replace

///// Merge all Monthly Data /////

*********** merge all covid state data ***********
clear 
use "/Users/euniceliu/Desktop/SOCY54/Data/covid_0313_0412_2020.dta"

merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_0413_0512_2020.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_0513_0612_2020.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_0613_0712_2020.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_0713_0812_2020.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_0813_0912_2020.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_0913_1012_2020.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_1013_1112_2020.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_1113_1212_2020.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_1213_0112_2021.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_0113_0212_2021.dta
drop _merge
merge 1:1 state using /Users/euniceliu/Desktop/SOCY54/Data/covid_0213_0312_2021.dta
drop _merge

///// More Data Cleaning /////

*********** drop state Guam, Northern Mariana Islands, Puerto Rico, Virgin Islands US territories and date and cases col ***********
drop if strpos(state,"Guam")>0 | strpos(state,"Northern Mariana Islands")>0 | strpos(state,"Puerto Rico")>0 |strpos(state,"Virgin Islands")>0
drop date cases

*********** save the final merge covid total cases data ***********
save final_covidcases_merged.dta, replace

*********** import and read in population data ***********
clear
cd
import excel downloads/us_population_bystate_2020.xlsx

*********** rename variable name ***********
rename A state
rename B population_2020

*********** drop the first three empty rows, the fourth rows that doesnt contain population number, and state=puerto rice***********
drop if missing(state) & missing(population_2020) 
drop if state=="Name"
drop if population_2020=="Pop. 2020"
drop if state=="Puerto Rico"

*********** covert the population column from string type to numeric because later on we want to divide covid cases by the population***********
destring (population_2020), replace 

*********** save the final merge covid total cases data ***********
save processed_2020population.dta, replace 

*********** merge population data with the merged covid data ***********
clear 
use "processed_2020population"
merge 1:1 state using final_covidcases_merged.dta
drop _merge

///// Calculate COVID-19 Rate ///// 

*********** save the final merge covid total cases + population data ***********
save covid_cases_population.dta, replace 

*********** import and merge covid total cases + population data ***********
clear
use covid_cases_population.dta, replace

*********** generate covid rate per 100,000 population for each state ***********
generate covidrate202003 = covidcases_march13_apirl12_2020*100000/population_2020
generate covidrate202004 = covidcases_apirl13_may12_2020*100000/population_2020
generate covidrate202005 = covidcases_may13_june12_2020*100000/population_2020
generate covidrate202006 = covidcases_june13_july12_2020*100000/population_2020
generate covidrate202007= covidcases_july13_aug12_2020*100000/population_2020
generate covidrate202008 = covidcases_aug13_sep12_2020*100000/population_2020
generate covidrate202009 = covidcases_sep13_oct12_2020*100000/population_2020
generate covidrate202010 = covidcases_oct13_nov12_2020*100000/population_2020
generate covidrate202011 = covidcases_nov13_dec12_2020*100000/population_2020
generate covidrate202012 = covidcases_dec13_jan12_2021*100000/population_2020
generate covidrate202101 = covidcases_jan13_feb12_2021*100000/population_2020
generate covidrate202102= covidcases_feb13_march12_2021*100000/population_2020

*********** drop original total cases variable ***********
drop covidcases_march13_apirl12_2020 covidcases_apirl13_may12_2020 covidcases_may13_june12_2020 ///
covidcases_july13_aug12_2020 covidcases_aug13_sep12_2020 covidcases_sep13_oct12_2020 covidcases_nov13_dec12_2020 ///
covidcases_dec13_jan12_2021 covidcases_feb13_march12_2021 covidcases_march13_apirl12_2020 ///
covidcases_june13_july12_2020 covidcases_oct13_nov12_2020 covidcases_jan13_feb12_2021 

*********** save the final merge covid total cases + population data ***********
save covid_rate_per100k.dta, replace 

///// Merge Google Search Data ///// 

*********** import and read in google search data ***********
clear
* specify that the first row contains the column variable names
import excel downloads/google_search_data_combined.xlsx, firstrow
*********** rename variable name to match correspond to the format in the final_covidcases_merged.dta and to clearer name ***********
rename Region state 
rename march_apirl_2020 googletrend202003
rename apirl_may_2020 googletrend202004
rename may_june_2020 googletrend202005
rename june_july_2020 googletrend202006
rename july_aug_2020 googletrend202007
rename aug_sep_2020 googletrend202008
rename sep_oct_2020 googletrend202009
rename oct_nov_2020 googletrend202010
rename nov_dec_2020 googletrend202011
rename dec_jan_2021 googletrend202012
rename jan_feb_2021 googletrend202101
rename feb_march_2021 googletrend202102

*********** save the renamed google search data ***********
save final_google_search.dta, replace

*********** merge covid rate and google search data***********
clear 
use "final_google_search.dta"
merge 1:1 state using covid_rate_per100k.dta
drop _merge

*********** reshape the wide merged covid rate and google search data to long format ***********
reshape long googletrend covidrate, i(state) j(year_month)

*********** relabel the variables in the long format dataset***********
label var googletrend "Google Trend Number"
label var covidrate "COVID-19 Rate Per 100,000 People"

*********** declare the data to be panel data ***********
xtset state year_month

*********************************************************
log close
log off

