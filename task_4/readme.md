## Task 4: Create Virtual Machine

</br>

### Goals 🎯 </br> 
  :white_check_mark: To get familiar with networking and IP addresses </br>
  :white_check_mark: To create a first Compute Engine Instance on GCP, install a web server on it and host a static website </br>
  
</br>

💪 **Task steps**

</br>

**Step 1** On GCP, go to VPC Network

</br>

👉See the list of automatically created newtworks </br>
👉Click on the default network and check a list of subnets in that network (regions indicate in which physical location the virtual machines that would be part of the network, would be created) </br>

</br>

**Step 2** Go to Compute Engine > VM Instances and create a Virtual Machine Instance (*CREATE INSTANCE*)

</br>

👉 Chosen region indicates in what data centers the virtual machine will be created - europe-west1 (Belgium) chosen  </br>
👉 Machine type indicates how much RAM and CPU the VM instance will be able to use (e2-small chosen)  </br>
👉 Both, region and machine type, impact the cost of running the VM instance  </br>

  - *Identity and API access* -> keep the default service account
  - *Firewall* -> mark both HTTPs and HTTP
  - *Advances options* -> *Networking* -> Add a network tag dareit-public (tag to be used to match firewall rules to the instances to which the rules should apply)
  - *Network interfaces*
    - *Network* - default
    - *Subnetwork* - default IPv4
    - *IP stack type* - single-stack
    - *Primary internal IP* - Ephemeral(Automatic)
    - *External IPv4 address* - Ephemeral (instance should get a public IP address)
    - *Network Service Tier* - Premium
    - other options as default
      
</br>

**Step 3** Connect to the VM instance by clicking on the SSH button in the Connect column
      
</br>

👉 A new window (terminal) opened and a connection established

</br>

**Step 4**  Get package information from all configured sources and install the Apache Web server 
      
</br>

`sudo apt update && sudo apt -y install apache2`
      
</br>

**Step 5**  Check the status of the Apache server  -> should be running
      
</br>

`sudo systemctl status apache2`
      
</br>

**Step 6** Wait a few minutes and then copy and paste the External IP of the Virtual Machine Instance in a browser
      
</br>

👉 *Apache2 Debian Default Page* should appear 
      
</br>

**Step 7** Go the the location in which the index.html file is stored via Terminal
      
</br>

`cd /var/www/html/`

</br>

**Step 8** Remove the index.html file that was automatically created
      
</br>

`sudo rm index.html`
      
</br>

**Step 9** Create index.html file
      
</br>

`sudo vim index.html`
      
</br>

**Step 10** Input into the new index.html file below code

```
<!DOCTYPE html>
<html>
  <head>
    <title>Hello World: Static Website</title>
  </head>
  <body>
    <h1>I am hosted on a VM in GCP.</h1>
    <p>DareIT rocks!</p>
  </body>
</html>
```
      
</br>

**Step 11** Save the file and exit
      
</br>

**Step 12** In a browser refresh the External IP of the VM 
      
</br>

👉 Output of the code from **Step10** should appear
      
</br>


🔒 ❗ **Due to security reason, public IP has not been shared in the repository**






