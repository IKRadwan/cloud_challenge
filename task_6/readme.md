## Task 6: Infrastructure as a code

</br>

🎯 **Goal:** automate the creation and management of resources in the Google Cloud Platform via HashiCorp Terraform (Infrastructure as Code - IaC tool).

</br>

💪 **Task steps**

</br>

**Step 1** Check the version of Terraform in Cloud Shell using the below command

`terraform version`

</br>

**Step 2** Create a file called main.tf

`vim main.tf`

- Configure a provider to enable interaction with GCP API using [terraform documentation](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started)

  <pre>provider "google" {
  project = "{{YOUR GCP PROJECT}}"
  region  = "us-central1"
  zone    = "us-central1-c"
  }</pre>

- Configure the VM instance resource - [terraform documentation](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance)

 <pre>resource "google_compute_instance" "dare-id-vm" {
  name         = "dareit-vm-tf"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}</pre>

</br>

**Step 3** Initialize terraform

  `terraform init`

</br>

**Step 4** Check the plan of the terraform and authorize Cloud Shell to perform actions using your credentials

  `terraform plan`

  At the bottom you see that 1 resource will be added, based on created configuration file - main.tf

:point_right: *Plan: 1 to add, 0 to change, 0 to destroy.*

</br>

**Step 5** Execute the plan (enter the value 'yes' to confirm the execution)

  `terraform apply`

</br>

**Step 6** Check a new created VM instance in the UI

</br>

**Step 7** List the files that are now in the directory from which you're running the terraform apply command

 `ls`

 📌1 file automatically generated - a state file (terraform.tfstate)

 - Check the content of the state file

`cat terraform.tfstate`
</br>

**Step 8** Remove manually (in the UI) the 'dareit' network tag of the created VM
</br>

**Step 9** Check again the terraform execution plan

`terraform plan`
</br>

**Step 10** Execute the detected change and confirm 

`terraform apply`
</br>

**Step 11** Check the UI again - network tag is there again
</br>

**Step 12** Remove the resource using Terraform - delete the block describing the resource created a moment ago (leave only a provider configuractiion block)
</br>

**Step 13** Run the `terraform plan` (Terraform will destroy 1 resource) and do `terraform apply` and confirm
</br>

**Step 14** Check the UI - VM instance is no longer there
</br>

**Step 15** Create [main.tf file](https://github.com/IKRadwan/cloud_challenge/blob/main/task_6/main.tf), configure the provider and add configuration to create resources: 

- Cloud Storage bucket that has public access configured

- Compute Instance

- Cloud SQL instance with Postgres engine. Create database called dareit and a user called dareit_user
</br>
 
**Step 16**  Manually change the password of the dareit_user 

![image](https://github.com/IKRadwan/cloud_challenge/assets/146995869/bb202f25-4af1-446c-9eef-f874c3d62c63)
</br>

**Step 17** Upload manually the index.html file (that you previously created in Task 1) into the newly created bucket.
</br>

**Step 18** Create a new folder in your cloud_challenge repo with name task_6 , commit the main.tf file there. 
Copy the URL of the object (index.htm) from your bucket: 

🔗(https://storage.googleapis.com/dareit-t6-bucket-ir/index.html)

