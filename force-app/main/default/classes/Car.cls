public class Car {

      public string carColour = '';
      public string  carName='';
      private integer MaxSpeedKmPerhour= 152;
     
   public datetime swichtOn22(){
         datetime SwitchOnTime=datetime.now();
        system.debug('starting the car');
        return SwitchOnTime;
     }

   public datetime drive(){
      datetime switchOntime=datetime.now();


      system.debug('driving '+ carcolour+' '+carname );
      return switchOntime;

   }

   public void driveAtMaxSpeed(){
      string drivingDescription='driving ' +carName+ ' at '+ MaxSpeedKmPerhour + 'kmpH';
      system.debug(drivingDescription);

   }

   public void checkall(Integer a){
      boolean check1=(a==11);
      system.debug(check1);

   }
}

