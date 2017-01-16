;  Model statistics:
;  461	:Number of UML elements
;  19	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  13	:Number of states
;  26	:Number of transitions
;  26	:Number of lifelines in sequence diagrams
;  65	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  4	:Number of time contraints in sequence diagrams
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

;;org.correttouml.uml.diagrams.classdiagram.Clock@351f89dSEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckNavigationTICK)) 14)) (-P- ckNavigationTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@7194b1a8SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckPanelDataTICK)) 14)) (-P- ckPanelDataTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@2e9bfe43SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckWeatherTICK)) 14)) (-P- ckWeatherTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@591bc6d9SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckRadarTICK)) 14)) (-P- ckRadarTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@39fa9234SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckMainMMITICK)) 14)) (-P- ckMainMMITICK))

;;SIGNALS SEMANTICS

;;panelData0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData0OPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJpanelData0OPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJpanelData0OPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;panelData0 STD SMPanelData0org.correttouml.uml.diagrams.statediagram.StateDiagram@13c52c06 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^BA5^SXZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^BA5^SXZYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^BA5^SXZYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^BA5^SXZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^BA5^SXZYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^BA5^SXZYLE^E^A^O8_LW^NTJRH^G)) (next (-P- PanelDataToEnvironment0_Start)))
(-> (-P- PanelDataToEnvironment0_Start) (yesterday (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^BA5^SXZYLE^E^A^O8_LW^NTJRH^G))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@7c92fffb SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66^FZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66^FZYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66^FZYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66^FZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66^FZYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66^FZYLE^E^A^O8_LW^NTJRH^G)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66^FZYLE^E^A^O8_LW^NTJRH^G))))

;;ckMainMMISEMANTICS
;;Object operation definitions
;;Attribute semantics

;;ckRadarSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@729415c1 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66X^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66X^PYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66X^PYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66X^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66X^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66X^PYLE^E^A^O8_LW^NTJRH^G)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66X^PYLE^E^A^O8_LW^NTJRH^G))))

;;mainMMISEMANTICS
;;Object operation definitions
(<-> (-P- OBJmainMMIOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJmainMMIOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJmainMMIOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;mainMMI STD smMainMMIorg.correttouml.uml.diagrams.statediagram.StateDiagram@368e2bf1 SEMANTICS

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
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^BA5FSJYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^BA5FSJYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^BA5FSJYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^BA5FSJYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- ckMainMMITICK)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^BA5FSJYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^BA5FSJYLE^E^A^O8_LW^NTJRH^G)) (next (-P- MainMMIToEnvironment_Start)))
(-> (-P- MainMMIToEnvironment_Start) (yesterday (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^BA5FSJYLE^E^A^O8_LW^NTJRH^G))))

;;panelData2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData2OPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJpanelData2OPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJpanelData2OPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;panelData2 STD SMPanelData2org.correttouml.uml.diagrams.statediagram.StateDiagram@41508995 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^BA6T^A5YLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^BA6T^A5YLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^BA6T^A5YLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^BA6T^A5YLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^BA6T^A5YLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^BA6T^A5YLE^E^A^O8_LW^NTJRH^G)) (next (-P- PanelDataToEnvironment2_Start)))
(-> (-P- PanelDataToEnvironment2_Start) (yesterday (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^BA6T^A5YLE^E^A^O8_LW^NTJRH^G))))

;;ckNavigationSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@7896e397 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8I^EZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8I^EZYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8I^EZYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8I^EZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8I^EZYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8I^EZYLE^E^A^O8_LW^NTJRH^G)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8I^EZYLE^E^A^O8_LW^NTJRH^G))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@aa713a5 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA7^H^D^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA7^H^D^PYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA7^H^D^PYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA7^H^D^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA7^H^D^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA7^H^D^PYLE^E^A^O8_LW^NTJRH^G)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA7^H^D^PYLE^E^A^O8_LW^NTJRH^G))))

;;environmentSEMANTICS
;;Object operation definitions
(<-> (-P- OBJenvironmentOPweather_getNewImage) (||  (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJenvironmentOPradar_setResult) (||  (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJenvironmentOPnav_setLongitude) (||  (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJenvironmentOPradar_setSts) (||  (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJenvironmentOPmain_nav_getLongitude) (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPpanel_setButton) (||  (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJenvironmentOPmain_radar_getResult) (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPmain_radar_setCmd) (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPmain_weather_setNewImage) (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPmain_panel_getButton) (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPmain_panel_setLed) (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPweather_setStatus) (||  (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJenvironmentOPmain_nav_getLatitude) (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPpanel_getLed) (||  (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJenvironmentOPmain_weather_setImage) (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPradar_getCmd) (||  (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJenvironmentOPmain_radar_getSts) (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_End))
(<-> (-P- OBJenvironmentOPnav_setLatitude) (||  (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@30a49218 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^NZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^NZYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^NZYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^NZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^NZYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^NZYLE^E^A^O8_LW^NTJRH^G)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^NZYLE^E^A^O8_LW^NTJRH^G))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@23f2b564 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA7^H^LZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA7^H^LZYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^BA7^H^LZYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA7^H^LZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA7^H^LZYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA7^H^LZYLE^E^A^O8_LW^NTJRH^G)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA7^H^LZYLE^E^A^O8_LW^NTJRH^G))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@5d6d5324 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA8^V^O^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA8^V^O^PYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA8^V^O^PYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA8^V^O^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA8^V^O^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA8^V^O^PYLE^E^A^O8_LW^NTJRH^G)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA8^V^O^PYLE^E^A^O8_LW^NTJRH^G))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@25c1d0eb SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^UZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^UZYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^UZYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^UZYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^UZYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^UZYLE^E^A^O8_LW^NTJRH^G)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^UZYLE^E^A^O8_LW^NTJRH^G))))

;;panelData1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData1OPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJpanelData1OPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJpanelData1OPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;panelData1 STD SMPanelData1org.correttouml.uml.diagrams.statediagram.StateDiagram@43e99eec SEMANTICS

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
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^BA6TT^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^BA6TT^PYLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^BA6TT^PYLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^BA6TT^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^BA6TT^PYLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^BA6TT^PYLE^E^A^O8_LW^NTJRH^G)) (next (-P- PanelDataToEnvironment1_Start)))
(-> (-P- PanelDataToEnvironment1_Start) (yesterday (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^BA6TT^PYLE^E^A^O8_LW^NTJRH^G))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@1a4e6b0f SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8^V^G5YLE^E^A^O8_LW^NTJRH^G_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8^V^G5YLE^E^A^O8_LW^NTJRH^G))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8^V^G5YLE^E^A^O8_LW^NTJRH^G) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8^V^G5YLE^E^A^O8_LW^NTJRH^G_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8^V^G5YLE^E^A^O8_LW^NTJRH^G_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8^V^G5YLE^E^A^O8_LW^NTJRH^G)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8^V^G5YLE^E^A^O8_LW^NTJRH^G))))

;;ckPanelDataSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;ckWeatherSEMANTICS
;;Object operation definitions
;;Attribute semantics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment1 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_Start) (yesterday (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^BA6TT^PYLE^E^A^O8_LW^NTJRH^G)))

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
(OrderCon (-P- PanelDataToEnvironment1_l1_Start) (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_l1_End))
(-> (-P- PanelDataToEnvironment1_l1_End) (||  (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_l1_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- PanelDataToEnvironment1_l2) (-P- PanelDataToEnvironment1_l2_Start) (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- PanelDataToEnvironment1_l2_Start) (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_l2_End))
(-> (-P- PanelDataToEnvironment1_l2_End) (||  (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_l2_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- PanelDataToEnvironment1_End) (&&  (||  (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_Start)) (SomPIn_i (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Start)))))
(!! (-P- PanelDataToEnvironment1_l1_Skip))
(!! (-P- PanelDataToEnvironment1_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA6TZJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_getLed$_^BA6TY5YLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA6TZ^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment1_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment1) (-> (-P- MESSAGEpanel_setButton$_^BA6TZZYLE^E^A^O8_LW^NTJRH^G_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment1_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment1_Start)) (-P- PanelDataToEnvironment1_Start)))))))
(-> (-P- PanelDataToEnvironment1) (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD MainMMIToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- MainMMIToEnvironment_Start) (yesterday (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^BA5FSJYLE^E^A^O8_LW^NTJRH^G)))

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
(OrderCon (-P- MainMMIToEnvironment_l1_Start) (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_l1_End))
(-> (-P- MainMMIToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_l1_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MainMMIToEnvironment_l2) (-P- MainMMIToEnvironment_l2_Start) (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l2_Start) (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_l2_End))
(-> (-P- MainMMIToEnvironment_l2_End) (||  (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_l2_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MainMMIToEnvironment_End) (&&  (||  (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_l2_End)) (&&  (SomPIn_i (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_Start)) (SomPIn_i (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Start)))))
(!! (-P- MainMMIToEnvironment_l1_Skip))
(!! (-P- MainMMIToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA5^SWJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_panel_setCmd$_^BA5^SVZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_weather_setImage$_^BA5^SV5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_nav_getLatitude$_^BA5^SUZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_radar_getSts$_^BA5^ST5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA5^SU5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_nav_getLongitude$_^BA5^SU^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_radar_getResult$_^BA5^SUJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_weather_setNewImage$_^BA5^SV^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEmain_panel_setLed$_^BA5^SVJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MainMMIToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- MainMMIToEnvironment_TIMECONSTRAINT_1) (&&  (-P- MainMMIToEnvironment) (-> (-P- MESSAGEmain_panel_getButton_message$_^BA5^ST^PYLE^E^A^O8_LW^NTJRH^G_End) (&&  (withinp_ii (-P- MainMMIToEnvironment_Start) 2) (!! (since_ii (!! (-P- MainMMIToEnvironment_Start)) (-P- MainMMIToEnvironment_Start)))))))
(-> (-P- MainMMIToEnvironment) (-P- MainMMIToEnvironment_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment2 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_Start) (yesterday (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^BA6T^A5YLE^E^A^O8_LW^NTJRH^G)))

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
(OrderCon (-P- PanelDataToEnvironment2_l1_Start) (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_l1_End))
(-> (-P- PanelDataToEnvironment2_l1_End) (||  (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_l1_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- PanelDataToEnvironment2_l2) (-P- PanelDataToEnvironment2_l2_Start) (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- PanelDataToEnvironment2_l2_Start) (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_l2_End))
(-> (-P- PanelDataToEnvironment2_l2_End) (||  (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_l2_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- PanelDataToEnvironment2_End) (&&  (||  (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_Start)) (SomPIn_i (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Start)))))
(!! (-P- PanelDataToEnvironment2_l1_Skip))
(!! (-P- PanelDataToEnvironment2_l2_Skip))
(Borders (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_getLed$_^BA66V^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA66V5YLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA66WZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment2_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment2) (-> (-P- MESSAGEpanel_setButton$_^BA66WJYLE^E^A^O8_LW^NTJRH^G_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment2_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment2_Start)) (-P- PanelDataToEnvironment2_Start)))))))
(-> (-P- PanelDataToEnvironment2) (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- RadarDataToEnvironment_Start) (||  (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66^FZYLE^E^A^O8_LW^NTJRH^G)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA66X^PYLE^E^A^O8_LW^NTJRH^G)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^BA7^H^D^PYLE^E^A^O8_LW^NTJRH^G))))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_getCmd$_^BA66^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setSts$_^BA66^D^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA66^EJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA66^D5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA66^DZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- NavigationToEnvironment_Start) (||  (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8I^EZYLE^E^A^O8_LW^NTJRH^G)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^BA7^H^LZYLE^E^A^O8_LW^NTJRH^G)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^BA8^V^G5YLE^E^A^O8_LW^NTJRH^G))))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8I^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8I^C5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8I^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8I^DJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLatitude$_^BA8I^C^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- WeatherDataToEnvironment_Start) (||  (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^NZYLE^E^A^O8_LW^NTJRH^G)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA8^V^O^PYLE^E^A^O8_LW^NTJRH^G)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^BA9W^UZYLE^E^A^O8_LW^NTJRH^G))))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W^TJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^SZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_setStatus$_^BA9W^S5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^S^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8I^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLatitude$_^BA8I^KZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8I^K^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8I^K5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8I^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment0 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_Start) (yesterday (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^BA5^SXZYLE^E^A^O8_LW^NTJRH^G)))

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
(OrderCon (-P- PanelDataToEnvironment0_l1_Start) (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_l1_End))
(-> (-P- PanelDataToEnvironment0_l1_End) (||  (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_l1_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- PanelDataToEnvironment0_l2) (-P- PanelDataToEnvironment0_l2_Start) (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l2_Start) (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_l2_End))
(-> (-P- PanelDataToEnvironment0_l2_End) (||  (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_l2_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- PanelDataToEnvironment0_End) (&&  (||  (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_Start)) (SomPIn_i (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Start)))))
(!! (-P- PanelDataToEnvironment0_l1_Skip))
(!! (-P- PanelDataToEnvironment0_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA6TR5YLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA6TSZYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEpanel_getLed$_^BA6TR^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- PanelDataToEnvironment0_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment0) (-> (-P- MESSAGEpanel_setButton$_^BA6TSJYLE^E^A^O8_LW^NTJRH^G_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment0_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment0_Start)) (-P- PanelDataToEnvironment0_Start)))))))
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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^ZZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W0JYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_setStatus$_^BA9W^Z5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^Z^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_getNewImage$_^BA9W^LZYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEweather_setStatus$_^BA9W^L5YLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA9W^MJYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA9W^L^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA8^V^NZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEgetData$_^BA8^V^MZYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLongitude$_^BA8^V^NJYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA8^V^M^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setLatitude$_^BA8^V^M5YLE^E^A^O8_LW^NTJRH^G_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setSts$_^BA7^H^J^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_getCmd$_^BA7^H^JJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA7^H^KJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA7^H^J5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA7^H^JZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_Start)))
(-> (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_End)))
(-> (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_End) (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEshowData$_^BA7^H^CZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEprocessData$_^BA7^H^B^PYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setResult$_^BA7^H^CJYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_setSts$_^BA7^H^B5YLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G) (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_Start) (-P- MESSAGEradar_getCmd$_^BA7^H^BZYLE^E^A^O8_LW^NTJRH^G_End) (-P- RadarDataToEnvironment_Stop))

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- BigBang) (alwf_e (!! (-P- BigBang)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;panelData0 INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;ckMainMMI INITIALIZATION SEMANTICS

;;ckRadar INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;mainMMI INITIALIZATION SEMANTICS

;;panelData2 INITIALIZATION SEMANTICS

;;ckNavigation INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;environment INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;panelData1 INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;ckPanelData INITIALIZATION SEMANTICS

;;ckWeather INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) initAx))


(bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )