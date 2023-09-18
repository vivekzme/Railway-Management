# Railway Schedule Optimizer

The objective is to optimize the scheduling  train movements to reduce delays ,hence improving  efficiency in the transportation system. By carefully analyzing and optimizing train routes, timetables, and resource allocation, we seek to minimize the cumulative delay across all trains.


## Installation

Refer [IBM CPLEX ](https://www.ibm.com/products/ilog-cplex-optimization-studio/cplex-optimizer)
Login using Academic email address to gain access to all features.
Install the required dependencies such as JAVA.


## Procedure and  Result
We used optimization techniques with CPLEX Optimizer to create the optimal schedule for  200 trains traveling through 17 railway zones in India. To simulate the train movements, we generated random data for their entry and exit times within each zone to a .dat file. We had to  minimize the total delay experienced by all trains. By CPLEX, we found the most efficient schedule that reduced delays for the given data.

## Repository Guide
The [project.mod](https://github.com/Biswapotter7/Rail_Schedule_optimiser/blob/main/project.mod) file contains the code for the project, defining the optimization model using the Constraint Programming Framework. <br>

The [project.dat](https://github.com/Biswapotter7/Rail_Schedule_optimiser/blob/main/project.dat) file contains our test data required for the model. <br>

The [project.pdf](https://github.com/Biswapotter7/Rail_Schedule_optimiser/blob/main/Project.pdf) file contains a concise description used for presentation purposes, providing an overview of the project's key aspects. <br>




## Future Work

Real-world data, Application to other scenario (Like reducing Passenger Congestion at Airport) ,more data points and edge cases can be utilized to validate and check robusteness the code .

## **Authors**:
- Biswaranjan Samal (21IM10011)
- Snehal Mishra (21IM10036)
- Ujjwal Kumar Singh (21IM10039)
- Vivek Kumar (21IM10040)
- Dronesh Magare (21IM30013)

