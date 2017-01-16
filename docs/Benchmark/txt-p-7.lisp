;  Model statistics:
;  941	:Number of UML elements
;  35	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  29	:Number of states
;  58	:Number of transitions
;  58	:Number of lifelines in sequence diagrams
;  137	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  8	:Number of time contraints in sequence diagrams
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

;;org.correttouml.uml.diagrams.classdiagram.Clock@5b3e3e73SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckPanelDataTICK)) 14)) (-P- ckPanelDataTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@53761ed1SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckRadarTICK)) 14)) (-P- ckRadarTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@3fe51ea2SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckMainMMITICK)) 14)) (-P- ckMainMMITICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@32ded085SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckNavigationTICK)) 14)) (-P- ckNavigationTICK))

;;org.correttouml.uml.diagrams.classdiagram.Clock@6fe15625SEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- ckWeatherTICK)) 14)) (-P- ckWeatherTICK))

;;SIGNALS SEMANTICS

;;ckNavigationSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@2ee6a5eb SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^BXM^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^BXM^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^BXM^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^BXM^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^BXM^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^BXM^PYKE^E^A^M478^DCRGBBA)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^BXM^PYKE^E^A^M478^DCRGBBA))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@49a27fbe SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^H^D0JYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^H^D0JYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^H^D0JYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^H^D0JYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^H^D0JYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^H^D0JYKE^E^A^M478^DCRGBBA)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^H^D0JYKE^E^A^M478^DCRGBBA))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@3829a0a0 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP25YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP25YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP25YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP25YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP25YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP25YKE^E^A^M478^DCRGBBA)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP25YKE^E^A^M478^DCRGBBA))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@7a71dc54 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^B^_UZYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^B^_UZYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^B^_UZYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^B^_UZYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^B^_UZYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^B^_UZYKE^E^A^M478^DCRGBBA)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^B^_UZYKE^E^A^M478^DCRGBBA))))

;;environmentSEMANTICS
;;Object operation definitions
(<-> (-P- OBJenvironmentOPradar_setSts) (||  (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPmain_nav_getLatitude) (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_End))
(<-> (-P- OBJenvironmentOPmain_weather_setNewImage) (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_End))
(<-> (-P- OBJenvironmentOPmain_radar_getSts) (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_End))
(<-> (-P- OBJenvironmentOPmain_radar_setCmd) (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_End))
(<-> (-P- OBJenvironmentOPnav_setLongitude) (||  (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPmain_weather_setImage) (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_End))
(<-> (-P- OBJenvironmentOPmain_nav_getLongitude) (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_End))
(<-> (-P- OBJenvironmentOPradar_getCmd) (||  (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPpanel_getLed) (||  (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPradar_setResult) (||  (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPweather_getNewImage) (||  (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPmain_radar_getResult) (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_End))
(<-> (-P- OBJenvironmentOPpanel_setButton) (||  (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPmain_panel_setLed) (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_End))
(<-> (-P- OBJenvironmentOPnav_setLatitude) (||  (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPweather_setStatus) (||  (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJenvironmentOPmain_panel_getButton) (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_End))
;;Attribute semantics

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@1621d34e SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^FB^QJYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^FB^QJYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^FB^QJYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^FB^QJYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^FB^QJYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^FB^QJYKE^E^A^M478^DCRGBBA)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^FB^QJYKE^E^A^M478^DCRGBBA))))

;;panelData1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData1OPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData1OPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData1OPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;panelData1 STD SMPanelData1org.correttouml.uml.diagrams.statediagram.StateDiagram@65ee9a05 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^ZGA^G^O5YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^ZGA^G^O5YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^ZGA^G^O5YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^ZGA^G^O5YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^ZGA^G^O5YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^ZGA^G^O5YKE^E^A^M478^DCRGBBA)) (next (-P- PanelDataToEnvironment1_Start)))
(-> (-P- PanelDataToEnvironment1_Start) (yesterday (&&  (-P- $OBJpanelData1_STDSMPanelData1_STATEPanelDataState) (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^ZGA^G^O5YKE^E^A^M478^DCRGBBA))))

;;ckWeatherSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;panelData4SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData4OPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData4OPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData4OPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;panelData4 STD SMPanelData4org.correttouml.uml.diagrams.statediagram.StateDiagram@2a1f0c81 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_^ZGB^U^PZYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_^ZGB^U^PZYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_^ZGB^U^PZYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_^ZGB^U^PZYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_^ZGB^U^PZYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_^ZGB^U^PZYKE^E^A^M478^DCRGBBA)) (next (-P- PanelDataToEnvironment4_Start)))
(-> (-P- PanelDataToEnvironment4_Start) (yesterday (&&  (-P- $OBJpanelData4_STDSMPanelData4_STATEPanelDataState) (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_^ZGB^U^PZYKE^E^A^M478^DCRGBBA))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@1f38486b SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^LWJYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^LWJYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^LWJYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^LWJYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^LWJYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^LWJYKE^E^A^M478^DCRGBBA)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^LWJYKE^E^A^M478^DCRGBBA))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@4ee8335f SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^G20^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^G20^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^G20^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^G20^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^G20^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^G20^PYKE^E^A^M478^DCRGBBA)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^G20^PYKE^E^A^M478^DCRGBBA))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@3207c8b6 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGD^J1^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGD^J1^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGD^J1^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGD^J1^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGD^J1^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGD^J1^PYKE^E^A^M478^DCRGBBA)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGD^J1^PYKE^E^A^M478^DCRGBBA))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@5d273e13 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGEK25YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGEK25YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGEK25YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGEK25YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGEK25YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGEK25YKE^E^A^M478^DCRGBBA)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGEK25YKE^E^A^M478^DCRGBBA))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@4b8e51d2 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^AJG5YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^AJG5YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^AJG5YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^AJG5YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^AJG5YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^AJG5YKE^E^A^M478^DCRGBBA)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^AJG5YKE^E^A^M478^DCRGBBA))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@697383ea SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^U5YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^U5YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^U5YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^U5YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^U5YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^U5YKE^E^A^M478^DCRGBBA)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^U5YKE^E^A^M478^DCRGBBA))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@3ebb2a97 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^D^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^D^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^D^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^D^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^D^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^D^PYKE^E^A^M478^DCRGBBA)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^D^PYKE^E^A^M478^DCRGBBA))))

;;panelData2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData2OPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData2OPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData2OPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;panelData2 STD SMPanelData2org.correttouml.uml.diagrams.statediagram.StateDiagram@2afc7c0e SEMANTICS

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
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^ZGBH^L^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^ZGBH^L^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^ZGBH^L^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^ZGBH^L^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^ZGBH^L^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^ZGBH^L^PYKE^E^A^M478^DCRGBBA)) (next (-P- PanelDataToEnvironment2_Start)))
(-> (-P- PanelDataToEnvironment2_Start) (yesterday (&&  (-P- $OBJpanelData2_STDSMPanelData2_STATEPanelDataState) (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^ZGBH^L^PYKE^E^A^M478^DCRGBBA))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@600d6e9f SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^LZYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^LZYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^LZYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^LZYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^LZYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^LZYKE^E^A^M478^DCRGBBA)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^LZYKE^E^A^M478^DCRGBBA))))

;;mainMMISEMANTICS
;;Object operation definitions
(<-> (-P- OBJmainMMIOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJmainMMIOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJmainMMIOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;mainMMI STD smMainMMIorg.correttouml.uml.diagrams.statediagram.StateDiagram@785d0b86 SEMANTICS

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
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^ZF_5^BJYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^ZF_5^BJYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^ZF_5^BJYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^ZF_5^BJYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- ckMainMMITICK)) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^ZF_5^BJYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^ZF_5^BJYKE^E^A^M478^DCRGBBA)) (next (-P- MainMMIToEnvironment_Start)))
(-> (-P- MainMMIToEnvironment_Start) (yesterday (&&  (-P- $OBJmainMMI_STDsmMainMMI_STATEMainMMIState) (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^ZF_5^BJYKE^E^A^M478^DCRGBBA))))

;;panelData5SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData5OPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData5OPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData5OPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;panelData5 STD SMPanelData5org.correttouml.uml.diagrams.statediagram.StateDiagram@29935953 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_^ZGCV^OZYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_^ZGCV^OZYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_^ZGCV^OZYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_^ZGCV^OZYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_^ZGCV^OZYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_^ZGCV^OZYKE^E^A^M478^DCRGBBA)) (next (-P- PanelDataToEnvironment5_Start)))
(-> (-P- PanelDataToEnvironment5_Start) (yesterday (&&  (-P- $OBJpanelData5_STDSMPanelData5_STATEPanelDataState) (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_^ZGCV^OZYKE^E^A^M478^DCRGBBA))))

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@315f2999 SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGX^S0^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGX^S0^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGX^S0^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGX^S0^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGX^S0^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGX^S0^PYKE^E^A^M478^DCRGBBA)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGX^S0^PYKE^E^A^M478^DCRGBBA))))

;;panelData6SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData6OPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData6OPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData6OPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;panelData6 STD SMPanelData6org.correttouml.uml.diagrams.statediagram.StateDiagram@5085a96d SEMANTICS

;;STATE PanelDataState
(-> (-P- BigBang) (!! (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState)))
(-> (-P- BigBang) (next (-P- OBJpanelData6_STDSMPanelData6_STATEPanelDataState_ENTER)))
(-> (-P- OBJpanelData6_STDSMPanelData6_STATEPanelDataState_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJpanelData6_STDSMPanelData6_STATEPanelDataState_EXIT))
(-> (&&  (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState) (!! (-P- OBJpanelData6_STDSMPanelData6_STATEPanelDataState_EXIT))) (next (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState)))
(-> (&&  (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState) (-P- OBJpanelData6_STDSMPanelData6_STATEPanelDataState_EXIT)) (next (!! (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState))))
(-> (&&  (!! (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState)) (next (-P- OBJpanelData6_STDSMPanelData6_STATEPanelDataState_ENTER))) (next (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState)))
(-> (&&  (!! (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState)) (next (!! (-P- OBJpanelData6_STDSMPanelData6_STATEPanelDataState_ENTER)))) (next (!! (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState))))

;;TRANSITION @ckPanelData.tick/@PanelDataToEnvironment6.start
(-> (&&  (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState) (-P- OBJpanelData6_STDSMPanelData6_TRANSITION_^ZGCV^V^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJpanelData6_STDSMPanelData6_TRANSITION_^ZGCV^V^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJpanelData6_STDSMPanelData6_TRANSITION_^ZGCV^V^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState) (-P- OBJpanelData6_STDSMPanelData6_TRANSITION_^ZGCV^V^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData6_STDSMPanelData6_TRANSITION_^ZGCV^V^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState) (-P- OBJpanelData6_STDSMPanelData6_TRANSITION_^ZGCV^V^PYKE^E^A^M478^DCRGBBA)) (next (-P- PanelDataToEnvironment6_Start)))
(-> (-P- PanelDataToEnvironment6_Start) (yesterday (&&  (-P- $OBJpanelData6_STDSMPanelData6_STATEPanelDataState) (-P- OBJpanelData6_STDSMPanelData6_TRANSITION_^ZGCV^V^PYKE^E^A^M478^DCRGBBA))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@565c5aec SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O0^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O0^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O0^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O0^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O0^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O0^PYKE^E^A^M478^DCRGBBA)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O0^PYKE^E^A^M478^DCRGBBA))))

;;ckMainMMISEMANTICS
;;Object operation definitions
;;Attribute semantics

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@246d79a7 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^FB^X5YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^FB^X5YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^FB^X5YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^FB^X5YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^FB^X5YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^FB^X5YKE^E^A^M478^DCRGBBA)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^FB^X5YKE^E^A^M478^DCRGBBA))))

;;panelData3SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData3OPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData3OPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData3OPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;panelData3 STD SMPanelData3org.correttouml.uml.diagrams.statediagram.StateDiagram@33204537 SEMANTICS

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
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_^ZGBH^S5YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_^ZGBH^S5YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_^ZGBH^S5YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_^ZGBH^S5YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_^ZGBH^S5YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_^ZGBH^S5YKE^E^A^M478^DCRGBBA)) (next (-P- PanelDataToEnvironment3_Start)))
(-> (-P- PanelDataToEnvironment3_Start) (yesterday (&&  (-P- $OBJpanelData3_STDSMPanelData3_STATEPanelDataState) (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_^ZGBH^S5YKE^E^A^M478^DCRGBBA))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@63b6377f SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O^T^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O^T^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O^T^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O^T^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O^T^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O^T^PYKE^E^A^M478^DCRGBBA)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O^T^PYKE^E^A^M478^DCRGBBA))))

;;panelData0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJpanelData0OPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData0OPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJpanelData0OPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;panelData0 STD SMPanelData0org.correttouml.uml.diagrams.statediagram.StateDiagram@58ba84cc SEMANTICS

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
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^ZGA^G^H^PYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^ZGA^G^H^PYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^ZGA^G^H^PYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^ZGA^G^H^PYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- ckPanelDataTICK)) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^ZGA^G^H^PYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^ZGA^G^H^PYKE^E^A^M478^DCRGBBA)) (next (-P- PanelDataToEnvironment0_Start)))
(-> (-P- PanelDataToEnvironment0_Start) (yesterday (&&  (-P- $OBJpanelData0_STDSMPanelData0_STATEPanelDataState) (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^ZGA^G^H^PYKE^E^A^M478^DCRGBBA))))

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@5cef9e98 SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^L^D5YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^L^D5YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^L^D5YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^L^D5YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^L^D5YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^L^D5YKE^E^A^M478^DCRGBBA)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^L^D5YKE^E^A^M478^DCRGBBA))))

;;ckRadarSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;navDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJnavDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJnavDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;navData STD SMNavDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@3487eba SEMANTICS

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
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^NJYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^NJYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^NJYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^NJYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- ckNavigationTICK)) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^NJYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^NJYKE^E^A^M478^DCRGBBA)) (next (-P- NavigationToEnvironment_Start)))
(-> (-P- NavigationToEnvironment_Start) (yesterday (&&  (-P- $OBJnavData_STDSMNavData_STATENavDataState) (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^NJYKE^E^A^M478^DCRGBBA))))

;;weatherDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJweatherDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJweatherDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;weatherData STD SMWeatherDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@2473cfe2 SEMANTICS

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
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP^V5YKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP^V5YKE^E^A^M478^DCRGBBA))
(-> (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP^V5YKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP^V5YKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- ckWeatherTICK)) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP^V5YKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP^V5YKE^E^A^M478^DCRGBBA)) (next (-P- WeatherDataToEnvironment_Start)))
(-> (-P- WeatherDataToEnvironment_Start) (yesterday (&&  (-P- $OBJweatherData_STDSMWeatherData_STATEWeatherDataState) (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP^V5YKE^E^A^M478^DCRGBBA))))

