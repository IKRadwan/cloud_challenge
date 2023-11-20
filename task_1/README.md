## Task 1: Setup of environment

</br>

### Goals 🎯 </br> 
  :white_check_mark: To find out what Cloud is and how to manage and interact with it </br>
  :white_check_mark: To prepare the working environment and the repository </br>
  :white_check_mark: To run first commands in Cloud Shell </br>

</br>

🛠️ **Set up the repository and the working environment**

</br>

**Step 1** Create a new repository on Github named *cloud_challenge*

</br>

**Step 2** Go to Desktop Github and clone that repository to a local computer

</br>

**Step 3** Open the repository locally in Visual Code Studio

</br>

**Step 4** Add some text to the README.md file, save it, commit the change and push to the remote repository

</br>

**Step 5** Go to your profile on Google Cloud Platform and click on Cloud Shell icon ![image](https://github.com/IKRadwan/cloud_challenge/assets/146995869/5c17cf1f-cda1-40c6-a691-2942baf9e334) </br>
  </br>
  ➡️ Click CONTINUE in the box popped out  </br>
   </br>
  ![image](https://github.com/IKRadwan/cloud_challenge/assets/146995869/ab1d2bce-afc3-44d4-bd19-56bc3ec40749)
   </br>
  ➡️ Authorise the Cloud Shell to be able to access resources in the project  </br>
  ➡️ Try command that lists all available regions in which Compute Engines in GCP can be created </br>
  </br>
  `gcloud compute regions list` </br>
  </br>
  ➡️ Enable Compute API by entering *y*
  </br>
  </br>
  </br>
  </br>
  </br>

  💪 **Task 1 - steps**
  
  **Step 1** Get a command to list enabled services in a project on GCP - [GCP docs](https://cloud.google.com/sdk/gcloud/reference):
  
  </br>
  
  `gcloud services list`
  
  </br>
  
  **Step 2** Copy the returned list to a file in the cloud_challenge repository called enabled_services
  
  </br>
  
  **Step 3** Commit and push changes to remote repository
   
  </br>

  **Step 4** Create the budget by using gcloud command
    
  </br>

  `gcloud billing budgets create --billing-account=01CA0B-F6F518-5F6C6D --display-name="My budget" --budget-amount=650.00PLN --threshold-rule=percent=0.50 --threshold-rule=percent=0.75,basis=forecasted-spend`
     
  </br>

  **Step 5** List all budgets using gcloud command
  
  </br>

  `gcloud billing budgets list --billing-account=01CA0B-F6F518-5F6C6D`
     
  </br>

