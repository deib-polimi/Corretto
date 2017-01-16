;  Model statistics:
;  581	:Number of UML elements
;  23	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  17	:Number of states
;  34	:Number of transitions
;  34	:Number of lifelines in sequence diagrams
;  83	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  5	:Number of time contraints in sequence diagrams
;  5	:Number of clocks
;  0	:Number of nodes in interaction overview diagrams
;  0	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'bvzot)
(use-package :trio-utils)
(defvar TSPACE 100)
;; Variables:
;; Constants:
;; <Predicate based modular semantics>
(defun Borders (f1 f1_Start f1_End exception)
(&&
	(<-> f1 (|| f1_Start (since_ei (!! (|| f1_End exception)) f1_Start)))
	(-> f1_Start (until_ei (!! f1_Start) (|| f1_End exception)))
))
(defun OrderCon (f1 f2 exception)
(&&
	(-> f1 (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))
	(-> f2 (since_ei (&& (!! f2) (!! exception)) f1))
))
(defun OrderGCon (f1 f2 guard exception)
(&&
	(-> (&& f1 guard) (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))
	(-> f2 (since_ei (&& (!! f2) (!! exception)) (&& f1 guard)))
))
(defun OrderGnoCon (f1 f2 guard exception)
(&&
	(-> (&& f1 guard) (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))
	(-> f2 (since_ei (&& (!! f2) (!! exception)) (&& f1 guard)))
	(-> (&& f1 guard) (!! f2))
))
(defun OrdernoCon (f1 f2 exception)
(&&
	(-> f1 (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))
	(-> f2 (since_ei (&& (!! f2) (!! exception)) f1))
	(-> f1 (!! f2))
))
(defun SomFIn_i (f1 f2)
	(!! (until_ii (!! f1) f2))
)
(defun SomPIn_i (f1 f2)
	(!! (since_ii (!! f1) f2))
)
(defun OrderConMonoD (f1 f2 exception)
(&&
	(-> f1 (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))
))
(defun OrderGConMonoD (f1 f2 guard exception)
(&&
	(-> (&& f1 guard) (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))
))
(defun OrderGnoConMonoD (f1 f2 guard exception)
(&&
	(-> (&& f1 guard) (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))
	(-> (&& f1 guard) (!! f2))
))
(defun OrdernoConMonoD (f1 f2 exception)
(&&
	(-> f1 (|| (until_ei (&& (!! f1) (!! f2)) exception) (until_ei (&& (!! f1) (!! exception)) f2)))
	(-> f1 (!! f2))
))
(defun OrderConMonoDRev (f1 f2 exception)
	(-> f2 (since_ei (&& (!! f2) (!! exception)) f1))
)
(defun OrderGConMonoDRev (f1 f2 guard exception)
	(-> f2 (since_ei (&& (!! f2) (!! exception)) (&& f1 guard)))
)
(defun OrderGnoconMonoDRev (f1 f2 guard exception)
(&&
	(-> f2 (since_ei (&& (!! f2) (!! exception)) (&& f1 guard)))
	(-> (&& f1 guard) (!! f2))
))
(defun OrdernoConMonoDRev (f1 f2 exception)
(&&
	(-> f2 (since_ei (&& (!! f2) (!! exception)) f1))
	(-> f1 (!! f2))
))
;; </Predicate based modular semantics>
(defvar AX1 
 (&& 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;org.correttouml.uml.diagrams.classdiagram.Clock@2ad7b66eSEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckPanelDataTICK)) 14)) (-P- ckPanelDataTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@19fe54bbSEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckWeatherTICK)) 14)) (-P- ckWeatherTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@86cce52SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckNavigationTICK)) 14)) (-P- ckNavigationTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@7f3fa2c6SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckMainMMITICK)) 14)) (-P- ckMainMMITICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@380a05bbSEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckRadarTICK)) 14)) (-P- ckRadarTICK))

;;SIGNALS SEMANTICS

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@40a6d7d4 SEMANTICS

;;STATE WeatherDataState
(-> (-P- BigBang) (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (-P- BigBang) (next (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER)))
(-> (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT))) (next (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT)) (next (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState))))
(-> (&&  (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)) (next (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER))) (next (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (&&  (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)) (next (!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER)))) (next (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState))))

;;TRANSITION @ckWeather.tick/@WeatherDataToEnvironment.start
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^S^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^S^PYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^S^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^S^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^S^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^S^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^S^PYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@408b1bdc SEMANTICS

;;STATE NavDataState
(-> (-P- BigBang) (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (-P- BigBang) (next (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER)))
(-> (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (!! (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT))) (next (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT)) (next (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState))))
(-> (&&  (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)) (next (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER))) (next (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (&&  (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)) (next (!! (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER)))) (next (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState))))