;;ckPanelDataSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;radarDataSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarDataOPshowData) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPprocessData) (||  (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(<-> (-P- OBJradarDataOPgetData) (||  (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
;;Attribute semantics

;;radarData STD SMRadarDataorg.correttouml.uml.diagrams.statediagram.StateDiagram@4d15f20a SEMANTICS

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
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGC8^YZYKE^E^A^M478^DCRGBBA_TRIGGER)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGC8^YZYKE^E^A^M478^DCRGBBA))
(-> (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGC8^YZYKE^E^A^M478^DCRGBBA) (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGC8^YZYKE^E^A^M478^DCRGBBA_TRIGGER)))
(<-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- ckRadarTICK)) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGC8^YZYKE^E^A^M478^DCRGBBA_TRIGGER))
(-> (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGC8^YZYKE^E^A^M478^DCRGBBA)) (next (-P- RadarDataToEnvironment_Start)))
(-> (-P- RadarDataToEnvironment_Start) (yesterday (&&  (-P- $OBJradarData_STDSMRadarData_STATERadarDataState) (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGC8^YZYKE^E^A^M478^DCRGBBA))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD RadarDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- RadarDataToEnvironment_Start) (||  (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^BXM^PYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^B^_UZYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGD^J1^PYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGEK25YKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZG^AJG5YKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGX^S0^PYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJradarData_STDSMRadarData_TRANSITION_^ZGC8^YZYKE^E^A^M478^DCRGBBA))))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZGEK0^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGEK1^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGEK05YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGEK1ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZGEK1JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^AJE5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZG^AJE^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^AJF^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^AJFZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZG^AJFJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGD^J0JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGD^J0ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGD^J^Z^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZGD^J^Z5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZGD^J^ZZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment3 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment3_Start) (yesterday (-P- OBJpanelData3_STDSMPanelData3_TRANSITION_^ZGBH^S5YKE^E^A^M478^DCRGBBA)))

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
(OrderCon (-P- PanelDataToEnvironment3_l1_Start) (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_Start) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_l1_End))
(-> (-P- PanelDataToEnvironment3_l1_End) (||  (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_l1_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment3_l1_Skip)) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- PanelDataToEnvironment3_l2) (-P- PanelDataToEnvironment3_l2_Start) (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- PanelDataToEnvironment3_l2_Start) (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_l2_End))
(-> (-P- PanelDataToEnvironment3_l2_End) (||  (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_l2_End) (!! (-P- PanelDataToEnvironment3_l2_Skip)) (-P- PanelDataToEnvironment3_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment3_l2_Skip)) (-P- PanelDataToEnvironment3_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- PanelDataToEnvironment3_End) (&&  (||  (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment3_l1_End) (-P- PanelDataToEnvironment3_Start)) (SomPIn_i (-P- PanelDataToEnvironment3_l2_End) (-P- PanelDataToEnvironment3_Start)))))
(!! (-P- PanelDataToEnvironment3_l1_Skip))
(!! (-P- PanelDataToEnvironment3_l2_Skip))
(Borders (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGB^U^NZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGB^U^OJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGB^U^N^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment3_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment3_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment3) (-> (-P- MESSAGEpanel_setButton$_^ZGB^U^N5YKE^E^A^M478^DCRGBBA_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment3_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment3_Start)) (-P- PanelDataToEnvironment3_Start)))))))
(-> (-P- PanelDataToEnvironment3) (-P- PanelDataToEnvironment3_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD WeatherDataToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- WeatherDataToEnvironment_Start) (||  (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^H^D0JYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP25YKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^G20^PYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O0^PYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^FB^X5YKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^F^O^T^PYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJweatherData_STDSMWeatherData_TRANSITION_^ZG^GP^V5YKE^E^A^M478^DCRGBBA))))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^H^D5^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^H^D55YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^H^D5JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^H^D5ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^GP1JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^GP1^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^GP1ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^GP05YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD NavigationToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- NavigationToEnvironment_Start) (||  (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^FB^QJYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^LWJYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^U5YKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^D^PYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^D^Z^LZYKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^C^L^D5YKE^E^A^M478^DCRGBBA)) (yesterday (-P- OBJnavData_STDSMNavData_TRANSITION_^ZG^E^A^NJYKE^E^A^M478^DCRGBBA))))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^LZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^E^A^L5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^L^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^E^A^LJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^E^A^K5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment2 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_Start) (yesterday (-P- OBJpanelData2_STDSMPanelData2_TRANSITION_^ZGBH^L^PYKE^E^A^M478^DCRGBBA)))

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
(OrderCon (-P- PanelDataToEnvironment2_l1_Start) (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_Start) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_l1_End))
(-> (-P- PanelDataToEnvironment2_l1_End) (||  (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_l1_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment2_l1_Skip)) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- PanelDataToEnvironment2_l2) (-P- PanelDataToEnvironment2_l2_Start) (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- PanelDataToEnvironment2_l2_Start) (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_l2_End))
(-> (-P- PanelDataToEnvironment2_l2_End) (||  (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_l2_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment2_l2_Skip)) (-P- PanelDataToEnvironment2_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- PanelDataToEnvironment2_End) (&&  (||  (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment2_l1_End) (-P- PanelDataToEnvironment2_Start)) (SomPIn_i (-P- PanelDataToEnvironment2_l2_End) (-P- PanelDataToEnvironment2_Start)))))
(!! (-P- PanelDataToEnvironment2_l1_Skip))
(!! (-P- PanelDataToEnvironment2_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGBH^RJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGBH^R^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGBH^Q5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment2_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment2) (-> (-P- MESSAGEpanel_setButton$_^ZGBH^RZYKE^E^A^M478^DCRGBBA_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment2_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment2_Start)) (-P- PanelDataToEnvironment2_Start)))))))
(-> (-P- PanelDataToEnvironment2) (-P- PanelDataToEnvironment2_TIMECONSTRAINT_1))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^B^_TJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^B^_SZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZG^B^_SJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZG^B^_S^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^B^_S5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^E^A^TJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^E^A^T^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^E^A^TZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^E^A^S^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^E^A^S5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^FB^O^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^FB^O5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^FB^OZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^FB^OJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^FB^N5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD MainMMIToEnvironment 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- MainMMIToEnvironment_Start) (yesterday (-P- OBJmainMMI_STDsmMainMMI_TRANSITION_^ZF_5^BJYKE^E^A^M478^DCRGBBA)))

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
(OrderCon (-P- MainMMIToEnvironment_l1_Start) (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_Start) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_l1_End))
(-> (-P- MainMMIToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_l1_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l1_Skip)) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MainMMIToEnvironment_l2) (-P- MainMMIToEnvironment_l2_Start) (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MainMMIToEnvironment_l2_Start) (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_l2_End))
(-> (-P- MainMMIToEnvironment_l2_End) (||  (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_l2_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(OrderGCon (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MainMMIToEnvironment_l2_Skip)) (-P- MainMMIToEnvironment_Stop))
(-> (-P- MainMMIToEnvironment_End) (&&  (||  (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_l2_End)) (&&  (SomPIn_i (-P- MainMMIToEnvironment_l1_End) (-P- MainMMIToEnvironment_Start)) (SomPIn_i (-P- MainMMIToEnvironment_l2_End) (-P- MainMMIToEnvironment_Start)))))
(!! (-P- MainMMIToEnvironment_l1_Skip))
(!! (-P- MainMMIToEnvironment_l2_Skip))
(Borders (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_panel_setCmd$_^ZGA^G^F^PYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGA^G^FJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_radar_getResult$_^ZGA^G^EZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_weather_setNewImage$_^ZGA^G^F5YKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_radar_getSts$_^ZGA^G^EJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_nav_getLongitude$_^ZGA^G^E5YKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_nav_getLatitude$_^ZGA^G^E^PYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_panel_setLed$_^ZGA^G^FZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGA^G^GZYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_weather_setImage$_^ZGA^G^GJYKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(Borders (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))
(OrderCon (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_End) (-P- MainMMIToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- MainMMIToEnvironment_TIMECONSTRAINT_1) (&&  (-P- MainMMIToEnvironment) (-> (-P- MESSAGEmain_panel_getButton_message$_^ZGA^G^D5YKE^E^A^M478^DCRGBBA_End) (&&  (withinp_ii (-P- MainMMIToEnvironment_Start) 2) (!! (since_ii (!! (-P- MainMMIToEnvironment_Start)) (-P- MainMMIToEnvironment_Start)))))))
(-> (-P- MainMMIToEnvironment) (-P- MainMMIToEnvironment_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment5 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment5_Start) (yesterday (-P- OBJpanelData5_STDSMPanelData5_TRANSITION_^ZGCV^OZYKE^E^A^M478^DCRGBBA)))

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
(OrderCon (-P- PanelDataToEnvironment5_l1_Start) (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_Start) (-P- PanelDataToEnvironment5_Stop))
(-> (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_l1_End))
(-> (-P- PanelDataToEnvironment5_l1_End) (||  (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_l1_End) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment5_l1_Skip)) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- PanelDataToEnvironment5_l2) (-P- PanelDataToEnvironment5_l2_Start) (-P- PanelDataToEnvironment5_l2_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- PanelDataToEnvironment5_l2_Start) (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))
(-> (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_l2_End))
(-> (-P- PanelDataToEnvironment5_l2_End) (||  (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_l2_End) (!! (-P- PanelDataToEnvironment5_l2_Skip)) (-P- PanelDataToEnvironment5_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment5_l2_Skip)) (-P- PanelDataToEnvironment5_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- PanelDataToEnvironment5_End) (&&  (||  (-P- PanelDataToEnvironment5_l1_End) (-P- PanelDataToEnvironment5_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment5_l1_End) (-P- PanelDataToEnvironment5_Start)) (SomPIn_i (-P- PanelDataToEnvironment5_l2_End) (-P- PanelDataToEnvironment5_Start)))))
(!! (-P- PanelDataToEnvironment5_l1_Skip))
(!! (-P- PanelDataToEnvironment5_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGCV^T5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGCV^T^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))
(Borders (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGCV^UZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment5_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment5_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment5) (-> (-P- MESSAGEpanel_setButton$_^ZGCV^UJYKE^E^A^M478^DCRGBBA_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment5_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment5_Start)) (-P- PanelDataToEnvironment5_Start)))))))
(-> (-P- PanelDataToEnvironment5) (-P- PanelDataToEnvironment5_TIMECONSTRAINT_1))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^G2^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^G2^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^G2^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^G2^Y5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment6 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment6_Start) (yesterday (-P- OBJpanelData6_STDSMPanelData6_TRANSITION_^ZGCV^V^PYKE^E^A^M478^DCRGBBA)))

;;STOP SEMANTICS
(!! (-P- PanelDataToEnvironment6_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- PanelDataToEnvironment6) (-P- PanelDataToEnvironment6_Start) (-P- PanelDataToEnvironment6_End) (-P- PanelDataToEnvironment6_Stop))
(<-> (-P- PanelDataToEnvironment6_Start) (-P- PanelDataToEnvironment6_l1_Start))
(<-> (-P- PanelDataToEnvironment6_Start) (-P- PanelDataToEnvironment6_l2_Start))
(OrderCon (-P- PanelDataToEnvironment6_Start) (-P- PanelDataToEnvironment6_End) (-P- PanelDataToEnvironment6_Stop))
(OrderCon (-P- PanelDataToEnvironment6_l1_Start) (-P- PanelDataToEnvironment6_l1_End) (-P- PanelDataToEnvironment6_Stop))
(OrderCon (-P- PanelDataToEnvironment6_l2_Start) (-P- PanelDataToEnvironment6_l2_End) (-P- PanelDataToEnvironment6_Stop))
(Borders (-P- PanelDataToEnvironment6_l1) (-P- PanelDataToEnvironment6_l1_Start) (-P- PanelDataToEnvironment6_l1_End) (-P- PanelDataToEnvironment6_Stop))
(OrderCon (-P- PanelDataToEnvironment6_l1_Start) (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_Start) (-P- PanelDataToEnvironment6_Stop))
(-> (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_l1_End))
(-> (-P- PanelDataToEnvironment6_l1_End) (||  (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_l1_End) (!! (-P- PanelDataToEnvironment6_l1_Skip)) (-P- PanelDataToEnvironment6_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment6_l1_Skip)) (-P- PanelDataToEnvironment6_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment6_l1_Skip)) (-P- PanelDataToEnvironment6_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment6_l1_Skip)) (-P- PanelDataToEnvironment6_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment6_l1_Skip)) (-P- PanelDataToEnvironment6_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment6_l1_Skip)) (-P- PanelDataToEnvironment6_Stop))
(Borders (-P- PanelDataToEnvironment6_l2) (-P- PanelDataToEnvironment6_l2_Start) (-P- PanelDataToEnvironment6_l2_End) (-P- PanelDataToEnvironment6_Stop))
(OrderCon (-P- PanelDataToEnvironment6_l2_Start) (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))
(-> (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_l2_End))
(-> (-P- PanelDataToEnvironment6_l2_End) (||  (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_l2_End) (!! (-P- PanelDataToEnvironment6_l2_Skip)) (-P- PanelDataToEnvironment6_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment6_l2_Skip)) (-P- PanelDataToEnvironment6_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- PanelDataToEnvironment6_End) (&&  (||  (-P- PanelDataToEnvironment6_l1_End) (-P- PanelDataToEnvironment6_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment6_l1_End) (-P- PanelDataToEnvironment6_Start)) (SomPIn_i (-P- PanelDataToEnvironment6_l2_End) (-P- PanelDataToEnvironment6_Start)))))
(!! (-P- PanelDataToEnvironment6_l1_Skip))
(!! (-P- PanelDataToEnvironment6_l2_Skip))
(Borders (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGC8^XJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))
(Borders (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGC8^W^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))
(Borders (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGC8^WZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment6_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment6_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment6) (-> (-P- MESSAGEpanel_setButton$_^ZGC8^W5YKE^E^A^M478^DCRGBBA_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment6_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment6_Start)) (-P- PanelDataToEnvironment6_Start)))))))
(-> (-P- PanelDataToEnvironment6) (-P- PanelDataToEnvironment6_TIMECONSTRAINT_1))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^J5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^D^Z^JZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^D^Z^KJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^D^Z^JJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^D^Z^J^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment1 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_Start) (yesterday (-P- OBJpanelData1_STDSMPanelData1_TRANSITION_^ZGA^G^O5YKE^E^A^M478^DCRGBBA)))

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
(OrderCon (-P- PanelDataToEnvironment1_l1_Start) (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_Start) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_l1_End))
(-> (-P- PanelDataToEnvironment1_l1_End) (||  (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_l1_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment1_l1_Skip)) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- PanelDataToEnvironment1_l2) (-P- PanelDataToEnvironment1_l2_Start) (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- PanelDataToEnvironment1_l2_Start) (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_l2_End))
(-> (-P- PanelDataToEnvironment1_l2_End) (||  (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_l2_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment1_l2_Skip)) (-P- PanelDataToEnvironment1_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- PanelDataToEnvironment1_End) (&&  (||  (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment1_l1_End) (-P- PanelDataToEnvironment1_Start)) (SomPIn_i (-P- PanelDataToEnvironment1_l2_End) (-P- PanelDataToEnvironment1_Start)))))
(!! (-P- PanelDataToEnvironment1_l1_Skip))
(!! (-P- PanelDataToEnvironment1_l2_Skip))
(Borders (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGBH^J^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGBH^J5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGBH^KZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment1_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment1) (-> (-P- MESSAGEpanel_setButton$_^ZGBH^KJYKE^E^A^M478^DCRGBBA_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment1_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment1_Start)) (-P- PanelDataToEnvironment1_Start)))))))
(-> (-P- PanelDataToEnvironment1) (-P- PanelDataToEnvironment1_TIMECONSTRAINT_1))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^DM^DJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^D^Z^CJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^DM^DZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^DM^C5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^D^Z^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^C^LUJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^C^LU5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^C^LU^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZG^C^LUZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZG^B^_Z5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^FB^V5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^FB^V^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^FB^WZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^FB^W^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^FB^WJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^G25^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^G26ZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^G26JYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^G255YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment0 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_Start) (yesterday (-P- OBJpanelData0_STDSMPanelData0_TRANSITION_^ZGA^G^H^PYKE^E^A^M478^DCRGBBA)))

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
(OrderCon (-P- PanelDataToEnvironment0_l1_Start) (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_Start) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_l1_End))
(-> (-P- PanelDataToEnvironment0_l1_End) (||  (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_l1_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment0_l1_Skip)) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- PanelDataToEnvironment0_l2) (-P- PanelDataToEnvironment0_l2_Start) (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- PanelDataToEnvironment0_l2_Start) (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_l2_End))
(-> (-P- PanelDataToEnvironment0_l2_End) (||  (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_l2_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment0_l2_Skip)) (-P- PanelDataToEnvironment0_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- PanelDataToEnvironment0_End) (&&  (||  (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment0_l1_End) (-P- PanelDataToEnvironment0_Start)) (SomPIn_i (-P- PanelDataToEnvironment0_l2_End) (-P- PanelDataToEnvironment0_Start)))))
(!! (-P- PanelDataToEnvironment0_l1_Skip))
(!! (-P- PanelDataToEnvironment0_l2_Skip))
(Borders (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGA^G^M5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGA^G^N^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))
(Borders (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGA^G^NJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment0_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment0_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment0) (-> (-P- MESSAGEpanel_setButton$_^ZGA^G^NZYKE^E^A^M478^DCRGBBA_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment0_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment0_Start)) (-P- PanelDataToEnvironment0_Start)))))))
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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^GP^UJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^GP^UZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^GP^U^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^GP^T5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- NavigationToEnvironment_l1_Start) (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_Start) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End))
(-> (-P- NavigationToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l1_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l1_Skip)) (-P- NavigationToEnvironment_Stop))
(Borders (-P- NavigationToEnvironment_l2) (-P- NavigationToEnvironment_l2_Start) (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- NavigationToEnvironment_l2_Start) (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End))
(-> (-P- NavigationToEnvironment_l2_End) (||  (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_l2_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_End) (!! (-P- NavigationToEnvironment_l2_Skip)) (-P- NavigationToEnvironment_Stop))
(-> (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- NavigationToEnvironment_End) (&&  (||  (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_l2_End)) (&&  (SomPIn_i (-P- NavigationToEnvironment_l1_End) (-P- NavigationToEnvironment_Start)) (SomPIn_i (-P- NavigationToEnvironment_l2_End) (-P- NavigationToEnvironment_Start)))))
(!! (-P- NavigationToEnvironment_l1_Skip))
(!! (-P- NavigationToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^C^L^B5YKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLatitude$_^ZG^C^L^CJYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEgetData$_^ZG^C^L^B^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setLongitude$_^ZG^C^L^CZYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^C^L^C^PYKE^E^A^M478^DCRGBBA_End) (-P- NavigationToEnvironment_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD PanelDataToEnvironment4 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- PanelDataToEnvironment4_Start) (yesterday (-P- OBJpanelData4_STDSMPanelData4_TRANSITION_^ZGB^U^PZYKE^E^A^M478^DCRGBBA)))

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
(OrderCon (-P- PanelDataToEnvironment4_l1_Start) (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_Start) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_l1_End))
(-> (-P- PanelDataToEnvironment4_l1_End) (||  (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_l1_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment4_l1_Skip)) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- PanelDataToEnvironment4_l2) (-P- PanelDataToEnvironment4_l2_Start) (-P- PanelDataToEnvironment4_l2_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- PanelDataToEnvironment4_l2_Start) (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_l2_End))
(-> (-P- PanelDataToEnvironment4_l2_End) (||  (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_l2_End) (!! (-P- PanelDataToEnvironment4_l2_Skip)) (-P- PanelDataToEnvironment4_Stop))
(OrderGCon (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End) (!! (-P- PanelDataToEnvironment4_l2_Skip)) (-P- PanelDataToEnvironment4_Stop))
(-> (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- PanelDataToEnvironment4_End) (&&  (||  (-P- PanelDataToEnvironment4_l1_End) (-P- PanelDataToEnvironment4_l2_End)) (&&  (SomPIn_i (-P- PanelDataToEnvironment4_l1_End) (-P- PanelDataToEnvironment4_Start)) (SomPIn_i (-P- PanelDataToEnvironment4_l2_End) (-P- PanelDataToEnvironment4_Start)))))
(!! (-P- PanelDataToEnvironment4_l1_Skip))
(!! (-P- PanelDataToEnvironment4_l2_Skip))
(Borders (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGB^U^U5YKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGB^U^VZYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))
(Borders (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))
(OrderCon (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEpanel_getLed$_^ZGB^U^U^PYKE^E^A^M478^DCRGBBA_End) (-P- PanelDataToEnvironment4_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- PanelDataToEnvironment4_TIMECONSTRAINT_1) (&&  (-P- PanelDataToEnvironment4) (-> (-P- MESSAGEpanel_setButton$_^ZGB^U^VJYKE^E^A^M478^DCRGBBA_End) (&&  (lasted_ii (!! (-P- PanelDataToEnvironment4_Start)) 5) (!! (since_ii (!! (-P- PanelDataToEnvironment4_Start)) (-P- PanelDataToEnvironment4_Start)))))))
(-> (-P- PanelDataToEnvironment4) (-P- PanelDataToEnvironment4_TIMECONSTRAINT_1))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZGEK8^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZGEK9ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZGEK9JYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZGEK85YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZGEK8ZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^F^O^R5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^F^O^SJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^F^O^SZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^R^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- WeatherDataToEnvironment_l1_Start) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_Start) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End))
(-> (-P- WeatherDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l1_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l1_Skip)) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- WeatherDataToEnvironment_l2) (-P- WeatherDataToEnvironment_l2_Start) (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- WeatherDataToEnvironment_l2_Start) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End))
(-> (-P- WeatherDataToEnvironment_l2_End) (||  (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_l2_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_End) (!! (-P- WeatherDataToEnvironment_l2_Skip)) (-P- WeatherDataToEnvironment_Stop))
(-> (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- WeatherDataToEnvironment_End) (&&  (||  (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- WeatherDataToEnvironment_l1_End) (-P- WeatherDataToEnvironment_Start)) (SomPIn_i (-P- WeatherDataToEnvironment_l2_End) (-P- WeatherDataToEnvironment_Start)))))
(!! (-P- WeatherDataToEnvironment_l1_Skip))
(!! (-P- WeatherDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^F^O^ZZYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_setStatus$_^ZG^F^O^ZJYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^F^O^Y5YKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(Borders (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEweather_getNewImage$_^ZG^F^O^Y^PYKE^E^A^M478^DCRGBBA_End) (-P- WeatherDataToEnvironment_Stop))

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
(OrderCon (-P- RadarDataToEnvironment_l1_Start) (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_Start) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End))
(-> (-P- RadarDataToEnvironment_l1_End) (||  (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l1_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_Start)))
(-> (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_Start) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l1_Skip)) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- RadarDataToEnvironment_l2) (-P- RadarDataToEnvironment_l2_Start) (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- RadarDataToEnvironment_l2_Start) (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End))
(-> (-P- RadarDataToEnvironment_l2_End) (||  (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_l2_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(OrderGCon (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_End)))
(-> (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_End) (!! (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_End)))
(OrderGCon (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_End) (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_End) (!! (-P- RadarDataToEnvironment_l2_Skip)) (-P- RadarDataToEnvironment_Stop))
(-> (-P- RadarDataToEnvironment_End) (&&  (||  (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_l2_End)) (&&  (SomPIn_i (-P- RadarDataToEnvironment_l1_End) (-P- RadarDataToEnvironment_Start)) (SomPIn_i (-P- RadarDataToEnvironment_l2_End) (-P- RadarDataToEnvironment_Start)))))
(!! (-P- RadarDataToEnvironment_l1_Skip))
(!! (-P- RadarDataToEnvironment_l2_Skip))
(Borders (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setResult$_^ZG^A^WI^PYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_setSts$_^ZG^A^WIZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEprocessData$_^ZG^A^WIJYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEshowData$_^ZG^A^WI5YKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(Borders (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA) (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))
(OrderCon (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_Start) (-P- MESSAGEradar_getCmd$_^ZG^AJMZYKE^E^A^M478^DCRGBBA_End) (-P- RadarDataToEnvironment_Stop))

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

;;radarData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;environment INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;panelData1 INITIALIZATION SEMANTICS

;;ckWeather INITIALIZATION SEMANTICS

;;panelData4 INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;panelData2 INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;mainMMI INITIALIZATION SEMANTICS

;;panelData5 INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

;;panelData6 INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;ckMainMMI INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;panelData3 INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;panelData0 INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;ckRadar INITIALIZATION SEMANTICS

;;navData INITIALIZATION SEMANTICS

;;weatherData INITIALIZATION SEMANTICS

;;ckPanelData INITIALIZATION SEMANTICS

;;radarData INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) (!!(yesterday Q1)) initAx))


(bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )