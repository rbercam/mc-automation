
## Above here all tests cases planned to Budget Application: 

### TC1 - Add new outflow
The purpose of this test case is to add new outflow successfully.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step        | Expected result           | 
| ------------- |:-------------:|
| Choose category       | Category selected must be displayed |
| Insert a description      | Description field must be filled      |
| Insert a value  | Value field must be filled      |
| Click on 'Add' button  | Outflow must be displayed on list, Working Balance must be updated     |
```

### TC2 - Add new outflow - negative or zero value
The purpose of this test case is to add new outflow with negative or zero value.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step        | Expected result           | 
| ------------- |:-------------:|
| Choose category       | Category selected must be displayed |
| Insert a description      | Description field must be filled      |
| Insert a negative value      | Value field must be filled      |
| Click on 'Add' button  | The system should not accept negative or zero values and display an error message      |
```

### TC3 - Add new outflow - letters and special characters in value
The purpose of this test case is to add new outflow with letters and special characters in value.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step        | Expected result           | 
| ------------- |:-------------:|
| Choose category       | Category selected must be displayed |
| Insert a description      | Description field must be filled      |
| Insert a letters and special characters      | Value field must be filled      |
| Click on 'Add' button  | The system should not accept letters/special characters and display an error message      |
```

### TC4 - Add new outflow - value with blank space
The purpose of this test case is to add new outflow with blank value (only white spaces).

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                  |                        Expected result                        |
|:----------------------|:-------------------------------------------------------------:|
| Choose category       |              Category selected must be displayed              |
| Insert a description  |               Description field must be filled                |
| Insert a blank value  |                  Value field must be filled                   |
| Click on 'Add' button | The system blocks space key and 'Add' button must be disabled |
```

##### TC5 - Add new outflow without value
The purpose of this test case is to add new outflow without value.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                  |           Expected result           |
|:----------------------|:-----------------------------------:|
| Choose category       | Category selected must be displayed |
| Insert a description  |  Description field must be filled   |
| Click on 'Add' button |    'Add' button must be disabled    |
```

##### TC6 - Add new outflow without description
The purpose of this test case is to add new outflow without description.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                  |                                                                           Expected result |
|:----------------------|------------------------------------------------------------------------------------------:|
| Choose category       |                                                       Category selected must be displayed |
| Insert a value        |                                                                Value field must be filled |
| Click on 'Add' button | Outflow with blank description must be displayed on list, Working Balance must be updated |
```

##### TC7 - Add new inflow
The purpose of this test case is to add new inflow successfully.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                     |                          Expected result                           |
|:-------------------------|:------------------------------------------------------------------:|
| Choose 'Income' category |                Category selected must be displayed                 |
| Insert a description     |                  Description field must be filled                  |
| Insert a value           |                     Value field must be filled                     |
| Click on 'Add' button    | Outflow must be displayed on list, Working Balance must be updated |
```

##### TC8 - Add new inflow - without value
The purpose of this test case is to add new inflow without value.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                     |           Expected result           |
|:-------------------------|:-----------------------------------:|
| Choose 'Income' category | Category selected must be displayed |
| Insert a description     |  Description field must be filled   |
| Click on 'Add' button    |    'Add' button must be disabled    |
```

##### TC9 - Add new inflow - negative value
The purpose of this test case is to add new inflow with negative value.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                     |                              Expected result                              |
|:-------------------------|:-------------------------------------------------------------------------:|
| Choose 'Income' category |                    Category selected must be displayed                    |
| Insert a description     |                     Description field must be filled                      |
| Insert a negative value  |                        Value field must be filled                         |
| Click on 'Add' button    | The system should not accept negative values and display an error message |
```

##### TC10 - Add new inflow - without description
The purpose of this test case is to add new inflow without description.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                     |                               Expected result                               |
|:-------------------------|:---------------------------------------------------------------------------:|
| Choose 'Income' category |                     Category selected must be displayed                     |
| Insert a value           |                         Value field must be filled                          |
| Click on 'Add' button    | The system should not accept empty description and display an error message |

PS: The user can add a budget without description, I suggest that field should be mandatory like value field.
```

### TC11 - Add new inflow - letters and special characters in value
The purpose of this test case is to add new inflow with letters and special characters in value.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step        | Expected result           | 
| ------------- |:-------------:|
| Choose 'Income' category       | Category selected must be displayed |
| Insert a description      | Description field must be filled      |
| Insert a letters and special characters      | Value field must be filled      |
| Click on 'Add' button  | The system should not accept letters/special characters and display an error message      |
```

##### TC12 - Enter amount greater than working balance
The purpose of this test case is to enter amount greater than working balance. Result should be a negative value on screen.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                                        |                          Expected result                           |
|:--------------------------------------------|:------------------------------------------------------------------:|
| Choose category                             |                Category selected must be displayed                 |
| Insert a description                        |                  Description field must be filled                  |
| Insert a value greater than working balance |                     Value field must be filled                     |
| Click on 'Add' button                       | Outflow must be displayed on list, Working Balance must be updated |
```

##### TC13 - Enter amount equal to the working balance
The purpose of this test case is to enter amount equal to the working balance. Result should be zero balance.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                                    |                                           Expected result                                            |
|:----------------------------------------|:----------------------------------------------------------------------------------------------------:|
| Choose category                         |                                 Category selected must be displayed                                  |
| Insert a description                    |                                   Description field must be filled                                   |
| Insert a value equal to working balance |                                      Value field must be filled                                      |
| Click on 'Add' button                   | Outflow must be displayed on list, Working Balance must be updated and result should be zero balance |
```

##### TC14 - Enter too long value
The purpose of this test case is to enter a bigger value.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                                    |                   Expected result                   |
|:----------------------------------------|:---------------------------------------------------:|
| Choose category                         |         Category selected must be displayed         |
| Insert a description                    |          Description field must be filled           |
| Insert a value equal to working balance |             Value field must be filled              |
| Click on 'Add' button                   | System should limit value and show an error message |

PS: When you enter a too long value, the UI brokes. So, I suggest to limit the field to maximum valid value
to avoid this scenario.
```

##### TC15 - Check new outflow on chart
The purpose of this test case is to check if new outflow is displayed on chart.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                  |              Expected result               |
|:----------------------|:------------------------------------------:|
| Choose category       |    Category selected must be displayed     |
| Insert a description  |      Description field must be filled      |
| Insert a value        |         Value field must be filled         |
| Click on 'Add' button | Check if new outflow is displayed on chart |
```

##### TC16 - Check new inflow on chart
The purpose of this test case is to check if new inflow is displayed on chart.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                  |              Expected result              |
|:----------------------|:-----------------------------------------:|
| Choose category       |    Category selected must be displayed    |
| Insert a description  |     Description field must be filled      |
| Insert a value        |        Value field must be filled         |
| Click on 'Add' button | Check if new inflow is displayed on chart |
```

##### TC17 - Check inflow and outflow on report screen
The purpose of this test case is to check if all categories registered on budget screen are displayed on report page.

```
Pre-conditions
- Budget application started;
- Budget screen displayed;

| Step                           |                             Expected result                             |
|:-------------------------------|:-----------------------------------------------------------------------:|
| Check total outflow            |                     Total outflow must be displayed                     |
| Check total inflow             |                     Total inflow must be displayed                      |
| Click on report link           |                     Report screen must be displayed                     |
| Check total outflow and inflow | Total outflow and inflow must be the same as displayed on budget screen |
```

## How to start budget application

### Prerequisites
- Yarn installed (https://yarnpkg.com/lang/en/docs/install/);
- Git installed (https://git-scm.com/downloads);

First, clone the below repository to your local machine. 
```
git clone https://github.com/pedrohyvo/mc-automation
```

Open your terminal and go to *"<your_directory>/mc-automation/e2e"* and run the following commands to start budget application:
```
yarn

yarn start
```

Now, you can access budget application on:
```
http://localhost:8000/budget
```

## How to run all tests

### Prerequisites
- Ruby >= 2.3.0;
    * Windows - https://rubyinstaller.org/
- Chromedriver (https://sites.google.com/a/chromium.org/chromedriver/downloads);
    * Windows - Download chromedriver_win32.zip. 
        * In order to put ChromeDriver location in your PATH environment variable do as follows:
Right click computer > properties > system properties > Advanced > System properties > select Path below > edit > add the path (if you are not sure of the path, you can right click the icon of the file and in the properties get the full path).
- Bundler (http://bundler.io/)
ps: You can find tutorials for Linux users on how to install Ruby, Chrome Driver and Bundler. The OS enviroment used for this exercise implementation was Windows. 

On terminal go to *"<your_directory>/mc-automation"* and run the following command to download all dependencies:
```
bundle install
```

After download all dependencies, you are able to run all tests:
```
cucumber
```

Finally, when test execution finishes you can see results on *"results/report.htm"*. Also you can check all screenshots generated for earch scenario on *"results/screenshots"*;