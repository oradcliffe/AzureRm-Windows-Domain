@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
        }
    )

    NonNodeData = @{

        UserData = @'
UserName,Password,Dept,Title
Alice,Pa$$w0rd,Accounting,Manager
Bob,Pa$$w0rd,IT,Manager
Charlie,Pa$$w0rd,Marketing,Manager
Debbie,Pa$$w0rd,IT,Manager
Eddie,Pa$$w0rd,Accounting,Specialist
Frieda,Pa$$w0rd,IT,Specialist
George,Pa$$w0rd,Marketing,Specialist
Harriet,Pa$$w0rd,Accounting,Specialist
Ted,Pa$$w0rd,Marketing,Specialist
'@

        RootOUs = 'Accounting','IT','Marketing'
        ChildOUs = 'Users','Computers','Groups'
        TestObjCount = 5

    }
} 
