# ims-devops-create-db
Create a sample database with options to use DDL commands (coming soon)



## Sample IMS Insurance database overview

The CUSTOMER table contains information about the insurance company customer. Each customer can have many policies, which are stored in the POLICY table. If there are any claims that are associated with a policy, that information would be stored in the CLAIMS table. In addition, a customer can have zero to many dependents such as a child or spouse, which would be stored in the DEPENDENT table. All communications with a customer whether through a phone operator, an online chat rep, or the email system is stored in the COMMUNICATION table.

Figure 1. Database structure for the sample IMS Insurance company
![dbschema](./media/dbschema.png)


## Repository structure

* `\DBsource`
  * `DEMODATA`: A set of DFSDDLT0 statements to insert segments into the Insurance database
  * `DEMODB`: The DBD for the Insurance Database. This DBD includes definitions for all the fields in the database, so that IMS SQL can be used to access the database.
  * `DEMODBRC`: The JCL to define the Insurance Database to DBRC. 
  * `DEMODEF`: The JCL to define and initialize the Insurance Database.
  * `DEMODX`: The DBD for the Insurance Database secondary Index.
  * `DEMOLOAD`: The PSB used for loading the Insurance Database.
  * `DEMO01`: The PSB used for access to the Insurance Database.
* `\DDL` 
  * (Coming soon) DDL commands to create the IMS sample database 
* `\zOSMF`
  * (Coming soon) zOSMF workflow to create the IMS sample database
