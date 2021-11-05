# Install Dependencies 
1. Make Sure you installed IIS, ASP.NET in Feature and Roles, install Microsoft .Net 4.7.2 Runtime & Developer Pack

# Import Database PIC.bak
Import in your SSMS, and configure your User SQL SERVER for this Database

# Change Connection String in web.config
```
connectionString="Server=ZULFIKAR-OPEX;Database=PIC2;User=PIC;Pwd=@Isnaen1998;"
```

# Try to running in Visual Studio
Open WEB.sln

# Publish your APP

Build > Publish WEB > New > Target Folder that you want and then Deploy Application on IIS Server

