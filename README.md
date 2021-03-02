# optimyappAutoScripts
For creating automation scripts with negative scenarios


I. Install Pycharm and robotframework libraries, and setup JDK and Python Environments
1. Download and install Pycharm v2019.3.4 (Community Edition)
2. Download and install Python 3.9.2 (https://www.python.org/downloads/)
3. Download and install JDK (https://www.oracle.com/ph/java/technologies/javase-jdk15-downloads.html)

II. Adding JDK and Python to Environment Variable
1. Press Windows icon on your keyboard, type and select "variables for your account"
2. 2.	Under User variables, you have to click New button to create a new variable, just name it ‘JAVA_HOME’ and set its value on your jdk’s path, in my case, it is located at C:\Program Files\Java\jdk-<version> then click OK to save 
3. Under User variables, double click on Path variable to edit
4. Click New button
5. Find the paths (directory location) of your JDK, Python and Python scripts, copy then paste it. 
In my case, python is located at: C:\Users\asus\AppData\Local\Programs\Python\Python39
while python scripts is located at: C:\Users\asus\AppData\Local\Programs\Python\Python39\Scripts
and you can just use the created variable for JDK which is JAVA_HOME + \bin:
%JAVA_HOME%\bin

III. Library Installation (run as administrator)
1. Open your command prompt then type "pip install -U selenium"
2. Then install robot framework by typing “pip install -U robotframework” 
3. Next, install robot framework with selenium library by typing $“pip install --upgrade robotframework-selenium2library"
