# app_simulation

## Goal

Project aimed at creating a *Machine Learning model* to predict if a client **will simulate** in a bank app.

## Cooperate

- [ ] Follow the steps through your terminal using the following logic:

```linux
cd to/folder/path
git clone https://github.com/daiha98/app_simulation.git
```

## Folders

- [ ] *src* <> Main directory of subfolders and codes. In it, the entire major scope of the project will be stored..

## Files

- [ ] *.gitattributes* <> Control actions in git, passing specific attributes inside the repository;
- [ ] *.gitignore* <> Intentionally targeting extensions that git should ignore when committing to the project;
- [ ] *.pylintrc* <> Clean code rules for code quality validation;
- [ ] *HOW_TO_VIEW_HTML.md* <> Step by step for analysis of code outputs in HTML format;
- [ ] *README.md* <> Help future contributors in the main understanding of this repository;
- [ ] *AUTHORS.md* <> Credits to collaborators who actively participated in this project;
- [ ] *requirements.txt/requirements-{step}.txt* <> Library dependencies and their used versions.

## About the Dataset

PS: All features named *rolling* are based on 22-period Simple Moving Averages (SMM).

- **id** - Client ID;
- **date** - Simulation business day;
- **rolling_sum_login_on_app** - SMM of the total number of times the customer logged into the app platform;
- **rolling_sum_simulations** - SMM of the total number of times the customer simulated in the app;
- **rolling_avg_income** - SMM of the average income registered by customers in the app;
- **rolling_avg_loan_amount** - SMM of the average simulated value for the loan;
- **rolling_sum_rejected_on_first_analysis** - SMM of the total number of times the customer was denied in the first analysis by the financial institution;
- **rolling_sum_approved_on_first_analysis** - SMM of the total number of times the customer was approved in the first analysis by the financial institution;
- **rolling_sum_sent_to_second_analysis** - SMM of the total number of times the customer was sent to a second analysis by the financial institution;
- **rolling_sum_approved_on_second_analysis** - SMM of the total number of times the customer was approved in the second analysis by the financial institution;
- **rolling_sum_rejected_on_second_analysis** - SMM of the total number of times the customer was denied in the second analysis by the financial institution;
- **rolling_mean_hours_simulation_second_analysis** - SMM of the average number of hours between the simulation step and the result of the second analysis (if sent);
- **rolling_sum_sent_to_first_step_after_analysis** - SMM of the total number of times the customer proceeded to the first phase after the simulation;
- **rolling_mean_days_first_analysis_first_step** - SMM of the average days between the simulation analysis (first or second, if any) and the first phase after the simulation;
- **rolling_sum_second_step** - SMM of the total number of times the client proceeded to the second phase after the simulation;
- **rolling_mean_days_first_step_second_step** - SMM of the average days between the first phase after the simulation and the second phase;
- **rolling_sum_final_step** - SMM of the total number of times the client proceeded to the final phase after the simulation;
- **rolling_mean_days_second_step_final_step** - SMM of the average days between the second phase after the simulation and the final phase;
- **rolling_sum_final_step** - SMM of the total number of times the customer canceled the simulations performed;
- **will_simulate_d1** - Bool feature (True/False) if the customer simulated the business day following the reference date.
