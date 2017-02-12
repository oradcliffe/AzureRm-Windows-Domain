@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
        }
    )

    NonNodeData = @{

        UserData = @'
UserName,Password,Dept,Title,Givenname,Surname
Alice,Pa$$w0rd,Accounting,Manager,Alice,Jenkens
Bob,Pa$$w0rd,IT,Manager,Bob,Tester
Charlie,Pa$$w0rd,Marketing,Manager,Charlie,Hootinany
Debbie,Pa$$w0rd,IT,Manager,Debbie,Boozer
Eddie,Pa$$w0rd,Accounting,Specialist,Eddie,Freddie
Frieda,Pa$$w0rd,IT,Specialist,Frieda,Babeeda
George,Pa$$w0rd,Marketing,Specialist,George,Costanza
Harriet,Pa$$w0rd,Accounting,Specialist,Harriet,Schmariot
Ted,Pa$$w0rd,Marketing,Specialist,Ted,Boozer
'@

        RootOUs = 'Accounting','IT','Marketing'
        ChildOUs = 'Users','Computers','Groups'
        TestObjCount = 5

    }
} 
