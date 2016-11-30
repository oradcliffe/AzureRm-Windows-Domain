@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
        }
    )

    NonNodeData = @{

        UserData = @'
UserName,UPN,Password,Dept,Title,Givenname,Surname
Alice,Alice,Pa$$w0rd,Accounting,Manager,Alice,Jenkens
Bob,Bob,Pa$$w0rd,IT,Manager,Bob,Tester
Charlie,Charlie,Pa$$w0rd,Marketing,Manager,Charlie,Hootinany
Debbie,Debbie,Pa$$w0rd,IT,Manager,Debbie,Boozer
Eddie,Eddie,Pa$$w0rd,Accounting,Specialist,Eddie,Freddie
Frieda,Frieda,Pa$$w0rd,IT,Specialist,Frieda,Babeeda
George,George,Pa$$w0rd,Marketing,Specialist,George,Costanza
Harriet,Harriet,Pa$$w0rd,Accounting,Specialist,Harriet,Schmariot
Ted,Ted,Pa$$w0rd,Marketing,Specialist,Ted,Boozer
'@

        RootOUs = 'Accounting','IT','Marketing'
        ChildOUs = 'Users','Computers','Groups'
        TestObjCount = 5

    }
} 
