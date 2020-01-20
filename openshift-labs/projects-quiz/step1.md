Katacoda supports inline interactive quiz elements that can be included as any step within the scenario. The Quiz format supports different question and answer styles. Users cannot proceed until they have answered all the questions correctly.

## Openshift **projects** Quiz

Within Q1, requires are users to enter the exact string.

>>Q1: Enter the name of the openshift default project <<
=== default

For Q2, the question requires user to enter a string containing a certain keyword.

>>Q2: Enter the string containing test<<
=~= test

Q3 is multiple choice question, requiring users to select all the correct answers.

>>Q3: We have two projects, proj1 and proj2, both have service named redis, how pod in proj1 can access redis service on project proj2 <<
[*] serivce:redis
[*] redis
[ ] proj2.redis

Q4 is a single choice where users must select the correct answer.

>>Q4: Single Choice <<
(*) Correct
( ) Incorrect




**Note:** There should not be a blank line between the question and the possible answers.

