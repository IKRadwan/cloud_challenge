## Task 2: Static website

</br>

### Goals 🎯 </br> 
  :white_check_mark: To get familiar with Google Cloud Storage and IAM (Identity and Management )</br>
  :white_check_mark: To create a static website using Google Cloud Storage </br>
  
</br>

💪 **Task steps**

</br>

**Step 1** Create a bucket in the UI on GCP (Cloud Storage > Buckets > CREATE)

</br>

> [!NOTE]
> Bucket name must be unique globally

</br>

![image](https://github.com/IKRadwan/cloud_challenge/assets/146995869/fb846375-8cb7-4fe1-af1a-89ecbcab23e0)

</br>

➡️ Uncheck the Enforce Public access prevention on this bucket </br>
➡️ Access control: Uniform </br>
➡️ *None* for *Protection tools* </br>

</br>

**Step 2** Create the folder called task_2 in the cloud_challenge repository. In that folder create two files:
</br>
  - *website_url*
  - *index.html*
    </br>
```
<!DOCTYPE html>
<html>
  <head>
    <title>Hello World: Static Website</title>
  </head>
  <body>
    <h1>I am hosted on a bucket in GCP.</h1>
    <p>DareIT rocks!</p>
  </body>
</html>
```
 </br>

 **Step 3** Upload the index.html file to the bucket

 </br>

 **Step 4** Amend permissions of the bucket (so the website hosted there could be accessible by others)
 
  </br>
  
  ➡️ *Permissions* tab > *GRANT ACCESS* > In the *New principals* write *allUsers* > Role: *Storage Object Viewer* > Save and confirm on the popup *ALLOW PUBLIC ACCESS*

  </br>

  **Step 5** Check out the created website

  </br>
  
  ➡️ Copy the public url of the object and paste it into a browser (check it on the incognito tab)
  
   </br>

   **Step 6** Modify the content of *index.html* file and repeat **Step 5**
    
   </br>

   **Step 7** Paste the url into the website_url file and save
     
   </br>

   **Step 8**
   </br>

   Commit and push changes to remote repository
 

   

  

   
   
  
 
