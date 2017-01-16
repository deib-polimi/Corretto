;  Model statistics:
;  821	:Number of UML elements
;  31	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  25	:Number of states
;  50	:Number of transitions
;  50	:Number of lifelines in sequence diagrams
;  119	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  7	:Number of time contraints in sequence diagrams
;  5	:Number of clocks
;  0	:Number of nodes in interaction overview diagrams
;  0	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'bvzot)
(use-package :trio-utils)
(defvar TSPACE 160)
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

;;org.correttouml.uml.diagrams.classdiagram.Clock@511c8edcSEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckWeatherTICK)) 14)) (-P- ckWeatherTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@79555477SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckRadarTICK)) 14)) (-P- ckRadarTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@29e7371eSEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckNavigationTICK)) 14)) (-P- ckNavigationTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@4076dc80SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckMainMMITICK)) 14)) (-P- ckMainMMITICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@3b867890SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckPanelDataTICK)) 14)) (-P- ckPanelDataTICK))

;;SIGNALS SEMANTICS

;;panelData3SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData3OPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData3OPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData3OPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;panelData3 STD SMPanelData3org.correttouml.uml.diagrams.statediagram.StateDiagram@e2da38f SEMANTICS

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
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_M^IC2BJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_M^IC2BJYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_M^IC2BJYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_M^IC2BJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_M^IC2BJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_M^IC2BJYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- PanelDataToEnvironment3_Start)))
(-> (-P- PanelDataToEnvironment3_Start) (yesterday (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_M^IC2BJYLE^E^A8H^V^CXV^A2W^_A))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@4f7fd2e0 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^C5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^C5YLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^C5YLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^C5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^C5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^C5YLE^E^A8H^V^CXV^A2W^_A)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^C5YLE^E^A8H^V^CXV^A2W^_A))))

;;ckNavigationSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@43d7ea70 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DQ^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DQ^PYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DQ^PYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DQ^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DQ^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DQ^PYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DQ^PYLE^E^A8H^V^CXV^A2W^_A))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@6fab9c88 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^M^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^M^PYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^M^PYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^M^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^M^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^M^PYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^M^PYLE^E^A8H^V^CXV^A2W^_A))))

;;mainMMISEMANTICS
;;Object operation definitions
(<-> (-P- OBJmainMMIOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJmainMMIOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJmainMMIOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;mainMMI STD smMainMMIorg.correttouml.uml.diagrams.statediagram.StateDiagram@182212f9 SEMANTICS

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
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_M^IB^N1JYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_M^IB^N1JYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_M^IB^N1JYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_M^IB^N1JYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- ckMainMMITICK)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_M^IB^N1JYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_M^IB^N1JYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- MainMMIToEnvironment_Start)))
(-> (-P- MainMMIToEnvironment_Start) (yesterday (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_M^IB^N1JYLE^E^A8H^V^CXV^A2W^_A))))

;;panelData2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData2OPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData2OPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData2OPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;panelData2 STD SMPanelData2org.correttouml.uml.diagrams.statediagram.StateDiagram@13c93f78 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_M^ICPFZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_M^ICPFZYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_M^ICPFZYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_M^ICPFZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_M^ICPFZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_M^ICPFZYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- PanelDataToEnvironment2_Start)))
(-> (-P- PanelDataToEnvironment2_Start) (yesterday (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_M^ICPFZYLE^E^A8H^V^CXV^A2W^_A))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@1fca18c6 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^J5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^J5YLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^J5YLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^J5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^J5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^J5YLE^E^A8H^V^CXV^A2W^_A)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^J5YLE^E^A8H^V^CXV^A2W^_A))))

;;ckPanelDataSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;ckRadarSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@5b07e4df SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DI5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DI5YLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DI5YLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DI5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DI5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DI5YLE^E^A8H^V^CXV^A2W^_A)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DI5YLE^E^A8H^V^CXV^A2W^_A))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@51cf2096 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IFSO5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IFSO5YLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IFSO5YLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IFSO5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IFSO5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IFSO5YLE^E^A8H^V^CXV^A2W^_A)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IFSO5YLE^E^A8H^V^CXV^A2W^_A))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@200c77e2 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5SZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5SZYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5SZYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5SZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5SZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5SZYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5SZYLE^E^A8H^V^CXV^A2W^_A))))

