## Task 3: Python and Cloud Function

</br>

### Goals 🎯 </br> 
  :white_check_mark: To get familiar with Vim and Cloud Functions</br>
  :white_check_mark: To run a first Cloud Function using code in Python </br>
  
</br>

💪 **Task steps**

</br>

**Step 1** Create *hello_function.py* file in Cloud Shell terminal using *vim* and paste the following code

</br>

```
def hello_function():
    print("Hello from the other siiiiiiiiiide!")

def my_function_with_args(name, surname):
    print("Hello, it's me, %s %s"%(name, surname))

def sum_two_numbers(a, b):
    return a + b

hello_function()

my_function_with_args("Iza", "Radwan")

x = sum_two_numbers(1,2)
print(x)
```
</br>

**Step 2** Run the above code in Cloud Shell and copy the output from the Cloud Shell, paste it to task_3_optional_function file and commit it to repository

</br>


**Step 3** Go to Google Console and choose Cloud Functions from the Navigation Menu, then CREATE FUNCTION

</br>

➡️ Environment: 1st hen
➡️ Enable Cloud APIs </br>
➡️ Choose HTTP as a trigger (cloud function to be trigerred from the browser) </br>
➡️ Choose Python 3.7 from the Runtime dropdown </br>

</br>

**Step 4** In the main.py file, edit the code by changing *Hello world* to some other text and deploy the Cloud Function

</br>

👉 No need to worry about where the Cloud Function is deployed as it's an element of serverless service and Google takes care of that

</br>

**Step 5** Copy the url from the Trigger tab. and paste the url in the browser -> function is trigerred

</br>

**Step 6** Edit the code of the function as below in main.py file

</br>

```
from datetime import datetime

def hello_world(request):
    """Responds to any HTTP request.
    Args:
        request (flask.Request): HTTP request object.
    Returns:
        The response text or any set of values that can be turned into a
        Response object using
        `make_response <http://flask.pocoo.org/docs/1.0/api/#flask.Flask.make_response>`.
    """
    request_json = request.get_json()
    if request.args and 'message' in request.args:
        return request.args.get('message')
    elif request_json and 'message' in request_json:
        return request_json['message']
    else:
        now = datetime.now()
        current_time = now.strftime("%H:%M:%S")
        return 'Let me tell you what time it is: ' + current_time
```

**Step 7** Paste the trigger url to the function in task_3_cloud_function file in cloud_challenge repository and save

</br>

**Step 8** Commit and push changes to the remote repository

</br>

**Step 9** Check out the Logs tab of created Cloud Function to see what kind of actions are logged by GCP
