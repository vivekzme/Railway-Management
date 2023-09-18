/*********************************************
 * OPL 22.1.1.0 Model
 * Author: TEAM 14
 * Creation Date: 04-Apr-2023 at 11:40:03 PM
 *********************************************/
using CP;

int No_of_Trains = ...;  
range Trains = 1 .. No_of_Trains;

{string} ZoneNames = ...;

// time in hours, minutes, seconds 
tuple Time {
   int hours;
   int minutes;
   int seconds;
};

// limitations of train capacity are expressed in terms of periods, i.e. an interval with an hourly capacity rate
tuple Period {
   Time start;
   Time end;
   int rate;
};

{Period} periods[ZoneNames] = ...;

//enter event specifies that a given train will enter a given Zone at an expected time (called expected time over ETO )
tuple Enter { 
   int train;
   string Zone;
   Time eto;
};

int No_of_Enters = ...;
range Enters = 1 .. No_of_Enters;
Enter Data[Enters] = ...;
   
// train delays limited to 2 hours
int maxDelay = 120;

// capacity of the resource will be made available by time steps of 10 minutes
int timeStep = 10;

// train delays are expressed by integer variables
dvar int delay[Trains] in 0 .. maxDelay;

// each enter event is modelled by an activity of duration 1
dvar interval activity[Enters] size 1;

// each Zone is modelled by a resource
cumulFunction resource[i in ZoneNames] = sum(en in Enters : Data[en].Zone == i) pulse(activity[en], 1);


dexpr int totalDelay = sum(i in Trains) delay[i];

minimize totalDelay;
constraints {

  // the capacity rate is adapted to intervals of 10 minutes;
  // the time scale of a resource is divided by the time step
  forall (i in ZoneNames)
      forall (p in periods[i])
       alwaysIn(resource[i],(p.start.hours * 60 + p.start.minutes) div timeStep,
                                     (p.end.hours * 60 + p.end.minutes) div timeStep,0,
                                                            (p.rate * timeStep + 59) div 60);
       


   // a train enters a Zone at its expected time plus its delay;
   // since the time scale of a resource is divided by the time step,
   // we do the same for the start time of the activity
   forall (i in Enters)
     startOf(activity[i]) == (delay[Data[i].train] + Data[i].eto.hours * 60 + Data[i].eto.minutes) div timeStep;
     
   forall(i in ZoneNames)
     resource[i] <= No_of_Trains;
}

execute {
  writeln("total number of delayed minutes = " + totalDelay);
}
 
