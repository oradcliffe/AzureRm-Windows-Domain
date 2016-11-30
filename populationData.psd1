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
Alice,Alice@gametimeor.priv,Pa$$w0rd,Accounting,Manager,Alice,Jenkens
Bob,Bob@gametimeor.priv,Pa$$w0rd,IT,Manager,Bob,Tester
Charlie,Charlie@gametimeor.priv,Pa$$w0rd,Marketing,Manager,Charlie,Hootinany
Debbie,Debbie@gametimeor.priv,Pa$$w0rd,IT,Manager,Debbie,Boozer
Eddie,Eddie@gametimeor.priv,Pa$$w0rd,Accounting,Specialist,Eddie,Freddie
Frieda,Frieda@gametimeor.priv,Pa$$w0rd,IT,Specialist,Frieda,Babeeda
George,George@gametimeor.priv,Pa$$w0rd,Marketing,Specialist,George,Costanza
Harriet,Harriet@gametimeor.priv,Pa$$w0rd,Accounting,Specialist,Harriet,Schmariot
Ted,Ted@gametimeor.priv,Pa$$w0rd,Marketing,Specialist,Ted,Boozer
'@

        RootOUs = 'Accounting','IT','Marketing'
        ChildOUs = 'Users','Computers','Groups'
        TestObjCount = 5

    }
} 