;;TRANSITION @ckNavigation.tick/@NavigationToEnvironment.start
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CP1WZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CP1WZYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_W^CP1WZYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CP1WZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CP1WZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CP1WZYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CP1WZYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;panelData3SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData3OPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJpanelData3OPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJpanelData3OPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;panelData3 STD SMPanelData3org.correttouml.uml.diagrams.statediagram.StateDiagram@234bb715 SEMANTICS

;;STATE PanelDataState
(-> (-P- BigBang) (!! (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState)))
(-> (-P- BigBang) (next (-P- OBJpanelData3_STDSMPanelData3_STATEPanelDataState_ENTER)))
(-> (-P- OBJpanelData3_STDSMPanelData3_STATEPanelDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJpanelData3_STDSMPanelData3_STATEPanelDataState_EXIT))
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (!! (-P- OBJpanelData3_STDSMPanelData3_STATEPanelDataState_EXIT))) (next (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState)))
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_STATEPanelDataState_EXIT)) (next (!! (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState))))
(-> (&&  (!! (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState)) (next (-P- OBJpanelData3_STDSMPanelData3_STATEPanelDataState_ENTER))) (next (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState)))
(-> (&&  (!! (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState)) (next (!! (-P- OBJpanelData3_STDSMPanelData3_STATEPanelDataState_ENTER)))) (next (!! (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState))))

;;TRANSITION @ckPanelData.tick/@PanelDataToEnvironment3.start
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_W^COAE^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_W^COAE^PYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_W^COAE^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_W^COAE^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_W^COAE^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_W^COAE^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- PanelDataToEnvironment3_Start)))
(-> (-P- PanelDataToEnvironment3_Start) (yesterday (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_W^COAE^PYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@6b2cf4fc SEMANTICS

;;STATE NavDataState
(-> (-P- BigBang) (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (-P- BigBang) (next (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER)))
(-> (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (!! (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT))) (next (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT)) (next (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState))))
(-> (&&  (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)) (next (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER))) (next (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (&&  (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)) (next (!! (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER)))) (next (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState))))

;;TRANSITION @ckNavigation.tick/@NavigationToEnvironment.start
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRDZ5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRDZ5YLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRDZ5YLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRDZ5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRDZ5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRDZ5YLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRDZ5YLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@52709cc SEMANTICS

;;STATE WeatherDataState
(-> (-P- BigBang) (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (-P- BigBang) (next (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER)))
(-> (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT))) (next (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT)) (next (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState))))
(-> (&&  (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)) (next (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER))) (next (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (&&  (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)) (next (!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER)))) (next (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState))))

