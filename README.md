# ims-devops-create-db
Create a sample database with options to use DDL commands (coming soon)


Sample IMS Insurance database 

The CUSTOMER table contains information about the insurance company customer. Each customer can have many policies, which are stored in the POLICY table. If there are any claims that are associated with a policy, that information would be stored in the CLAIMS table. In addition, a customer can have zero to many dependents such as a child or spouse, which would be stored in the DEPENDENT table. All communications with a customer whether through a phone operator, an online chat rep, or the email system is stored in the COMMUNICATION table.

Figure 1. Database structure for the sample IMS Insurance company
![dbschema](./media/dbschema.png)
