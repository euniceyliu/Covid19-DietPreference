* 21F QSS54 Final Project: The assoication between COVID-19 cases and preferences for vegetarian diet
* Do File For Running Fixed Effects and Random Effects Model
* Author: Eunice You-Chi Liu

*********** Start log file ***********
* save the log file
log using "/Users/euniceliu/Desktop/SOCY54/Log File/finalproj.analysis.log", replace

****************** Open up data ******************
clear
use pre_panel_covid_google_unemp.dta

*********** convert string variable to a numeric variable (state2) to successfully declare panel data***********
encode state, gen(state2)

*********** declare the data to be panel data ***********
xtset state2 year_month

****************** Listwise Deletion ******************
* how many states present? 
egen stategroup_initial = group(state2)
sum stategroup_initial
* 50 states + DC are present initially
describe
* Originally there are 612 observations
mark nomiss
markout nomiss googletrend year_month covidrate state2
drop if nomiss==0 
* 165 observations deleted, 447 observations remain
describe
* how many states left after accounting ? 
egen stategroup_afterdel = group(state2)
sum stategroup_afterdel
* 47 states + DC remain

****************** Univariate Descriptive Stats ******************
* Basic descriptive stats that contain mean min max p25 p75 sd median
desctable googletrend covidrate unemployment, filename("table1_descriptives") stats(mean min p25 median p75 max sd) title(Table 1: Univariate Descriptive Statistics For Google Trend Score, Covid-19 Rate Per 100K, Unemployment Rate) 
* Run xtsum to see variation and save the xtsum result using asdoc
asdoc xtsum googletrend covidrate unemployment, title(Table 2: Within and Between Variation For Google Trend Score, Covid-19 Rate Per 100K, Unemployment Rate) save(table2_variation.rtf) replace 

****************** Modeling (First Focal Hypothesis) ******************
* POOLED OLS Regression
reg googletrend covidrate unemployment, cluster(state2) robust
outreg2 using "table3_model", alpha (.001, .01, .05) symbol (***,**,*) ctitle(OLS) word  title("Table 3: OLS, Fixed, and Random Effects Regression Estimates Predicting Google Trend Score For Search of Vegetarian Diet") replace
* Random Effects
xtreg googletrend covidrate unemployment, re robust 
outreg2 using "table3_model", alpha (.001, .01, .05) symbol (***,**,*) ctitle(RE) word
* State Fixed Effects
xtreg googletrend covidrate unemployment, fe robust
outreg2 using "table3_model", alpha (.001, .01, .05) symbol (***,**,*) ctitle(State FE) word
* State and Month Fixed Effects
xtreg googletrend covidrate unemployment i.year_month, fe robust
outreg2 using "table3_model", alpha (.001, .01, .05) symbol (***,**,*) ctitle(Month State FE) word

****************** Modeling (Second Focal Hypothesis: test for suppression) ******************
xtreg googletrend covidrate i.year_month, fe robust
outreg2 using "table4_model", alpha (.001, .01, .05) symbol (***,**,*) ctitle(Month State FE) word
xtreg googletrend covidrate unemployment i.year_month, fe robust
outreg2 using "table4_model", alpha (.001, .01, .05) symbol (***,**,*) ctitle(Month State FE) word

****************** Plot the Month Fixed Effect Result to See Marginal Effect ******************
xtreg googletrend covidrate unemployment i.year_month, fe robust
margins, at((min) covidrate) at((p25) covidrate) at((median) covidrate) at((p75) covidrate) at((max) covidrate)
marginsplot, recast(bar)  ylabel(0(5)100) ytitle("Predicted Google Trend Score for the Search of Vegetarian Diet", size(small)) xtitle("Percentile of Covid Rate Per 100K",size(small))  title("Figure 1: Predicted Value of Google Trend Score by Precentiles of Local COVID-19 Rate, Controlling for Unemployment Rate" ,size(small))

log off 
log close