;;panelData0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData0OPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData0OPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData0OPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;panelData0 STD SMPanelData0org.correttouml.uml.diagrams.statediagram.StateDiagram@4cbd025 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_M^IB^OB^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_M^IB^OB^PYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_M^IB^OB^PYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_M^IB^OB^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_M^IB^OB^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_M^IB^OB^PYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- PanelDataToEnvironment0_Start)))
(-> (-P- PanelDataToEnvironment0_Start) (yesterday (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_M^IB^OB^PYLE^E^A8H^V^CXV^A2W^_A))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@19d304ac SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RQJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RQJYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RQJYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RQJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RQJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RQJYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RQJYLE^E^A8H^V^CXV^A2W^_A))))

;;ckMainMMISEMANTICS
;;Object operation definitions
;;Attribute semantics

;;ckWeatherSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@4f43d53c SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^G^DJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^G^DJYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^G^DJYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^G^DJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^G^DJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^G^DJYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^G^DJYLE^E^A8H^V^CXV^A2W^_A))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@53dea0db SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5^AJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5^AJYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5^AJYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5^AJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5^AJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5^AJYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5^AJYLE^E^A8H^V^CXV^A2W^_A))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@3103d7e7 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^GVZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^GVZYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^GVZYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^GVZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^GVZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^GVZYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^GVZYLE^E^A8H^V^CXV^A2W^_A))))

;;environmentSEMANTICS
;;Object operation definitions
(<-> (-P- OBJenvironmentOPradar_setSts) (||  (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPpanel_setButton) (||  (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPmain_weather_setNewImage) (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_End))
(<-> (-P- OBJenvironmentOPmain_panel_getButton) (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_End))
(<-> (-P- OBJenvironmentOPradar_setResult) (||  (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPmain_radar_setCmd) (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_End))
(<-> (-P- OBJenvironmentOPpanel_getLed) (||  (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPweather_setStatus) (||  (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPradar_getCmd) (||  (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPnav_setLongitude) (||  (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPmain_radar_getSts) (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_End))
(<-> (-P- OBJenvironmentOPmain_nav_getLatitude) (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_End))
(<-> (-P- OBJenvironmentOPmain_weather_setImage) (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_End))
(<-> (-P- OBJenvironmentOPmain_panel_setLed) (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_End))
(<-> (-P- OBJenvironmentOPweather_getNewImage) (||  (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPmain_radar_getResult) (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_End))
(<-> (-P- OBJenvironmentOPnav_setLatitude) (||  (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJenvironmentOPmain_nav_getLongitude) (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_End))
;;Attribute semantics

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@6c923ce0 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^T^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^T^PYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^T^PYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^T^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^T^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^T^PYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^T^PYLE^E^A8H^V^CXV^A2W^_A))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@1d5dcb66 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^Q5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^Q5YLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^Q5YLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^Q5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^Q5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^Q5YLE^E^A8H^V^CXV^A2W^_A)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^Q5YLE^E^A8H^V^CXV^A2W^_A))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@1f29f4e2 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IHHYJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IHHYJYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_M^IHHYJYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IHHYJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IHHYJYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IHHYJYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IHHYJYLE^E^A8H^V^CXV^A2W^_A))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@ef83f3a SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RIZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RIZYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RIZYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RIZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RIZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RIZYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RIZYLE^E^A8H^V^CXV^A2W^_A))))

;;panelData5SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData5OPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData5OPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData5OPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;panelData5 STD SMPanelData5org.correttouml.uml.diagrams.statediagram.StateDiagram@54762599 SEMANTICS

;;STATE PanelDataState
(-> (-P- BigBang) (!! (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState)))
(-> (-P- BigBang) (next (-P- OBJpanelData5_STDSMPanelData5_STATEPanelDataState_ENTER)))
(-> (-P- OBJpanelData5_STDSMPanelData5_STATEPanelDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJpanelData5_STDSMPanelData5_STATEPanelDataState_EXIT))
(-> (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (!! (-P- OBJpanelData5_STDSMPanelData5_STATEPanelDataState_EXIT))) (next (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState)))
(-> (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_STATEPanelDataState_EXIT)) (next (!! (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState))))
(-> (&&  (!! (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState)) (next (-P- OBJpanelData5_STDSMPanelData5_STATEPanelDataState_ENTER))) (next (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState)))
(-> (&&  (!! (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState)) (next (!! (-P- OBJpanelData5_STDSMPanelData5_STATEPanelDataState_ENTER)))) (next (!! (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState))))