;;TRANSITION @ckWeather.tick/@WeatherDataToEnvironment.start
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^L^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^L^PYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^L^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^L^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^L^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^L^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^L^PYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;environmentSEMANTICS
;;Object operation definitions
(<-> (-P- OBJenvironmentOPradar_setResult) (||  (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJenvironmentOPradar_setSts) (||  (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJenvironmentOPradar_getCmd) (||  (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJenvironmentOPmain_radar_getResult) (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPpanel_getLed) (||  (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJenvironmentOPmain_nav_getLongitude) (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPmain_weather_setNewImage) (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPmain_weather_setImage) (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPmain_radar_getSts) (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPpanel_setButton) (||  (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJenvironmentOPmain_panel_getButton) (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPweather_setStatus) (||  (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJenvironmentOPweather_getNewImage) (||  (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJenvironmentOPmain_panel_setLed) (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPmain_nav_getLatitude) (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPmain_radar_setCmd) (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End))
(<-> (-P- OBJenvironmentOPnav_setLatitude) (||  (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJenvironmentOPnav_setLongitude) (||  (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;ckNavigationSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;panelData2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData2OPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJpanelData2OPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJpanelData2OPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;panelData2 STD SMPanelData2org.correttouml.uml.diagrams.statediagram.StateDiagram@b22e95c SEMANTICS

;;STATE PanelDataState
(-> (-P- BigBang) (!! (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState)))
(-> (-P- BigBang) (next (-P- OBJpanelData2_STDSMPanelData2_STATEPanelDataState_ENTER)))
(-> (-P- OBJpanelData2_STDSMPanelData2_STATEPanelDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJpanelData2_STDSMPanelData2_STATEPanelDataState_EXIT))
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (!! (-P- OBJpanelData2_STDSMPanelData2_STATEPanelDataState_EXIT))) (next (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState)))
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_STATEPanelDataState_EXIT)) (next (!! (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState))))
(-> (&&  (!! (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState)) (next (-P- OBJpanelData2_STDSMPanelData2_STATEPanelDataState_ENTER))) (next (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState)))
(-> (&&  (!! (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState)) (next (!! (-P- OBJpanelData2_STDSMPanelData2_STATEPanelDataState_ENTER)))) (next (!! (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState))))

;;TRANSITION @ckPanelData.tick/@PanelDataToEnvironment2.start
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_W^CNZDZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_W^CNZDZYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_W^CNZDZYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_W^CNZDZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_W^CNZDZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_W^CNZDZYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- PanelDataToEnvironment2_Start)))
(-> (-P- PanelDataToEnvironment2_Start) (yesterday (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_W^CNZDZYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@682de030 SEMANTICS

;;STATE RadarDataState
(-> (-P- BigBang) (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (-P- BigBang) (next (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER)))
(-> (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT))) (next (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT)) (next (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState))))
(-> (&&  (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)) (next (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER))) (next (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (&&  (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)) (next (!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER)))) (next (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState))))

;;TRANSITION @ckRadar.tick/@RadarDataToEnvironment.start
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^COAL5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^COAL5YLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_W^COAL5YLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^COAL5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^COAL5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^COAL5YLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^COAL5YLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;ckMainMMISEMANTICS
;;Object operation definitions
;;Attribute semantics

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@760d4992 SEMANTICS

;;STATE NavDataState
(-> (-P- BigBang) (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (-P- BigBang) (next (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER)))
(-> (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (!! (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT))) (next (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT)) (next (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState))))
(-> (&&  (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)) (next (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER))) (next (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (&&  (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)) (next (!! (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER)))) (next (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState))))

;;TRANSITION @ckNavigation.tick/@NavigationToEnvironment.start
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRD^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRD^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRD^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRD^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRD^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRD^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRD^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;ckPanelDataSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;ckRadarSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@46c3e167 SEMANTICS

;;STATE RadarDataState
(-> (-P- BigBang) (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (-P- BigBang) (next (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER)))
(-> (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT))) (next (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT)) (next (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState))))
(-> (&&  (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)) (next (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER))) (next (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (&&  (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)) (next (!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER)))) (next (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState))))

;;TRANSITION @ckRadar.tick/@RadarDataToEnvironment.start
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CO^NO5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CO^NO5YLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CO^NO5YLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CO^NO5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CO^NO5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CO^NO5YLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CO^NO5YLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@5398a7a5 SEMANTICS

;;STATE RadarDataState
(-> (-P- BigBang) (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (-P- BigBang) (next (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER)))
(-> (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT))) (next (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT)) (next (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState))))
(-> (&&  (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)) (next (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER))) (next (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (&&  (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)) (next (!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER)))) (next (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState))))

;;TRANSITION @ckRadar.tick/@RadarDataToEnvironment.start
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPOV^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPOV^PYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPOV^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPOV^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPOV^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPOV^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPOV^PYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@4e12eb00 SEMANTICS

;;STATE NavDataState
(-> (-P- BigBang) (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (-P- BigBang) (next (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER)))
(-> (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (!! (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT))) (next (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_STATENavDataState_EXIT)) (next (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState))))
(-> (&&  (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)) (next (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER))) (next (-P- $OBJnavData_STDSMNavData_STATENavDataState)))
(-> (&&  (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState)) (next (!! (-P- OBJnavData_STDSMNavData_STATENavDataState_ENTER)))) (next (!! (-P- $OBJnavData_STDSMNavData_STATENavDataState))))

;;TRANSITION @ckNavigation.tick/@NavigationToEnvironment.start
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CQ^CYZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CQ^CYZYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_W^CQ^CYZYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CQ^CYZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CQ^CYZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CQ^CYZYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_W^CQ^CYZYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;panelData1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData1OPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJpanelData1OPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJpanelData1OPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;panelData1 STD SMPanelData1org.correttouml.uml.diagrams.statediagram.StateDiagram@5aaf2690 SEMANTICS

;;STATE PanelDataState
(-> (-P- BigBang) (!! (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState)))
(-> (-P- BigBang) (next (-P- OBJpanelData1_STDSMPanelData1_STATEPanelDataState_ENTER)))
(-> (-P- OBJpanelData1_STDSMPanelData1_STATEPanelDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJpanelData1_STDSMPanelData1_STATEPanelDataState_EXIT))
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (!! (-P- OBJpanelData1_STDSMPanelData1_STATEPanelDataState_EXIT))) (next (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState)))
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_STATEPanelDataState_EXIT)) (next (!! (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState))))
(-> (&&  (!! (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState)) (next (-P- OBJpanelData1_STDSMPanelData1_STATEPanelDataState_ENTER))) (next (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState)))
(-> (&&  (!! (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState)) (next (!! (-P- OBJpanelData1_STDSMPanelData1_STATEPanelDataState_ENTER)))) (next (!! (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState))))

;;TRANSITION @ckPanelData.tick/@PanelDataToEnvironment1.start
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_W^CM^YB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_W^CM^YB^PYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_W^CM^YB^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_W^CM^YB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_W^CM^YB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_W^CM^YB^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- PanelDataToEnvironment1_Start)))
(-> (-P- PanelDataToEnvironment1_Start) (yesterday (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_W^CM^YB^PYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@560c35fa SEMANTICS

;;STATE RadarDataState
(-> (-P- BigBang) (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (-P- BigBang) (next (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER)))
(-> (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT))) (next (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_STATERadarDataState_EXIT)) (next (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState))))
(-> (&&  (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)) (next (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER))) (next (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)))
(-> (&&  (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState)) (next (!! (-P- OBJradarData_STDSMRadarData_STATERadarDataState_ENTER)))) (next (!! (-P- $OBJradarData_STDSMRadarData_STATERadarDataState))))

;;TRANSITION @ckRadar.tick/@RadarDataToEnvironment.start
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPON5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPON5YLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPON5YLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPON5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPON5YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPON5YLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPON5YLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;panelData0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData0OPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJpanelData0OPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJpanelData0OPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;panelData0 STD SMPanelData0org.correttouml.uml.diagrams.statediagram.StateDiagram@2cad4d05 SEMANTICS

;;STATE PanelDataState
(-> (-P- BigBang) (!! (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState)))
(-> (-P- BigBang) (next (-P- OBJpanelData0_STDSMPanelData0_STATEPanelDataState_ENTER)))
(-> (-P- OBJpanelData0_STDSMPanelData0_STATEPanelDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJpanelData0_STDSMPanelData0_STATEPanelDataState_EXIT))
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (!! (-P- OBJpanelData0_STDSMPanelData0_STATEPanelDataState_EXIT))) (next (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState)))
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_STATEPanelDataState_EXIT)) (next (!! (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState))))
(-> (&&  (!! (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState)) (next (-P- OBJpanelData0_STDSMPanelData0_STATEPanelDataState_ENTER))) (next (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState)))
(-> (&&  (!! (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState)) (next (!! (-P- OBJpanelData0_STDSMPanelData0_STATEPanelDataState_ENTER)))) (next (!! (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState))))

;;TRANSITION @ckPanelData.tick/@PanelDataToEnvironment0.start
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_W^CMLBZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_W^CMLBZYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_W^CMLBZYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_W^CMLBZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_W^CMLBZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_W^CMLBZYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- PanelDataToEnvironment0_Start)))
(-> (-P- PanelDataToEnvironment0_Start) (yesterday (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_W^CMLBZYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@2d585836 SEMANTICS

;;STATE WeatherDataState
(-> (-P- BigBang) (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (-P- BigBang) (next (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER)))
(-> (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT))) (next (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT)) (next (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState))))
(-> (&&  (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)) (next (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER))) (next (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (&&  (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)) (next (!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER)))) (next (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState))))

;;TRANSITION @ckWeather.tick/@WeatherDataToEnvironment.start
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CS4^O^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CS4^O^PYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CS4^O^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CS4^O^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CS4^O^PYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CS4^O^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CS4^O^PYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@aff1185 SEMANTICS

;;STATE WeatherDataState
(-> (-P- BigBang) (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (-P- BigBang) (next (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER)))
(-> (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT))) (next (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_EXIT)) (next (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState))))
(-> (&&  (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)) (next (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER))) (next (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)))
(-> (&&  (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState)) (next (!! (-P- OBJweatherData_STDSMWeatherData_STATEWeatherDataState_ENTER)))) (next (!! (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState))))

;;TRANSITION @ckWeather.tick/@WeatherDataToEnvironment.start
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CR^Q^JZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CR^Q^JZYLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CR^Q^JZYLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CR^Q^JZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CR^Q^JZYLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CR^Q^JZYLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CR^Q^JZYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;ckWeatherSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;mainMMISEMANTICS
;;Object operation definitions
(<-> (-P- OBJmainMMIOPgetData) (||  (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJmainMMIOPshowData) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(<-> (-P- OBJmainMMIOPprocessData) (||  (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
;;Attribute semantics

;;mainMMI STD smMainMMIorg.correttouml.uml.diagrams.statediagram.StateDiagram@589e0cdc SEMANTICS

;;STATE MainMMIState
(-> (-P- BigBang) (!! (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState)))
(-> (-P- BigBang) (next (-P- OBJmainMMI_STDsmMainMMI_STATEMainMMIState_ENTER)))
(-> (-P- OBJmainMMI_STDsmMainMMI_STATEMainMMIState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJmainMMI_STDsmMainMMI_STATEMainMMIState_EXIT))
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (!! (-P- OBJmainMMI_STDsmMainMMI_STATEMainMMIState_EXIT))) (next (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState)))
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_STATEMainMMIState_EXIT)) (next (!! (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState))))
(-> (&&  (!! (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState)) (next (-P- OBJmainMMI_STDsmMainMMI_STATEMainMMIState_ENTER))) (next (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState)))
(-> (&&  (!! (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState)) (next (!! (-P- OBJmainMMI_STDsmMainMMI_STATEMainMMIState_ENTER)))) (next (!! (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState))))

;;TRANSITION @ckMainMMI.tick/@MainMMIToEnvironment.start
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_W^CL^J75YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_W^CL^J75YLE^E^AG7^S8^O^Z^L^FG^F^W))
(-> (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_W^CL^J75YLE^E^AG7^S8^O^Z^L^FG^F^W) (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_W^CL^J75YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER)))
(<-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- ckMainMMITICK)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_W^CL^J75YLE^E^AG7^S8^O^Z^L^FG^F^W_TRIGGER))
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_W^CL^J75YLE^E^AG7^S8^O^Z^L^FG^F^W)) (next (-P- MainMMIToEnvironment_Start)))
(-> (-P- MainMMIToEnvironment_Start) (yesterday (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_W^CL^J75YLE^E^AG7^S8^O^Z^L^FG^F^W))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- WeatherDataToEnvironment_Start) (||  (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^S^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CSR^L^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CS4^O^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_W^CR^Q^JZYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;STOP SEMANTICS
(!! (-P- WeatherDataToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- WeatherDataToEnvironment) (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_End) (-P- WeatherDataToEnvironment_Stop))
(<-> (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_l1_Start))
(<-> (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_l2_Start))
(OrderCon (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l1) (-P- WeatherDataToEnvironment_l1_Start) (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CSR^KZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_setStatus$_W^CSR^KJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_getNewImage$_W^CSR^J^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CSR^J5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- NavigationToEnvironment_Start) (||  (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_W^CP1WZYLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRDZ5YLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_W^CRD^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_W^CQ^CYZYLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;STOP SEMANTICS
(!! (-P- NavigationToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- NavigationToEnvironment) (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_End) (-P- NavigationToEnvironment_Stop))
(<-> (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_l1_Start))
(<-> (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_l2_Start))
(OrderCon (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l1) (-P- NavigationToEnvironment_l1_Start) (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CR^Q^HZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CR^Q^HJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CR^Q^IJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLatitude$_W^CR^Q^H^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CR^Q^H5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment0 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_Start) (yesterday (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_W^CMLBZYLE^E^AG7^S8^O^Z^L^FG^F^W)))

;;STOP SEMANTICS
(!! (-P- PanelDataToEnvironment0_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- PanelDataToEnvironment0) (-P- PanelDataToEnvironment0_Start) (-P- PanelDataToEnvironment0_End) (-P- PanelDataToEnvironment0_Stop))
(<-> (-P- PanelDataToEnvironment0_Start) (-P- PanelDataToEnvironment0_l1_Start))
(<-> (-P- PanelDataToEnvironment0_Start) (-P- PanelDataToEnvironment0_l2_Start))
(OrderCon (-P- PanelDataToEnvironment0_Start) (-P- PanelDataToEnvironment0_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l1_Start) (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l2_Start) (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- PanelDataToEnvironment0_l1) (-P- PanelDataToEnvironment0_l1_Start) (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l1_Start) (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_l1_End))
(-> (-P- PanelDataToEnvironment0_l1_End) (||  (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_l1_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- PanelDataToEnvironment0_l2) (-P- PanelDataToEnvironment0_l2_Start) (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l2_Start) (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_l2_End))
(-> (-P- PanelDataToEnvironment0_l2_End) (||  (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_l2_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- PanelDataToEnvironment0_End) (&&  (||  (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_Start)) (SomPIn_i (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Start)))))
(!! (-P- PanelDataToEnvironment0_l1_Skip))
(!! (-P- PanelDataToEnvironment0_l2_Skip))
(Borders (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_getLed$_W^CM^X_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CM^X_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CM^YAZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment0_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment0) (-> (-P- MESSAGEpanel_setButton$_W^CM^YAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment0_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment0_Start)) (-P- PanelDataToEnvironment0_Start)))))))
(-> (-P- PanelDataToEnvironment0) (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- RadarDataToEnvironment_Start) (||  (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_W^COAL5YLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CO^NO5YLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPOV^PYLE^E^AG7^S8^O^Z^L^FG^F^W)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_W^CPON5YLE^E^AG7^S8^O^Z^L^FG^F^W))))

;;STOP SEMANTICS
(!! (-P- RadarDataToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- RadarDataToEnvironment) (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_End) (-P- RadarDataToEnvironment_Stop))
(<-> (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_l1_Start))
(<-> (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_l2_Start))
(OrderCon (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l1) (-P- RadarDataToEnvironment_l1_Start) (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CP1VJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_getCmd$_W^CP1UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CP1U5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setSts$_W^CP1U^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CP1UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- RadarDataToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- RadarDataToEnvironment) (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_End) (-P- RadarDataToEnvironment_Stop))
(<-> (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_l1_Start))
(<-> (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_l2_Start))
(OrderCon (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l1) (-P- RadarDataToEnvironment_l1_Start) (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_getCmd$_W^CO^NM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CO^NNZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setSts$_W^CO^NNJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CO^NM5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CO^NN^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- NavigationToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- NavigationToEnvironment) (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_End) (-P- NavigationToEnvironment_Stop))
(<-> (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_l1_Start))
(<-> (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_l2_Start))
(OrderCon (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l1) (-P- NavigationToEnvironment_l1_Start) (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CQ^C^EJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CQ^C^D5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CRDY^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CRDYZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLatitude$_W^CRDYJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- NavigationToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- NavigationToEnvironment) (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_End) (-P- NavigationToEnvironment_Stop))
(<-> (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_l1_Start))
(<-> (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_l2_Start))
(OrderCon (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l1) (-P- NavigationToEnvironment_l1_Start) (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CQ^CWJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLatitude$_W^CQ^CW^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CQ^CXJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CQ^CW5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CQ^CWZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- WeatherDataToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- WeatherDataToEnvironment) (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_End) (-P- WeatherDataToEnvironment_Stop))
(<-> (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_l1_Start))
(<-> (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_l2_Start))
(OrderCon (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l1) (-P- WeatherDataToEnvironment_l1_Start) (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CS4^UZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CS4^T5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_getNewImage$_W^CS4^T^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_setStatus$_W^CS4^UJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment1 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_Start) (yesterday (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_W^CM^YB^PYLE^E^AG7^S8^O^Z^L^FG^F^W)))

;;STOP SEMANTICS
(!! (-P- PanelDataToEnvironment1_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- PanelDataToEnvironment1) (-P- PanelDataToEnvironment1_Start) (-P- PanelDataToEnvironment1_End) (-P- PanelDataToEnvironment1_Stop))
(<-> (-P- PanelDataToEnvironment1_Start) (-P- PanelDataToEnvironment1_l1_Start))
(<-> (-P- PanelDataToEnvironment1_Start) (-P- PanelDataToEnvironment1_l2_Start))
(OrderCon (-P- PanelDataToEnvironment1_Start) (-P- PanelDataToEnvironment1_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- PanelDataToEnvironment1_l1_Start) (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- PanelDataToEnvironment1_l2_Start) (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- PanelDataToEnvironment1_l1) (-P- PanelDataToEnvironment1_l1_Start) (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- PanelDataToEnvironment1_l1_Start) (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_l1_End))
(-> (-P- PanelDataToEnvironment1_l1_End) (||  (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_l1_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- PanelDataToEnvironment1_l2) (-P- PanelDataToEnvironment1_l2_Start) (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- PanelDataToEnvironment1_l2_Start) (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_l2_End))
(-> (-P- PanelDataToEnvironment1_l2_End) (||  (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_l2_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- PanelDataToEnvironment1_End) (&&  (||  (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_Start)) (SomPIn_i (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Start)))))
(!! (-P- PanelDataToEnvironment1_l1_Skip))
(!! (-P- PanelDataToEnvironment1_l2_Skip))
(Borders (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_getLed$_W^CNZBZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CNZCJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CNZB^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment1_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment1) (-> (-P- MESSAGEpanel_setButton$_W^CNZB5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment1_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment1_Start)) (-P- PanelDataToEnvironment1_Start)))))))
(-> (-P- PanelDataToEnvironment1) (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- WeatherDataToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- WeatherDataToEnvironment) (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_End) (-P- WeatherDataToEnvironment_Stop))
(<-> (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_l1_Start))
(<-> (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_l2_Start))
(OrderCon (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l1) (-P- WeatherDataToEnvironment_l1_Start) (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CS4^NZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_setStatus$_W^CS4^NJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_getNewImage$_W^CS4^M^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CS4^M5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- RadarDataToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- RadarDataToEnvironment) (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_End) (-P- RadarDataToEnvironment_Stop))
(<-> (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_l1_Start))
(<-> (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_l2_Start))
(OrderCon (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l1) (-P- RadarDataToEnvironment_l1_Start) (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CPOT^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setSts$_W^CPOT5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CPOUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CPOUJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_getCmd$_W^CPOTZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD MainMMIToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- MainMMIToEnvironment_Start) (yesterday (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_W^CL^J75YLE^E^AG7^S8^O^Z^L^FG^F^W)))

;;STOP SEMANTICS
(!! (-P- MainMMIToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- MainMMIToEnvironment) (-P- MainMMIToEnvironment_Start) (-P- MainMMIToEnvironment_End) (-P- MainMMIToEnvironment_Stop))
(<-> (-P- MainMMIToEnvironment_Start) (-P- MainMMIToEnvironment_l1_Start))
(<-> (-P- MainMMIToEnvironment_Start) (-P- MainMMIToEnvironment_l2_Start))
(OrderCon (-P- MainMMIToEnvironment_Start) (-P- MainMMIToEnvironment_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l1_Start) (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l2_Start) (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MainMMIToEnvironment_l1) (-P- MainMMIToEnvironment_l1_Start) (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l1_Start) (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_l1_End))
(-> (-P- MainMMIToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_l1_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MainMMIToEnvironment_l2) (-P- MainMMIToEnvironment_l2_Start) (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l2_Start) (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_l2_End))
(-> (-P- MainMMIToEnvironment_l2_End) (||  (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_l2_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MainMMIToEnvironment_End) (&&  (||  (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_l2_End)) (&&  (SomPIn_i (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_Start)) (SomPIn_i (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Start)))))
(!! (-P- MainMMIToEnvironment_l1_Skip))
(!! (-P- MainMMIToEnvironment_l2_Skip))
(Borders (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_nav_getLongitude$_W^CMK^_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_weather_setImage$_W^CMK_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_radar_getResult$_W^CMK^_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_nav_getLatitude$_W^CMK^_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CMK^_5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CMLAJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_weather_setNewImage$_W^CMK_^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_radar_getSts$_W^CMK95YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_panel_setLed$_W^CMK_JYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEmain_panel_setCmd$_W^CMK_ZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MainMMIToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- MainMMIToEnvironment_TIMECONSTRAINT_1) (&&  (-P- MainMMIToEnvironment) (-> (-P- MESSAGEmain_panel_getButton_message$_W^CMK9^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (&&  (withinp_ii (-P- MainMMIToEnvironment_Start) 2) (!! (since_ii (!! (-P- MainMMIToEnvironment_Start)) (-P- MainMMIToEnvironment_Start)))))))
(-> (-P- MainMMIToEnvironment) (-P- MainMMIToEnvironment_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- RadarDataToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- RadarDataToEnvironment) (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_End) (-P- RadarDataToEnvironment_Stop))
(<-> (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_l1_Start))
(<-> (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_l2_Start))
(OrderCon (-P- RadarDataToEnvironment_Start) (-P- RadarDataToEnvironment_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l1) (-P- RadarDataToEnvironment_l1_Start) (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_getCmd$_W^CO^NUZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CO^NU^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CPOM^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setSts$_W^CPOMJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setResult$_W^CPOMZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- NavigationToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- NavigationToEnvironment) (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_End) (-P- NavigationToEnvironment_Stop))
(<-> (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_l1_Start))
(<-> (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_l2_Start))
(OrderCon (-P- NavigationToEnvironment_Start) (-P- NavigationToEnvironment_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l1) (-P- NavigationToEnvironment_l1_Start) (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEgetData$_W^CRD^FZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CRD^F^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLongitude$_W^CRD^GJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEradar_setLatitude$_W^CRD^F5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CRD^GZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment2 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_Start) (yesterday (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_W^CNZDZYLE^E^AG7^S8^O^Z^L^FG^F^W)))

;;STOP SEMANTICS
(!! (-P- PanelDataToEnvironment2_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- PanelDataToEnvironment2) (-P- PanelDataToEnvironment2_Start) (-P- PanelDataToEnvironment2_End) (-P- PanelDataToEnvironment2_Stop))
(<-> (-P- PanelDataToEnvironment2_Start) (-P- PanelDataToEnvironment2_l1_Start))
(<-> (-P- PanelDataToEnvironment2_Start) (-P- PanelDataToEnvironment2_l2_Start))
(OrderCon (-P- PanelDataToEnvironment2_Start) (-P- PanelDataToEnvironment2_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- PanelDataToEnvironment2_l1_Start) (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- PanelDataToEnvironment2_l2_Start) (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- PanelDataToEnvironment2_l1) (-P- PanelDataToEnvironment2_l1_Start) (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- PanelDataToEnvironment2_l1_Start) (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_l1_End))
(-> (-P- PanelDataToEnvironment2_l1_End) (||  (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_l1_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- PanelDataToEnvironment2_l2) (-P- PanelDataToEnvironment2_l2_Start) (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- PanelDataToEnvironment2_l2_Start) (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_l2_End))
(-> (-P- PanelDataToEnvironment2_l2_End) (||  (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_l2_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- PanelDataToEnvironment2_End) (&&  (||  (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_Start)) (SomPIn_i (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Start)))))
(!! (-P- PanelDataToEnvironment2_l1_Skip))
(!! (-P- PanelDataToEnvironment2_l2_Skip))
(Borders (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CNZI5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CNZJZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_getLed$_W^CNZI^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment2_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment2) (-> (-P- MESSAGEpanel_setButton$_W^CNZJJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment2_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment2_Start)) (-P- PanelDataToEnvironment2_Start)))))))
(-> (-P- PanelDataToEnvironment2) (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- WeatherDataToEnvironment_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- WeatherDataToEnvironment) (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_End) (-P- WeatherDataToEnvironment_Stop))
(<-> (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_l1_Start))
(<-> (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_l2_Start))
(OrderCon (-P- WeatherDataToEnvironment_Start) (-P- WeatherDataToEnvironment_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l1) (-P- WeatherDataToEnvironment_l1_Start) (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^CSR^RZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_getNewImage$_W^CSR^Q^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEweather_setStatus$_W^CSR^RJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^CSR^Q5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment3 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment3_Start) (yesterday (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_W^COAE^PYLE^E^AG7^S8^O^Z^L^FG^F^W)))

;;STOP SEMANTICS
(!! (-P- PanelDataToEnvironment3_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- PanelDataToEnvironment3) (-P- PanelDataToEnvironment3_Start) (-P- PanelDataToEnvironment3_End) (-P- PanelDataToEnvironment3_Stop))
(<-> (-P- PanelDataToEnvironment3_Start) (-P- PanelDataToEnvironment3_l1_Start))
(<-> (-P- PanelDataToEnvironment3_Start) (-P- PanelDataToEnvironment3_l2_Start))
(OrderCon (-P- PanelDataToEnvironment3_Start) (-P- PanelDataToEnvironment3_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- PanelDataToEnvironment3_l1_Start) (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- PanelDataToEnvironment3_l2_Start) (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- PanelDataToEnvironment3_l1) (-P- PanelDataToEnvironment3_l1_Start) (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- PanelDataToEnvironment3_l1_Start) (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_l1_End))
(-> (-P- PanelDataToEnvironment3_l1_End) (||  (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_l1_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start)))
(-> (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- PanelDataToEnvironment3_l2) (-P- PanelDataToEnvironment3_l2_Start) (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- PanelDataToEnvironment3_l2_Start) (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_l2_End))
(-> (-P- PanelDataToEnvironment3_l2_End) (||  (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_l2_End) (!! (-P- PanelDataToEnvironment3_l2_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- PanelDataToEnvironment3_l2_Skip)) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (!! (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End)))
(-> (-P- PanelDataToEnvironment3_End) (&&  (||  (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_Start)) (SomPIn_i (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Start)))))
(!! (-P- PanelDataToEnvironment3_l1_Skip))
(!! (-P- PanelDataToEnvironment3_l2_Skip))
(Borders (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEshowData$_W^COAK^PYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEprocessData$_W^COAKJYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W) (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_Start) (-P- MESSAGEpanel_getLed$_W^COAJ5YLE^E^AG7^S8^O^Z^L^FG^F^W_End) (-P- PanelDataToEnvironment3_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment3_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment3) (-> (-P- MESSAGEpanel_setButton$_W^COAKZYLE^E^AG7^S8^O^Z^L^FG^F^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment3_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment3_Start)) (-P- PanelDataToEnvironment3_Start)))))))
(-> (-P- PanelDataToEnvironment3) (-P- PanelDataToEnvironment3_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IODs 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


)) ;;END AX1 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PROPERTIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- BigBang) (alwf_e (!! (-P- BigBang)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;weatherData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;panelData3 INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;environment INITIALIZATION SEMANTICS

;;ckNavigation INITIALIZATION SEMANTICS

;;panelData2 INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;ckMainMMI INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;ckPanelData INITIALIZATION SEMANTICS

;;ckRadar INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;panelData1 INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;panelData0 INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;ckWeather INITIALIZATION SEMANTICS

;;mainMMI INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) initAx))


(bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )