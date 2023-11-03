# Gcloud commands to list enabled services and create a budget in GCP

## Task was performed via enabled Cloud Shell on Google Cloud Platform. Outputs of the commands in seperate files within this folder.

### Command to list enabled sevices in a project on GCP:
`gcloud services list`

### Command to create an example budgt in GCP:
`gcloud billing budgets create --billing-account=01CA0B-F6F518-5F6C6D --display-name="My budget" --budget-amount=650.00PLN --threshold-rule=percent=0.50 --threshold-rule=percent=0.75,basis=forecasted-spend`

### Command to list all budgets:
`gcloud billing budgets list --billing-account=01CA0B-F6F518-5F6C6D`