;;TRANSITION @ckPanelData.tick/@PanelDataToEnvironment5.start
(-> (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_M^ID^DB^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_M^ID^DB^PYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_M^ID^DB^PYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_M^ID^DB^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_M^ID^DB^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_M^ID^DB^PYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- PanelDataToEnvironment5_Start)))
(-> (-P- PanelDataToEnvironment5_Start) (yesterday (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_M^ID^DB^PYLE^E^A8H^V^CXV^A2W^_A))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@7dec08b1 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IFSW^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IFSW^PYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_M^IFSW^PYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IFSW^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IFSW^PYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IFSW^PYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_M^IFSW^PYLE^E^A8H^V^CXV^A2W^_A))))

;;panelData4SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData4OPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData4OPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData4OPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;panelData4 STD SMPanelData4org.correttouml.uml.diagrams.statediagram.StateDiagram@205d4a65 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_M^IC2IZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_M^IC2IZYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_M^IC2IZYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_M^IC2IZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_M^IC2IZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_M^IC2IZYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- PanelDataToEnvironment4_Start)))
(-> (-P- PanelDataToEnvironment4_Start) (yesterday (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_M^IC2IZYLE^E^A8H^V^CXV^A2W^_A))))

;;panelData1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData1OPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData1OPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJpanelData1OPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;panelData1 STD SMPanelData1org.correttouml.uml.diagrams.statediagram.StateDiagram@2e218ba2 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_M^ICO^_JYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_M^ICO^_JYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_M^ICO^_JYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_M^ICO^_JYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_M^ICO^_JYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_M^ICO^_JYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- PanelDataToEnvironment1_Start)))
(-> (-P- PanelDataToEnvironment1_Start) (yesterday (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_M^ICO^_JYLE^E^A8H^V^CXV^A2W^_A))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@2d913d11 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IEELZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IEELZYLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IEELZYLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IEELZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IEELZYLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IEELZYLE^E^A8H^V^CXV^A2W^_A)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IEELZYLE^E^A8H^V^CXV^A2W^_A))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@41842315 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IHH^F5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IHH^F5YLE^E^A8H^V^CXV^A2W^_A))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IHH^F5YLE^E^A8H^V^CXV^A2W^_A) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IHH^F5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IHH^F5YLE^E^A8H^V^CXV^A2W^_A_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IHH^F5YLE^E^A8H^V^CXV^A2W^_A)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IHH^F5YLE^E^A8H^V^CXV^A2W^_A))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- RadarDataToEnvironment_Start) (||  (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DQ^PYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_M^ID^DI5YLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IFSO5YLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RQJYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IE^RIZYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_M^IEELZYLE^E^A8H^V^CXV^A2W^_A))))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IFSM^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IFSN^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IFSM5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IFSNJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IFSNZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- WeatherDataToEnvironment_Start) (||  (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^C5YLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^M^PYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^J5YLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IIV^T^PYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IH^U^Q5YLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_M^IHH^F5YLE^E^A8H^V^CXV^A2W^_A))))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^II8^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^II8^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^II8^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^II8^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment3 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment3_Start) (yesterday (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_M^IC2BJYLE^E^A8H^V^CXV^A2W^_A)))

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
(OrderCon (-P- PanelDataToEnvironment3_l1_Start) (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_l1_End))
(-> (-P- PanelDataToEnvironment3_l1_End) (||  (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_l1_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- PanelDataToEnvironment3_l2) (-P- PanelDataToEnvironment3_l2_Start) (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- PanelDataToEnvironment3_l2_Start) (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_l2_End))
(-> (-P- PanelDataToEnvironment3_l2_End) (||  (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_l2_End) (!! (-P- PanelDataToEnvironment3_l2_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment3_l2_Skip)) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- PanelDataToEnvironment3_End) (&&  (||  (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_Start)) (SomPIn_i (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Start)))))
(!! (-P- PanelDataToEnvironment3_l1_Skip))
(!! (-P- PanelDataToEnvironment3_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IC2HJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC2G^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^IC2GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment3_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment3_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment3) (-> (-P- MESSAGEpanel_setButton$_M^IC2G5YLE^E^A8H^V^CXV^A2W^_A_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment3_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment3_Start)) (-P- PanelDataToEnvironment3_Start)))))))
(-> (-P- PanelDataToEnvironment3) (-P- PanelDataToEnvironment3_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- NavigationToEnvironment_Start) (||  (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5SZYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^G^DJYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_M^IF5^AJYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_M^IG^GVZYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_M^IHHYJYLE^E^A8H^V^CXV^A2W^_A)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_M^IFSW^PYLE^E^A8H^V^CXV^A2W^_A))))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IF5YZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5X5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5Y^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IF5Y5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5YJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IH^U^P^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IH^U^PJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IH^U^O5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IH^U^PZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment0 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_Start) (yesterday (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_M^IB^OB^PYLE^E^A8H^V^CXV^A2W^_A)))

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
(OrderCon (-P- PanelDataToEnvironment0_l1_Start) (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_l1_End))
(-> (-P- PanelDataToEnvironment0_l1_End) (||  (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_l1_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- PanelDataToEnvironment0_l2) (-P- PanelDataToEnvironment0_l2_Start) (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l2_Start) (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_l2_End))
(-> (-P- PanelDataToEnvironment0_l2_End) (||  (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_l2_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- PanelDataToEnvironment0_End) (&&  (||  (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_Start)) (SomPIn_i (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Start)))))
(!! (-P- PanelDataToEnvironment0_l1_Skip))
(!! (-P- PanelDataToEnvironment0_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ICO85YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^ICO8JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ICO8ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment0_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment0) (-> (-P- MESSAGEpanel_setButton$_M^ICO8^PYLE^E^A8H^V^CXV^A2W^_A_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment0_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment0_Start)) (-P- PanelDataToEnvironment0_Start)))))))
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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IHH^L^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IHH^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IHH^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IHH^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^ID^DO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DPZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^ID^DPJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ID^DO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^ID^DOZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment5 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment5_Start) (yesterday (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_M^ID^DB^PYLE^E^A8H^V^CXV^A2W^_A)))

