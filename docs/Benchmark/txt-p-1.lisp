;  Model statistics:
;  221	:Number of UML elements
;  11	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  5	:Number of states
;  10	:Number of transitions
;  10	:Number of lifelines in sequence diagrams
;  29	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  2	:Number of time contraints in sequence diagrams
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

;;org.correttouml.uml.diagrams.classdiagram.Clock@ba1575eSEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckMainMMITICK)) 14)) (-P- ckMainMMITICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@f5c4c43SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckNavigationTICK)) 14)) (-P- ckNavigationTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@6aca2d82SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckRadarTICK)) 14)) (-P- ckRadarTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@7f71e893SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckWeatherTICK)) 14)) (-P- ckWeatherTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@d6ee249SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckPanelDataTICK)) 14)) (-P- ckPanelDataTICK))

;;SIGNALS SEMANTICS

;;ckNavigationSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;ckPanelDataSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;panelData0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData0OPshowData) (||  (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End)))
(<-> (-P- OBJpanelData0OPgetData) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJpanelData0OPprocessData) (||  (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End)))
;;Attribute semantics

;;panelData0 STD SMPanelData0org.correttouml.uml.diagrams.statediagram.StateDiagram@6ead93a4 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^H^M4^H5ZYLE^E^AJ^A7HD22^Y^NBA_TRIGGER)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^H^M4^H5ZYLE^E^AJ^A7HD22^Y^NBA))
(-> (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^H^M4^H5ZYLE^E^AJ^A7HD22^Y^NBA) (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^H^M4^H5ZYLE^E^AJ^A7HD22^Y^NBA_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^H^M4^H5ZYLE^E^AJ^A7HD22^Y^NBA_TRIGGER))
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^H^M4^H5ZYLE^E^AJ^A7HD22^Y^NBA)) (next (-P- PanelDataToEnvironment0_Start)))
(-> (-P- PanelDataToEnvironment0_Start) (yesterday (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^H^M4^H5ZYLE^E^AJ^A7HD22^Y^NBA))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End)))
(<-> (-P- OBJweatherDataOPgetData) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@797f57e6 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^H^M5^V7JYLE^E^AJ^A7HD22^Y^NBA_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^H^M5^V7JYLE^E^AJ^A7HD22^Y^NBA))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^H^M5^V7JYLE^E^AJ^A7HD22^Y^NBA) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^H^M5^V7JYLE^E^AJ^A7HD22^Y^NBA_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^H^M5^V7JYLE^E^AJ^A7HD22^Y^NBA_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^H^M5^V7JYLE^E^AJ^A7HD22^Y^NBA)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^H^M5^V7JYLE^E^AJ^A7HD22^Y^NBA))))

;;ckWeatherSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;ckRadarSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPgetData) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@733e6b0b SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^H^M5I1^PYLE^E^AJ^A7HD22^Y^NBA_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^H^M5I1^PYLE^E^AJ^A7HD22^Y^NBA))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^H^M5I1^PYLE^E^AJ^A7HD22^Y^NBA) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^H^M5I1^PYLE^E^AJ^A7HD22^Y^NBA_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^H^M5I1^PYLE^E^AJ^A7HD22^Y^NBA_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^H^M5I1^PYLE^E^AJ^A7HD22^Y^NBA)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^H^M5I1^PYLE^E^AJ^A7HD22^Y^NBA))))

;;mainMMISEMANTICS
;;Object operation definitions
(<-> (-P- OBJmainMMIOPprocessData) (||  (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End)))
(<-> (-P- OBJmainMMIOPgetData) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJmainMMIOPshowData) (||  (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End)))
;;Attribute semantics

;;mainMMI STD smMainMMIorg.correttouml.uml.diagrams.statediagram.StateDiagram@72786518 SEMANTICS

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
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^H^M4^H^S5YLE^E^AJ^A7HD22^Y^NBA_TRIGGER)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^H^M4^H^S5YLE^E^AJ^A7HD22^Y^NBA))
(-> (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^H^M4^H^S5YLE^E^AJ^A7HD22^Y^NBA) (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^H^M4^H^S5YLE^E^AJ^A7HD22^Y^NBA_TRIGGER)))
(<-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- ckMainMMITICK)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^H^M4^H^S5YLE^E^AJ^A7HD22^Y^NBA_TRIGGER))
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^H^M4^H^S5YLE^E^AJ^A7HD22^Y^NBA)) (next (-P- MainMMIToEnvironment_Start)))
(-> (-P- MainMMIToEnvironment_Start) (yesterday (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^H^M4^H^S5YLE^E^AJ^A7HD22^Y^NBA))))

;;environmentSEMANTICS
;;Object operation definitions
(<-> (-P- OBJenvironmentOPmain_radar_getSts) (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPpanel_getLed) (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPmain_radar_setCmd) (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPnav_setLongitude) (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPmain_panel_setLed) (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPradar_setSts) (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPradar_getCmd) (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPradar_setResult) (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPweather_getNewImage) (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPmain_nav_getLongitude) (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPmain_nav_getLatitude) (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPmain_weather_setImage) (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPpanel_setButton) (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPmain_panel_getButton) (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPnav_setLatitude) (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPweather_setStatus) (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPmain_weather_setNewImage) (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_End))
(<-> (-P- OBJenvironmentOPmain_radar_getResult) (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_End))
;;Attribute semantics

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End)))
(<-> (-P- OBJnavDataOPgetData) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@43bdf003 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^H^M5I9ZYLE^E^AJ^A7HD22^Y^NBA_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^H^M5I9ZYLE^E^AJ^A7HD22^Y^NBA))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^H^M5I9ZYLE^E^AJ^A7HD22^Y^NBA) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^H^M5I9ZYLE^E^AJ^A7HD22^Y^NBA_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^H^M5I9ZYLE^E^AJ^A7HD22^Y^NBA_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^H^M5I9ZYLE^E^AJ^A7HD22^Y^NBA)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^H^M5I9ZYLE^E^AJ^A7HD22^Y^NBA))))

;;ckMainMMISEMANTICS
;;Object operation definitions
;;Attribute semantics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- NavigationToEnvironment_Start) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^H^M5I9ZYLE^E^AJ^A7HD22^Y^NBA)))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End)))
(OrderGCon (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEgetData$_^H^M5^V45YLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setLongitude$_^H^M5^V5^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setLatitude$_^H^M5^V5ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5^V55YLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5^V5JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- RadarDataToEnvironment_Start) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^H^M5I1^PYLE^E^AJ^A7HD22^Y^NBA)))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5I7ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setSts$_^H^M5I7^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_setResult$_^H^M5I75YLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5I8JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEradar_getCmd$_^H^M5I7JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD MainMMIToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- MainMMIToEnvironment_Start) (yesterday (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^H^M4^H^S5YLE^E^AJ^A7HD22^Y^NBA)))

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
(OrderCon (-P- MainMMIToEnvironment_l1_Start) (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_l1_End))
(-> (-P- MainMMIToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_l1_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MainMMIToEnvironment_l2) (-P- MainMMIToEnvironment_l2_Start) (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l2_Start) (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_l2_End))
(-> (-P- MainMMIToEnvironment_l2_End) (||  (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_l2_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MainMMIToEnvironment_End) (&&  (||  (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_l2_End)) (&&  (SomPIn_i (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_Start)) (SomPIn_i (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Start)))))
(!! (-P- MainMMIToEnvironment_l1_Skip))
(!! (-P- MainMMIToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M4^H4JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_panel_setCmd$_^H^M4^H3ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_panel_setLed$_^H^M4^H3JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_radar_getResult$_^H^M4^H2JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_weather_setNewImage$_^H^M4^H3^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_weather_setImage$_^H^M4^H35YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_nav_getLongitude$_^H^M4^H2^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_nav_getLatitude$_^H^M4^H2ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEmain_radar_getSts$_^H^M4^H15YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M4^H25YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MainMMIToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- MainMMIToEnvironment_TIMECONSTRAINT_1) (&&  (-P- MainMMIToEnvironment) (-> (-P- MESSAGEmain_panel_getButton_message$_^H^M4^H1^PYLE^E^AJ^A7HD22^Y^NBA_End) (&&  (withinp_ii (-P- MainMMIToEnvironment_Start) 2) (!! (since_ii (!! (-P- MainMMIToEnvironment_Start)) (-P- MainMMIToEnvironment_Start)))))))
(-> (-P- MainMMIToEnvironment) (-P- MainMMIToEnvironment_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment0 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_Start) (yesterday (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^H^M4^H5ZYLE^E^AJ^A7HD22^Y^NBA)))

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
(OrderCon (-P- PanelDataToEnvironment0_l1_Start) (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_l1_End))
(-> (-P- PanelDataToEnvironment0_l1_End) (||  (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_l1_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- PanelDataToEnvironment0_l2) (-P- PanelDataToEnvironment0_l2_Start) (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l2_Start) (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_l2_End))
(-> (-P- PanelDataToEnvironment0_l2_End) (||  (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_l2_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- PanelDataToEnvironment0_End) (&&  (||  (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_Start)) (SomPIn_i (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Start)))))
(!! (-P- PanelDataToEnvironment0_l1_Skip))
(!! (-P- PanelDataToEnvironment0_l2_Skip))
(Borders (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5I0ZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEpanel_getLed$_^H^M5I^Z^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5I^Z5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- PanelDataToEnvironment0_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment0) (-> (-P- MESSAGEpanel_setButton$_^H^M5I0JYLE^E^AJ^A7HD22^Y^NBA_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment0_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment0_Start)) (-P- PanelDataToEnvironment0_Start)))))))
(-> (-P- PanelDataToEnvironment0) (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- WeatherDataToEnvironment_Start) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^H^M5^V7JYLE^E^AJ^A7HD22^Y^NBA)))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_Start)))
(-> (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_End) (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_End) (!! (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEprocessData$_^H^M5^WAZYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEshowData$_^H^M5^WA5YLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEweather_setStatus$_^H^M5^WA^PYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA) (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_Start) (-P- MESSAGEweather_getNewImage$_^H^M5^WAJYLE^E^AJ^A7HD22^Y^NBA_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IODs 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


)) ;;END AX1 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PROPERTIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar Q1 (alw (-> (-P- OBJenvironmentOPpanel_setButton) (withinf (-P- OBJenvironmentOPmain_panel_getButton) 15))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- BigBang) (alwf_e (!! (-P- BigBang)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;ckNavigation INITIALIZATION SEMANTICS

;;ckPanelData INITIALIZATION SEMANTICS

;;panelData0 INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;ckWeather INITIALIZATION SEMANTICS

;;ckRadar INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;mainMMI INITIALIZATION SEMANTICS

;;environment INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;ckMainMMI INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) (!!(yesterday Q1)) initAx))


(bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )