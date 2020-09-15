Selecting all colums with the same prefix using sql                                                                
                                                                                                                   
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
                                                                                                                   
/*                   _                                                                                             
(_)_ __  _ __  _   _| |_                                                                                           
| | `_ \| `_ \| | | | __|                                                                                          
| | | | | |_) | |_| | |_                                                                                           
|_|_| |_| .__/ \__,_|\__|                                                                                          
        |_|                                                                                                        
*/                                                                                                                 
                                                                                                                   
SASHELP.BASEBALL                                                                                                   
                                                                                                                   
Middle Observation(161 ) of Last dataset = WORK.CLASS - Total Obs 322                                              
                                                                                                                   
                                                                                                                   
 -- CHARACTER --                                                                                                   
                                                                                                                   
SELECT THESE COLUMNS                                                                                               
====================                                                                                               
                                                                                                                   
VARIABLE       TYPE/LENGTH    VALUE           LABEL                                                                
========       ===========    =====          =====                                                                 
                                                                                                                   
NAME                 C18      Quirk, Jamie    Player's Name                                                        
                                                                                                                   
CRATBAT              N8       1188            Career Times at Bat                                                  
CRHITS               N8       286             Career Hits                                                          
CRHOME               N8       23              Career Home Runs                                                     
CRRUNS               N8       100             Career Runs                                                          
CRRBI                N8       125             Career RBIs                                                          
CRBB                 N8       63              Career Walks                                                         
                                                                                                                   
NOT THESE                                                                                                          
=========                                                                                                          
TEAM                 C14      Kansas City     Team at the End of 1986                                              
LEAGUE               C8       American        League at the End of 1986                                            
DIVISION             C8       West            Division at the End of 1986                                          
POSITION             C8       CS              Position(s) in 1986                                                  
DIV                  C16      AW              League and Division                                                  
NATBAT               N8       219             Times at Bat in 1986                                                 
NHITS                N8       47              Hits in 1986                                                         
NHOME                N8       8               Home Runs in 1986                                                    
NRUNS                N8       24              Runs in 1986                                                         
NRBI                 N8       26              RBIs in 1986                                                         
NBB                  N8       17              Walks in 1986                                                        
YRMAJOR              N8       12              Years in the Major Leagues                                           
NOUTS                N8       260             Put Outs in 1986                                                     
NASSTS               N8       58              Assists in 1986                                                      
NERROR               N8       4               Errors in 1986                                                       
SALARY               N8       .               1987 Salary in $ Thousands                                           
LOGSALARY            N8       .               Log Salary                                                           
                                                                                                                   
/*           _               _                                                                                     
  ___  _   _| |_ _ __  _   _| |_                                                                                   
 / _ \| | | | __| `_ \| | | | __|                                                                                  
| (_) | |_| | |_| |_) | |_| | |_                                                                                   
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                  
                |_|                                                                                                
*/                                                                                                                 
                                                                                                                   
                                                                                                                   
WORK.WANT total obs=5                                                                                              
                                                                                                                   
  NAME                 CRATBAT    CRHITS    CRHOME    CRRUNS    CRRBI    CRBB                                      
                                                                                                                   
  Allanson, Andy          293        66         1        30       29       14                                      
  Ashby, Alan            3449       835        69       321      414      375                                      
  Davis, Alan            1624       457        63       224      266      263                                      
  Dawson, Andre          5628      1575       225       828      838      354                                      
  Galarraga, Andres       396       101        12        48       46       33                                      
 ...                                                                                                               
                                                                                                                   
/*         _       _   _                                                                                           
 ___  ___ | |_   _| |_(_) ___  _ __                                                                                
/ __|/ _ \| | | | | __| |/ _ \| `_ \                                                                               
\__ \ (_) | | |_| | |_| | (_) | | | |                                                                              
|___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                              
           _____        _                                                                                          
  __ _    |_   _|__  __| |                                                                                         
 / _` |     | |/ _ \/ _` |                                                                                         
| (_| |_    | |  __/ (_| |                                                                                         
 \__,_(_)   |_|\___|\__,_|                                                                                         
                                                                                                                   
*/                                                                                                                 
                                                                                                                   
* build a macro array of names;                                                                                    
%array(cnam,values=%varlist(sashelp.baseball,prx=/^C/i));                                                          
                                                                                                                   
/*                                                                                                                 
%put &=cnam1;                                                                                                      
%put &=cnam6;                                                                                                      
%put &=cnamn;                                                                                                      
                                                                                                                   
CNAM1 = CRATBAT                                                                                                    
CNAM6 = CRBB                                                                                                       
                                                                                                                   
CNAMN = 6                                                                                                          
*/                                                                                                                 
                                                                                                                   
proc sql;                                                                                                          
  create                                                                                                           
     table want as                                                                                                 
  select                                                                                                           
     name                                                                                                          
    ,%do_over(cnam,phrase=?,between=comma)                                                                         
  from                                                                                                             
     sashelp.baseball(obs=5)                                                                                       
run;quit;                                                                                                          
                                                                                                                   
* clear array;                                                                                                     
                                                                                                                   
%arraydelete(cnam);                                                                                                
                                                                                                                   
                                                                                                                   
/*        ____             _                                                                                       
| |__    | __ )  __ _ _ __| |_                                                                                     
| `_ \   |  _ \ / _` | `__| __|                                                                                    
| |_) |  | |_) | (_| | |  | |_                                                                                     
|_.__(_) |____/ \__,_|_|   \__|                                                                                    
                                                                                                                   
*/                                                                                                                 
                                                                                                                   
Use BasePlus package :-)                                                                                           
Bart                                                                                                               
                                                                                                                   
/* enable the framework and load package */                                                                        
filename packages "%sysfunc(pathname(work))"; /* setup temporary directory for packages in the WORK */             
filename SPFinit url "https://raw.githubusercontent.com/yabwon/SAS_PACKAGES/master/SPF/SPFinit.sas";               
%include SPFinit; /* enable the framework */                                                                       
                                                                                                                   
%installPackage(BasePlus)  /* install the package */                                                               
%loadPackage(BasePlus)    /* load the package content into the SAS session */                                      
                                                                                                                   
                                                                                                                   
/*do the job */                                                                                                    
%put %getVars(SASHELP.BASEBALL, pattern = ^C, sep = %str(,));                                                      
                                                                                                                   
proc sql;                                                                                                          
  create                                                                                                           
     table want as                                                                                                 
  select                                                                                                           
     name                                                                                                          
    ,%getVars(SASHELP.BASEBALL, pattern = ^C, sep = %str(,))                                                       
  from                                                                                                             
     sashelp.baseball(obs=5)                                                                                       
;quit;                                                                                                             
                                                                                                                   
 /*                  _                                                                                             
  ___      ___ ___ | | ___  _ __                                                                                   
 / __|    / __/ _ \| |/ _ \| `_ \                                                                                  
| (__ _  | (_| (_) | | (_) | | | |                                                                                 
 \___(_)  \___\___/|_|\___/|_| |_|                                                                                 
                                                                                                                   
*/                                                                                                                 
                                                                                                                   
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
                                                                                                                   
                                                                                                                   
                                                                                           
                                                                                                                   
                                                                                                                   
