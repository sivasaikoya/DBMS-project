# DBMS-project
### Done By
* A.Srinivas
* Ch.Uday Kiran
* K.Siva Sai
* L.Hari Kiran

# How to run the Project

## Setting up IDE
### Prerequisites
* Visual Studio Code IDE.
* Eclipse IDE.
* Eclipse with any Server like Apache Tomcat.
* A web project in eclipse.
* MySQL Workbench.

### Copying Files
* Copy all files from web files into ` src->main->webapp  `.
* Create a package in _src/main/java_ as com.dbms.getting and paste all file from getting folder.
* Create a package in _src/main/java_ as com.dbms.controllers and paste all file from controllers folder.
* Create a package in _src/main/java_ as com.dbms.deleting and paste all file from deleting folder.
* Create a package in _src/main/java_ as com.dbms.updating and paste all file from updating folder.
* Create a package in _src/main/java_ as com.dbms.inserting and paste all file from inserting folder.

### Installation of JAR files

Installing mysql connector,javax.mail,javax.activaton jar files

* Download the mysql-connector jar: <br>`https://mvnrepository.com/artifact/com.mysql/mysql-connector-j/8.4.0`<br>
Download javax.mail jar <br>
`https://mvnrepository.com/artifact/javax.mail/mail/1.4`<br>
* Download activation jar <br>`https://mvnrepository.com/artifact/javax.activation/activation/1.1.1`.

### Adding JAR files into IDE



* Go to your **Project Properties** by right clicking it<br>

* Go to **Java Build Path** section <br>

* In **Java Build Path** select **Libraries** section <br>

* Select **Class Path** and Select **Add external JARS** and add downloaded jar file and click _apply and close_<br> 

* Copy all jar file into `src->main->webapp->WEB_INF->lib` folder .

### Start running the project from **index.jsp** file