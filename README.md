# Railway-Management

The objective is to optimize the scheduling train movements to reduce delays ,hence improving efficiency in the transportation system. By carefully analyzing and optimizing train routes, timetables, and resource allocation, we seek to minimize the cumulative delay across all trains.

#Installation
Refer IBM CPLEX Login using Academic email address to gain access to all features. Install the required dependencies such as JAVA.

#Procedure and Result
We used optimization techniques with CPLEX Optimizer to create the optimal schedule for 200 trains traveling through 17 railway zones in India. To simulate the train movements, we generated random data for their entry and exit times within each zone to a .dat file. We had to minimize the total delay experienced by all trains. By CPLEX, we found the most efficient schedule that reduced delays for the given data.

#Repository Guide
The project.mod file contains the code for the project, defining the optimization model using the Constraint Programming Framework.

The project.dat file contains our test data required for the model.

The project.pdf file contains a concise description used for presentation purposes, providing an overview of the project's key aspects.

#Future Work
Real-world data, Application to other scenario (Like reducing Passenger Congestion at Airport) ,more data points and edge cases can be utilized to validate and check robusteness the code .

