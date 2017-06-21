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
George1,Pa$$w0rd,Marketing,Specialist,George1,Costanza
George2,Pa$$w0rd,Marketing,Specialist,George2,Costanza
George3,Pa$$w0rd,Marketing,Specialist,George3,Costanza
George4,Pa$$w0rd,Marketing,Specialist,George4,Costanza
George5,Pa$$w0rd,Marketing,Specialist,George5,Costanza
George6,Pa$$w0rd,Marketing,Specialist,George6,Costanza
George7,Pa$$w0rd,Marketing,Specialist,George7,Costanza
George8,Pa$$w0rd,Marketing,Specialist,George8,Costanza

'@
        ChildOUs = 'Users','Computers','Groups'
        TestObjCount = 5

    }
} 
