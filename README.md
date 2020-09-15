# utl-selecting-all-columns-with-the-same-prefix-using-sql-do-over
Selecting all colums with a same prefix using sql Selecting all colums with the same prefix using sql           
                                                                                                                
   Three Solutions                                                                                              
                                                                                                                
       a. Ted clay                                                                                              
          www.davidkatzconsulting.com                                                                           
                                                                                                                
       b. Bart                                                                                                  
          Bartosz Jablonski                                                                                     
          yabwon@gmail.com                                                                                      
                                                                                                                
       c. colon (somewhat less flexible because requires starting text)                                         
          FreelanceReinhard                                                                                     
          https://communities.sas.com/t5/user/viewprofilepage/user-id/32733                                     
                                                                                                                
          data want_datstep;                                                                                    
             set sashelp.baseball(keep=c:);                                                                     
          run;quit;                                                                                             
                                                                                                                
          * note you cannt use the colon on the select statement, but you can on from statement                 
          proc sql;                                                                                             
             select                                                                                             
                 *                                                                                              
             from                                                                                               
                 sashelp.baseball(keep=c:)                                                                      
          ;quit;                                                                                                
                                                                                                                
github                                                                                                          
https://tinyurl.com/y5wct8yh                                                                                    
https://github.com/rogerjdeangelis/utl-selecting-all-columns-with-the-same-prefix-using-sql-do-over             
                                                                                                                
macros                                                                                                          
https://tinyurl.com/y9nfugth                                                                                    
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                      
                                                                                                                
Select columns that begin with a C from sashelp.baseball                                                        
                                                                                                                
SAS Forum                                                                                                       
https://tinyurl.com/y55dgr6x                                                                                    
https://communities.sas.com/t5/SAS-Programming/Adding-all-rows-with-a-prefix-to-proc-sql/m-p/683343             
                                                       