;;STOP SEMANTICS
(!! (-P- PanelDataToEnvironment5_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- PanelDataToEnvironment5) (-P- PanelDataToEnvironment5_Start) (-P- PanelDataToEnvironment5_End) (-P- PanelDataToEnvironment5_Stop))
(<-> (-P- PanelDataToEnvironment5_Start) (-P- PanelDataToEnvironment5_l1_Start))
(<-> (-P- PanelDataToEnvironment5_Start) (-P- PanelDataToEnvironment5_l2_Start))
(OrderCon (-P- PanelDataToEnvironment5_Start) (-P- PanelDataToEnvironment5_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- PanelDataToEnvironment5_l1_Start) (-P- PanelDataToEnvironment5_l1_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- PanelDataToEnvironment5_l2_Start) (-P- PanelDataToEnvironment5_l2_End) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- PanelDataToEnvironment5_l1) (-P- PanelDataToEnvironment5_l1_Start) (-P- PanelDataToEnvironment5_l1_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- PanelDataToEnvironment5_l1_Start) (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- PanelDataToEnvironment5_Stop))
(-> (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_l1_End))
(-> (-P- PanelDataToEnvironment5_l1_End) (||  (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_l1_End) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- PanelDataToEnvironment5_l2) (-P- PanelDataToEnvironment5_l2_Start) (-P- PanelDataToEnvironment5_l2_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- PanelDataToEnvironment5_l2_Start) (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))
(-> (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_l2_End))
(-> (-P- PanelDataToEnvironment5_l2_End) (||  (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_l2_End) (!! (-P- PanelDataToEnvironment5_l2_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment5_l2_Skip)) (-P- PanelDataToEnvironment5_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- PanelDataToEnvironment5_End) (&&  (||  (-P- PanelDataToEnvironment5_l1_End) (-P- PanelDataToEnvironment5_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment5_l1_End) (-P- PanelDataToEnvironment5_Start)) (SomPIn_i (-P- PanelDataToEnvironment5_l2_End) (-P- PanelDataToEnvironment5_Start)))))
(!! (-P- PanelDataToEnvironment5_l1_Skip))
(!! (-P- PanelDataToEnvironment5_l2_Skip))
(Borders (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DH^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ID^DHJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^ID^DG5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment5_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment5_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment5) (-> (-P- MESSAGEpanel_setButton$_M^ID^DHZYLE^E^A8H^V^CXV^A2W^_A_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment5_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment5_Start)) (-P- PanelDataToEnvironment5_Start)))))))
(-> (-P- PanelDataToEnvironment5) (-P- PanelDataToEnvironment5_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment4 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment4_Start) (yesterday (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_M^IC2IZYLE^E^A8H^V^CXV^A2W^_A)))

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
(OrderCon (-P- PanelDataToEnvironment4_l1_Start) (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_l1_End))
(-> (-P- PanelDataToEnvironment4_l1_End) (||  (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_l1_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- PanelDataToEnvironment4_l2) (-P- PanelDataToEnvironment4_l2_Start) (-P- PanelDataToEnvironment4_l2_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- PanelDataToEnvironment4_l2_Start) (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_l2_End))
(-> (-P- PanelDataToEnvironment4_l2_End) (||  (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_l2_End) (!! (-P- PanelDataToEnvironment4_l2_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment4_l2_Skip)) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- PanelDataToEnvironment4_End) (&&  (||  (-P- PanelDataToEnvironment4_l1_End) (-P- PanelDataToEnvironment4_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment4_l1_End) (-P- PanelDataToEnvironment4_Start)) (SomPIn_i (-P- PanelDataToEnvironment4_l2_End) (-P- PanelDataToEnvironment4_Start)))))
(!! (-P- PanelDataToEnvironment4_l1_Skip))
(!! (-P- PanelDataToEnvironment4_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ID^DAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC2N5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^IC2N^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment4_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment4_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment4) (-> (-P- MESSAGEpanel_setButton$_M^ID^DAJYLE^E^A8H^V^CXV^A2W^_A_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment4_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment4_Start)) (-P- PanelDataToEnvironment4_Start)))))))
(-> (-P- PanelDataToEnvironment4) (-P- PanelDataToEnvironment4_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment1 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_Start) (yesterday (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_M^ICO^_JYLE^E^A8H^V^CXV^A2W^_A)))

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
(OrderCon (-P- PanelDataToEnvironment1_l1_Start) (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_l1_End))
(-> (-P- PanelDataToEnvironment1_l1_End) (||  (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_l1_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- PanelDataToEnvironment1_l2) (-P- PanelDataToEnvironment1_l2_Start) (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- PanelDataToEnvironment1_l2_Start) (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_l2_End))
(-> (-P- PanelDataToEnvironment1_l2_End) (||  (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_l2_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- PanelDataToEnvironment1_End) (&&  (||  (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_Start)) (SomPIn_i (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Start)))))
(!! (-P- PanelDataToEnvironment1_l1_Skip))
(!! (-P- PanelDataToEnvironment1_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^ICPEJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^ICPD^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^ICPDZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment1_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment1) (-> (-P- MESSAGEpanel_setButton$_M^ICPD5YLE^E^A8H^V^CXV^A2W^_A_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment1_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment1_Start)) (-P- PanelDataToEnvironment1_Start)))))))
(-> (-P- PanelDataToEnvironment1) (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IE^RO5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IE^ROJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IE^ROZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IE^RO^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IE^RN5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IG^G^JZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^G^J^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IG^G^JJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IG^G^I5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IG^G^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IEEKJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IEEJ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IEEJ^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IEEJZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IEEJJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IHH^D^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IHH^EZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IHH^D5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IHH^E^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IHH^EJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5Q5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IF5RJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IF5Q^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5QZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5QJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IFSVJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IFSUZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IFSU5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IFSU^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IFSVZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IIV^R5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IIV^R^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IIV^SZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IIV^SJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment2 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_Start) (yesterday (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_M^ICPFZYLE^E^A8H^V^CXV^A2W^_A)))

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
(OrderCon (-P- PanelDataToEnvironment2_l1_Start) (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_l1_End))
(-> (-P- PanelDataToEnvironment2_l1_End) (||  (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_l1_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- PanelDataToEnvironment2_l2) (-P- PanelDataToEnvironment2_l2_Start) (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- PanelDataToEnvironment2_l2_Start) (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_l2_End))
(-> (-P- PanelDataToEnvironment2_l2_End) (||  (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_l2_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- PanelDataToEnvironment2_End) (&&  (||  (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_Start)) (SomPIn_i (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Start)))))
(!! (-P- PanelDataToEnvironment2_l1_Skip))
(!! (-P- PanelDataToEnvironment2_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IC1_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IC1_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_getLed$_M^IC1_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- PanelDataToEnvironment2_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment2) (-> (-P- MESSAGEpanel_setButton$_M^IC1_^PYLE^E^A8H^V^CXV^A2W^_A_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment2_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment2_Start)) (-P- PanelDataToEnvironment2_Start)))))))
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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IIV^LJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IIV^LZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IIV^K^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IIV^K5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IH^U^I^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_setStatus$_M^IH^U^IZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IH^U^IJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEweather_getNewImage$_M^IH^U^H5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setResult$_M^IEER^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setSts$_M^IEERZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IEERJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IEER5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_getCmd$_M^IEEQ5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IG^G^BZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IG^G^B^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IG^G^A5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IG^G^BJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^G^B5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD MainMMIToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- MainMMIToEnvironment_Start) (yesterday (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_M^IB^N1JYLE^E^A8H^V^CXV^A2W^_A)))

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
(OrderCon (-P- MainMMIToEnvironment_l1_Start) (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_l1_End))
(-> (-P- MainMMIToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_l1_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MainMMIToEnvironment_l2) (-P- MainMMIToEnvironment_l2_Start) (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l2_Start) (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_l2_End))
(-> (-P- MainMMIToEnvironment_l2_End) (||  (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_l2_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MainMMIToEnvironment_End) (&&  (||  (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_l2_End)) (&&  (SomPIn_i (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_Start)) (SomPIn_i (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Start)))))
(!! (-P- MainMMIToEnvironment_l1_Skip))
(!! (-P- MainMMIToEnvironment_l2_Skip))
(Borders (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_nav_getLongitude$_M^IB^N^_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_radar_getResult$_M^IB^N^_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_weather_setNewImage$_M^IB^N_5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_panel_setLed$_M^IB^N_ZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IB^N_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_nav_getLatitude$_M^IB^N^_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IB^OAZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_weather_setImage$_M^IB^OAJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_radar_getSts$_M^IB^N^_JYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEmain_panel_setCmd$_M^IB^N_^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MainMMIToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- MainMMIToEnvironment_TIMECONSTRAINT_1) (&&  (-P- MainMMIToEnvironment) (-> (-P- MESSAGEmain_panel_getButton_message$_M^IB^N95YLE^E^A8H^V^CXV^A2W^_A_End) (&&  (withinp_ii (-P- MainMMIToEnvironment_Start) 2) (!! (since_ii (!! (-P- MainMMIToEnvironment_Start)) (-P- MainMMIToEnvironment_Start)))))))
(-> (-P- MainMMIToEnvironment) (-P- MainMMIToEnvironment_TIMECONSTRAINT_1))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_Start)))
(-> (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End)))
(OrderGCon (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_End) (!! (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLongitude$_M^IF5^GZYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEshowData$_M^IG^GUJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEradar_setLatitude$_M^IF5^GJYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEprocessData$_M^IF5^F5YLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_Start) (-P- MESSAGEgetData$_M^IF5^F^PYLE^E^A8H^V^CXV^A2W^_A_End) (-P- NavigationToEnvironment_Stop))

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

;;panelData3 INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;ckNavigation INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;mainMMI INITIALIZATION SEMANTICS

;;panelData2 INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;ckPanelData INITIALIZATION SEMANTICS

;;ckRadar INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;panelData0 INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;ckMainMMI INITIALIZATION SEMANTICS

;;ckWeather INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;environment INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;panelData5 INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;panelData4 INITIALIZATION SEMANTICS

;;panelData1 INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) initAx))


(bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )