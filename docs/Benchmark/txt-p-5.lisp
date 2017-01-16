;  Model statistics:
;  701	:Number of UML elements
;  27	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  21	:Number of states
;  42	:Number of transitions
;  42	:Number of lifelines in sequence diagrams
;  101	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  6	:Number of time contraints in sequence diagrams
;  5	:Number of clocks
;  0	:Number of nodes in interaction overview diagrams
;  0	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'bvzot)
(use-package :trio-utils)
(defvar TSPACE 120)
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

;;org.correttouml.uml.diagrams.classdiagram.Clock@1313b1a2SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckWeatherTICK)) 14)) (-P- ckWeatherTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@fbbc683SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckMainMMITICK)) 14)) (-P- ckMainMMITICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@71f30c76SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckNavigationTICK)) 14)) (-P- ckNavigationTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@7e535d51SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckRadarTICK)) 14)) (-P- ckRadarTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@70e5ca86SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckPanelDataTICK)) 14)) (-P- ckPanelDataTICK))

;;SIGNALS SEMANTICS

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@23eb54ea SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QQF^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QQF^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QQF^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QQF^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QQF^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QQF^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QQF^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;panelData1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData1OPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData1OPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData1OPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;panelData1 STD SMPanelData1org.correttouml.uml.diagrams.statediagram.StateDiagram@cafa2c2 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_R^W^K^WVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_R^W^K^WVZYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_R^W^K^WVZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_R^W^K^WVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_R^W^K^WVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_R^W^K^WVZYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- PanelDataToEnvironment1_Start)))
(-> (-P- PanelDataToEnvironment1_Start) (yesterday (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_R^W^K^WVZYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;environmentSEMANTICS
;;Object operation definitions
(<-> (-P- OBJenvironmentOPmain_nav_getLongitude) (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
(<-> (-P- OBJenvironmentOPradar_getCmd) (||  (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPpanel_getLed) (||  (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPmain_panel_getButton) (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
(<-> (-P- OBJenvironmentOPmain_weather_setImage) (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
(<-> (-P- OBJenvironmentOPmain_radar_setCmd) (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
(<-> (-P- OBJenvironmentOPweather_getNewImage) (||  (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPmain_nav_getLatitude) (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
(<-> (-P- OBJenvironmentOPmain_radar_getResult) (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
(<-> (-P- OBJenvironmentOPnav_setLatitude) (||  (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPmain_panel_setLed) (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
(<-> (-P- OBJenvironmentOPpanel_setButton) (||  (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPweather_setStatus) (||  (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPradar_setSts) (||  (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPradar_setResult) (||  (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPmain_radar_getSts) (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
(<-> (-P- OBJenvironmentOPnav_setLongitude) (||  (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJenvironmentOPmain_weather_setNewImage) (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End))
;;Attribute semantics

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@271fa6af SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^P^O2JYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^P^O2JYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^P^O2JYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^P^O2JYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^P^O2JYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^P^O2JYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^P^O2JYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@42a87dc0 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^O^A^X5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^O^A^X5YLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^O^A^X5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^O^A^X5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^O^A^X5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^O^A^X5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^O^A^X5YLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;panelData0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData0OPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData0OPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData0OPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;panelData0 STD SMPanelData0org.correttouml.uml.diagrams.statediagram.StateDiagram@2b475e55 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_R^W^KJY5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_R^W^KJY5YLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_R^W^KJY5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_R^W^KJY5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_R^W^KJY5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_R^W^KJY5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- PanelDataToEnvironment0_Start)))
(-> (-P- PanelDataToEnvironment0_Start) (yesterday (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_R^W^KJY5YLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;ckMainMMISEMANTICS
;;Object operation definitions
;;Attribute semantics

;;panelData4SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData4OPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData4OPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData4OPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;panelData4 STD SMPanelData4org.correttouml.uml.diagrams.statediagram.StateDiagram@5398a7a5 SEMANTICS

;;STATE PanelDataState
(-> (-P- BigBang) (!! (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState)))
(-> (-P- BigBang) (next (-P- OBJpanelData4_STDSMPanelData4_STATEPanelDataState_ENTER)))
(-> (-P- OBJpanelData4_STDSMPanelData4_STATEPanelDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJpanelData4_STDSMPanelData4_STATEPanelDataState_EXIT))
(-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (!! (-P- OBJpanelData4_STDSMPanelData4_STATEPanelDataState_EXIT))) (next (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState)))
(-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_STATEPanelDataState_EXIT)) (next (!! (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState))))
(-> (&&  (!! (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState)) (next (-P- OBJpanelData4_STDSMPanelData4_STATEPanelDataState_ENTER))) (next (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState)))
(-> (&&  (!! (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState)) (next (!! (-P- OBJpanelData4_STDSMPanelData4_STATEPanelDataState_ENTER)))) (next (!! (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState))))

;;TRANSITION @ckPanelData.tick/@PanelDataToEnvironment4.start
(-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_R^W^LX^F5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_R^W^LX^F5YLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_R^W^LX^F5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_R^W^LX^F5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_R^W^LX^F5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_R^W^LX^F5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- PanelDataToEnvironment4_Start)))
(-> (-P- PanelDataToEnvironment4_Start) (yesterday (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_R^W^LX^F5YLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@785d0b86 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^M^L^NZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^M^L^NZYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^M^L^NZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^M^L^NZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^M^L^NZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^M^L^NZYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^M^L^NZYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@45f432b8 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^NM^SZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^NM^SZYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^NM^SZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^NM^SZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^NM^SZYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^NM^SZYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^NM^SZYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@3ac46386 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@2c0864a6 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^N^Z^VJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^N^Z^VJYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^N^Z^VJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^N^Z^VJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^N^Z^VJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^N^Z^VJYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^N^Z^VJYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;ckWeatherSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@6a4bfcce SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^NM^K^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^NM^K^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^NM^K^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^NM^K^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^NM^K^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^NM^K^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^NM^K^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;mainMMISEMANTICS
;;Object operation definitions
(<-> (-P- OBJmainMMIOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJmainMMIOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJmainMMIOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;mainMMI STD smMainMMIorg.correttouml.uml.diagrams.statediagram.StateDiagram@6c7fd3e4 SEMANTICS

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
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_R^W^J^IOJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_R^W^J^IOJYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_R^W^J^IOJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_R^W^J^IOJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- ckMainMMITICK)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_R^W^J^IOJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_R^W^J^IOJYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- MainMMIToEnvironment_Start)))
(-> (-P- MainMMIToEnvironment_Start) (yesterday (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_R^W^J^IOJYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;panelData3SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData3OPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData3OPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData3OPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;panelData3 STD SMPanelData3org.correttouml.uml.diagrams.statediagram.StateDiagram@1006ff23 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_R^W^LXY^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_R^W^LXY^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_R^W^LXY^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_R^W^LXY^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_R^W^LXY^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_R^W^LXY^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- PanelDataToEnvironment3_Start)))
(-> (-P- PanelDataToEnvironment3_Start) (yesterday (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_R^W^LXY^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@478f6f48 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^P^O95YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^P^O95YLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^P^O95YLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^P^O95YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^P^O95YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^P^O95YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^P^O95YLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@4dfb80d8 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q3F5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q3F5YLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q3F5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q3F5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q3F5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q3F5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q3F5YLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@2ee77e0f SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q2^_5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q2^_5YLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q2^_5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q2^_5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q2^_5YLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q2^_5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q2^_5YLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;ckRadarSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;panelData2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData2OPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData2OPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJpanelData2OPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;panelData2 STD SMPanelData2org.correttouml.uml.diagrams.statediagram.StateDiagram@1efba8bf SEMANTICS

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
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_R^W^K^W^C^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_R^W^K^W^C^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_R^W^K^W^C^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_R^W^K^W^C^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_R^W^K^W^C^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_R^W^K^W^C^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- PanelDataToEnvironment2_Start)))
(-> (-P- PanelDataToEnvironment2_Start) (yesterday (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_R^W^K^W^C^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@3940512c SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^PB0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^PB0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^PB0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^PB0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^PB0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^PB0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^PB0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@1f499b2c SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QP^_^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QP^_^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QP^_^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QP^_^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QP^_^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QP^_^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QP^_^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;ckNavigationSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;ckPanelDataSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@75d7ab26 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^JJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^JJYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^JJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^JJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^JJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^JJYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^JJYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@6c686b45 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^LX^NJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^LX^NJYLE^E^A^S^Z^BSB^IZ^ZT6^W))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^LX^NJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^LX^NJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^LX^NJYLE^E^A^S^Z^BSB^IZ^ZT6^W_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^LX^NJYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^LX^NJYLE^E^A^S^Z^BSB^IZ^ZT6^W))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- RadarDataToEnvironment_Start) (||  (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^M^L^NZYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^NM^K^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^L^_^JJYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_R^W^LX^NJYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^NM^Q5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^NM^Q^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^NM^QJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^NM^RJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^NM^QZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment3 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment3_Start) (yesterday (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_R^W^LXY^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)))

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
(OrderCon (-P- PanelDataToEnvironment3_l1_Start) (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_l1_End))
(-> (-P- PanelDataToEnvironment3_l1_End) (||  (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_l1_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- PanelDataToEnvironment3_l2) (-P- PanelDataToEnvironment3_l2_Start) (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- PanelDataToEnvironment3_l2_Start) (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_l2_End))
(-> (-P- PanelDataToEnvironment3_l2_End) (||  (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_l2_End) (!! (-P- PanelDataToEnvironment3_l2_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment3_l2_Skip)) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- PanelDataToEnvironment3_End) (&&  (||  (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_Start)) (SomPIn_i (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Start)))))
(!! (-P- PanelDataToEnvironment3_l1_Skip))
(!! (-P- PanelDataToEnvironment3_l2_Skip))
(Borders (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^LX^D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^LX^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^LX^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment3_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment3_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment3) (-> (-P- MESSAGEpanel_setButton$_R^W^LX^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment3_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment3_Start)) (-P- PanelDataToEnvironment3_Start)))))))
(-> (-P- PanelDataToEnvironment3) (-P- PanelDataToEnvironment3_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- WeatherDataToEnvironment_Start) (||  (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QQF^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^P^O95YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q3F5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^Q2^_5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_R^W^QP^_^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^QP9ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^QP8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^QP85YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^QP9JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- NavigationToEnvironment_Start) (||  (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^P^O2JYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^O^A^X5YLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^NM^SZYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^N^Z^VJYLE^E^A^S^Z^BSB^IZ^ZT6^W)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_R^W^PB0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W))))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^PB^ZZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^PB^ZJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^PB^Y5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^PB^YZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^PB^Y^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment4 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment4_Start) (yesterday (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_R^W^LX^F5YLE^E^A^S^Z^BSB^IZ^ZT6^W)))

;;STOP SEMANTICS
(!! (-P- PanelDataToEnvironment4_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- PanelDataToEnvironment4) (-P- PanelDataToEnvironment4_Start) (-P- PanelDataToEnvironment4_End) (-P- PanelDataToEnvironment4_Stop))
(<-> (-P- PanelDataToEnvironment4_Start) (-P- PanelDataToEnvironment4_l1_Start))
(<-> (-P- PanelDataToEnvironment4_Start) (-P- PanelDataToEnvironment4_l2_Start))
(OrderCon (-P- PanelDataToEnvironment4_Start) (-P- PanelDataToEnvironment4_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- PanelDataToEnvironment4_l1_Start) (-P- PanelDataToEnvironment4_l1_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- PanelDataToEnvironment4_l2_Start) (-P- PanelDataToEnvironment4_l2_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- PanelDataToEnvironment4_l1) (-P- PanelDataToEnvironment4_l1_Start) (-P- PanelDataToEnvironment4_l1_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- PanelDataToEnvironment4_l1_Start) (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_l1_End))
(-> (-P- PanelDataToEnvironment4_l1_End) (||  (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_l1_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- PanelDataToEnvironment4_l2) (-P- PanelDataToEnvironment4_l2_Start) (-P- PanelDataToEnvironment4_l2_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- PanelDataToEnvironment4_l2_Start) (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_l2_End))
(-> (-P- PanelDataToEnvironment4_l2_End) (||  (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_l2_End) (!! (-P- PanelDataToEnvironment4_l2_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment4_l2_Skip)) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- PanelDataToEnvironment4_End) (&&  (||  (-P- PanelDataToEnvironment4_l1_End) (-P- PanelDataToEnvironment4_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment4_l1_End) (-P- PanelDataToEnvironment4_Start)) (SomPIn_i (-P- PanelDataToEnvironment4_l2_End) (-P- PanelDataToEnvironment4_Start)))))
(!! (-P- PanelDataToEnvironment4_l1_Skip))
(!! (-P- PanelDataToEnvironment4_l2_Skip))
(Borders (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^LX^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^LX^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^LX^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment4_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment4_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment4) (-> (-P- MESSAGEpanel_setButton$_R^W^LX^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment4_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment4_Start)) (-P- PanelDataToEnvironment4_Start)))))))
(-> (-P- PanelDataToEnvironment4) (-P- PanelDataToEnvironment4_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD MainMMIToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- MainMMIToEnvironment_Start) (yesterday (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_R^W^J^IOJYLE^E^A^S^Z^BSB^IZ^ZT6^W)))

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
(OrderCon (-P- MainMMIToEnvironment_l1_Start) (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_l1_End))
(-> (-P- MainMMIToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_l1_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MainMMIToEnvironment_l2) (-P- MainMMIToEnvironment_l2_Start) (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l2_Start) (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_l2_End))
(-> (-P- MainMMIToEnvironment_l2_End) (||  (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_l2_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MainMMIToEnvironment_End) (&&  (||  (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_l2_End)) (&&  (SomPIn_i (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_Start)) (SomPIn_i (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Start)))))
(!! (-P- MainMMIToEnvironment_l1_Skip))
(!! (-P- MainMMIToEnvironment_l2_Skip))
(Borders (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_panel_setLed$_R^W^KJW^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^KJWZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_radar_getResult$_R^W^KJV^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_nav_getLongitude$_R^W^KJWJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_weather_setNewImage$_R^W^KJXJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^KJX^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_radar_getSts$_R^W^KJVZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_nav_getLatitude$_R^W^KJV5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_weather_setImage$_R^W^KJXZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEmain_panel_setCmd$_R^W^KJW5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MainMMIToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- MainMMIToEnvironment_TIMECONSTRAINT_1) (&&  (-P- MainMMIToEnvironment) (-> (-P- MESSAGEmain_panel_getButton_message$_R^W^KJVJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (&&  (withinp_ii (-P- MainMMIToEnvironment_Start) 2) (!! (since_ii (!! (-P- MainMMIToEnvironment_Start)) (-P- MainMMIToEnvironment_Start)))))))
(-> (-P- MainMMIToEnvironment) (-P- MainMMIToEnvironment_TIMECONSTRAINT_1))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q3K5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^Q3LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q3LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q3L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^L^_^HZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^L^_^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^L^_^G5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^L^_^H^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^L^_^HJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^M^L^LZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^M^L^L^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^M^L^L5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^M^L^MJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^M^L^LJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^L^_^PZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^L^_^O^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^L^_^PJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^L^_^P^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^L^_^O5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^Q3EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q3EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q3E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q3D5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment0 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_Start) (yesterday (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_R^W^KJY5YLE^E^A^S^Z^BSB^IZ^ZT6^W)))

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
(OrderCon (-P- PanelDataToEnvironment0_l1_Start) (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_l1_End))
(-> (-P- PanelDataToEnvironment0_l1_End) (||  (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_l1_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- PanelDataToEnvironment0_l2) (-P- PanelDataToEnvironment0_l2_Start) (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l2_Start) (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_l2_End))
(-> (-P- PanelDataToEnvironment0_l2_End) (||  (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_l2_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- PanelDataToEnvironment0_End) (&&  (||  (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_Start)) (SomPIn_i (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Start)))))
(!! (-P- PanelDataToEnvironment0_l1_Skip))
(!! (-P- PanelDataToEnvironment0_l2_Skip))
(Borders (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^KJ^EJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^WUJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^KJ^EZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment0_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment0) (-> (-P- MESSAGEpanel_setButton$_R^W^KJ^E^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment0_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment0_Start)) (-P- PanelDataToEnvironment0_Start)))))))
(-> (-P- PanelDataToEnvironment0) (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^QQEZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^QQD^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^QQEJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^QQD5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment2 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_Start) (yesterday (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_R^W^K^W^C^PYLE^E^A^S^Z^BSB^IZ^ZT6^W)))

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
(OrderCon (-P- PanelDataToEnvironment2_l1_Start) (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_l1_End))
(-> (-P- PanelDataToEnvironment2_l1_End) (||  (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_l1_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- PanelDataToEnvironment2_l2) (-P- PanelDataToEnvironment2_l2_Start) (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- PanelDataToEnvironment2_l2_Start) (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_l2_End))
(-> (-P- PanelDataToEnvironment2_l2_End) (||  (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_l2_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- PanelDataToEnvironment2_End) (&&  (||  (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_Start)) (SomPIn_i (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Start)))))
(!! (-P- PanelDataToEnvironment2_l1_Skip))
(!! (-P- PanelDataToEnvironment2_l2_Skip))
(Borders (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^K^W^IJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^K^W^H5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^W^I^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment2_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment2) (-> (-P- MESSAGEpanel_setButton$_R^W^K^W^IZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment2_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment2_Start)) (-P- PanelDataToEnvironment2_Start)))))))
(-> (-P- PanelDataToEnvironment2) (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^P^O8JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^P^O7^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^P^O8ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^P^O8^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^P^O75YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^N^Z^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^N^Z^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^N^Z^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^N^Z^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^N^Z^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^P^O05YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^P^O0^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^PB6JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^P^O0ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^P^O0JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLongitude$_R^W^O^A^WZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^O^A^W^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setLatitude$_R^W^O^A^WJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^O^A^V5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEgetData$_R^W^O^A^V^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setResult$_R^W^M^L^T^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_setSts$_R^W^M^L^TZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^M^L^TJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEradar_getCmd$_R^W^M^L^S5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^M^L^T5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_getNewImage$_R^W^Q285YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^Q29JYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEweather_setStatus$_R^W^Q29ZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^Q29^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment1 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_Start) (yesterday (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_R^W^K^WVZYLE^E^A^S^Z^BSB^IZ^ZT6^W)))

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
(OrderCon (-P- PanelDataToEnvironment1_l1_Start) (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_l1_End))
(-> (-P- PanelDataToEnvironment1_l1_End) (||  (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_l1_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start)))
(-> (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(OrderGCon (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- PanelDataToEnvironment1_l2) (-P- PanelDataToEnvironment1_l2_Start) (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- PanelDataToEnvironment1_l2_Start) (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_l2_End))
(-> (-P- PanelDataToEnvironment1_l2_End) (||  (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_l2_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (!! (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End)))
(-> (-P- PanelDataToEnvironment1_End) (&&  (||  (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_Start)) (SomPIn_i (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Start)))))
(!! (-P- PanelDataToEnvironment1_l1_Skip))
(!! (-P- PanelDataToEnvironment1_l2_Skip))
(Borders (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEshowData$_R^W^K^W^BZYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEprocessData$_R^W^K^W^A5YLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_getLed$_R^W^K^W^A^PYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W) (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_Start) (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (-P- PanelDataToEnvironment1_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment1) (-> (-P- MESSAGEpanel_setButton$_R^W^K^W^BJYLE^E^A^S^Z^BSB^IZ^ZT6^W_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment1_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment1_Start)) (-P- PanelDataToEnvironment1_Start)))))))
(-> (-P- PanelDataToEnvironment1) (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1))

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

;;weatherData INITIALIZATION SEMANTICS

;;panelData1 INITIALIZATION SEMANTICS

;;environment INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;panelData0 INITIALIZATION SEMANTICS

;;ckMainMMI INITIALIZATION SEMANTICS

;;panelData4 INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;ckWeather INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;mainMMI INITIALIZATION SEMANTICS

;;panelData3 INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;ckRadar INITIALIZATION SEMANTICS

;;panelData2 INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;ckNavigation INITIALIZATION SEMANTICS

;;ckPanelData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) (!!(yesterday Q1)) initAx))


(bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )