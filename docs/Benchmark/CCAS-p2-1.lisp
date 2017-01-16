;  Model statistics:
;  214	:Number of UML elements
;  5	:Number of objects
;  1	:Number of activity diagrams
;  10	:Number of nodes in activity diagrams
;  5	:Number of states
;  9	:Number of transitions
;  7	:Number of lifelines in sequence diagrams
;  5	:Number of messages in sequence diagrams
;  1	:Number of parameters in sequence diagrams
;  2	:Number of time contraints in sequence diagrams
;  1	:Number of clocks
;  6	:Number of nodes in interaction overview diagrams
;  5	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'ae2bvzot)
(use-package :trio-utils)
(defvar TSPACE 200)
;; Variables:
(define-tvar OBJradarATTRreadValue *int*)
(define-tvar OBJradarATTRfailureC *int*)
(define-tvar OBJbusOPsendSensorDistancePARAMreceivedDistance *int*)
(define-tvar OBJctrlOPnotifyDistancePARAMreceivedDistance *int*)
(define-tvar SDsendSensorDistancePARdistance *int*)
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

;;org.correttouml.uml.diagrams.classdiagram.Clock@3933462cSEMANTICS
(<-> (||  (past (-P- BigBang) 1) (lasted (!! (-P- radarClockTICK)) 3)) (-P- radarClockTICK))

;;SIGNALS SEMANTICS
(<-> (-P- brakeInterrupt) (-P- OBJctrlbrakeInterrupt_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_CALL))

(<-> (-P- failure) (-P- OBJradaradRadar_SENDSIG_3^B6^X^KITDE^E^A^H^_^P^KLU^TOM^OA))


;;radarSEMANTICS
;;Object operation definitions
(<-> (-P- OBJradarOPreadValue) (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_End))
;;Attribute semantics
(-> (!! (||  (-P- OBJradarASSIGNMENT_LQ^V2^GISOE^E^A^H^_^P^KLU^TOM^OAfailureC) (-P- OBJradarASSIGNMENT_T^O^_^MYISGE^E^A^H^_^P^KLU^TOM^OAfailureC))) ([=] (-V- OBJradarATTRfailureC) (yesterday (-V- OBJradarATTRfailureC))))

;;radar AD OBJradaradRadarorg.correttouml.uml.diagrams.activitydiagram.AD@417ec442 SEMANTICS
(-> (-P- CONTROLFLOW_R41^K0ISOE^E^A^H^_^P^KLU^TOM^OA) (-P- OBJradarOBJradaradRadar_R41^K0ISOE^E^A^H^_^P^KLU^TOM^OAGUARD))
(<-> ([<] (-V- OBJradarATTRfailureC) 2) (-P- OBJradarOBJradaradRadar_R41^K0ISOE^E^A^H^_^P^KLU^TOM^OAGUARD))
(-> (-P- CONTROLFLOW_R41^K0ISOE^E^A^H^_^P^KLU^TOM^OA) (!! (-P- CONTROLFLOW_A^Q^AJ8ISOE^E^A^H^_^P^KLU^TOM^OA)))
(-> (-P- CONTROLFLOW_A^Q^AJ8ISOE^E^A^H^_^P^KLU^TOM^OA) (-P- OBJradarOBJradaradRadar_A^Q^AJ8ISOE^E^A^H^_^P^KLU^TOM^OAGUARD))
(<-> ([>] (-V- OBJradarATTRfailureC) 1) (-P- OBJradarOBJradaradRadar_A^Q^AJ8ISOE^E^A^H^_^P^KLU^TOM^OAGUARD))
(-> (-P- CONTROLFLOW_A^Q^AJ8ISOE^E^A^H^_^P^KLU^TOM^OA) (!! (-P- CONTROLFLOW_R41^K0ISOE^E^A^H^_^P^KLU^TOM^OA)))
(<-> (&&  (-P- OBJradarOPreadValue) (-P- CONTROLFLOW_8^RP^P4ISGE^E^A^H^_^P^KLU^TOM^OA)) (||  (-P- CONTROLFLOW_R41^K0ISOE^E^A^H^_^P^KLU^TOM^OA) (-P- CONTROLFLOW_A^Q^AJ8ISOE^E^A^H^_^P^KLU^TOM^OA)))
(<-> (-P- OBJradaradRadar_OPAC_LQ^V2^GISOE^E^A^H^_^P^KLU^TOM^OA) (past (&&  (&&  (-P- OBJradarOPreadValue) (-P- CONTROLFLOW_8^RP^P4ISGE^E^A^H^_^P^KLU^TOM^OA)) (-P- CONTROLFLOW_R41^K0ISOE^E^A^H^_^P^KLU^TOM^OA)) 1))
(<-> (-P- OBJradaradRadar_OPAC_LQ^V2^GISOE^E^A^H^_^P^KLU^TOM^OA) (-P- OBJradarASSIGNMENT_LQ^V2^GISOE^E^A^H^_^P^KLU^TOM^OAfailureC))
(-> (-P- OBJradarASSIGNMENT_LQ^V2^GISOE^E^A^H^_^P^KLU^TOM^OAfailureC) ([=] (-V- OBJradarATTRfailureC) ([+] (yesterday (-V- OBJradarATTRfailureC)) 1)))
(<-> (-P- OBJradaradRadar_SENDSIG_3^B6^X^KITDE^E^A^H^_^P^KLU^TOM^OA) (-P- OBJradarfailure_3^B6^X^KITDE^E^A^H^_^P^KLU^TOM^OA_CALL))
(<-> (-P- OBJradaradRadar_SENDSIG_3^B6^X^KITDE^E^A^H^_^P^KLU^TOM^OA) (past (&&  (&&  (-P- OBJradarOPreadValue) (-P- CONTROLFLOW_8^RP^P4ISGE^E^A^H^_^P^KLU^TOM^OA)) (-P- CONTROLFLOW_A^Q^AJ8ISOE^E^A^H^_^P^KLU^TOM^OA)) 1))
(-> (-P- CONTROLFLOW_8^RP^P4ISGE^E^A^H^_^P^KLU^TOM^OA) (!! (-P- CONTROLFLOW_41LXQISGE^E^A^H^_^P^KLU^TOM^OA)))
(-> (-P- CONTROLFLOW_41LXQISGE^E^A^H^_^P^KLU^TOM^OA) (!! (-P- CONTROLFLOW_8^RP^P4ISGE^E^A^H^_^P^KLU^TOM^OA)))
(<-> (-P- OBJradarOPreadValue) (||  (-P- CONTROLFLOW_8^RP^P4ISGE^E^A^H^_^P^KLU^TOM^OA) (-P- CONTROLFLOW_41LXQISGE^E^A^H^_^P^KLU^TOM^OA)))
(<-> (-P- OBJradaradRadar_sendSensorDistance_START) (past (&&  (-P- OBJradarOPreadValue) (-P- CONTROLFLOW_41LXQISGE^E^A^H^_^P^KLU^TOM^OA)) 1))
(-> (-P- OBJradaradRadar_sendSensorDistance_START) ([=] (-V- SDsendSensorDistancePARdistance) (-V- OBJradarATTRreadValue)))
(<-> (-P- OBJradaradRadar_OPAC_T^O^_^MYISGE^E^A^H^_^P^KLU^TOM^OA) (past (&&  (-P- OBJradarOPreadValue) (-P- CONTROLFLOW_41LXQISGE^E^A^H^_^P^KLU^TOM^OA)) 1))
(<-> (-P- OBJradaradRadar_OPAC_T^O^_^MYISGE^E^A^H^_^P^KLU^TOM^OA) (-P- OBJradarASSIGNMENT_T^O^_^MYISGE^E^A^H^_^P^KLU^TOM^OAfailureC))
(-> (-P- OBJradarASSIGNMENT_T^O^_^MYISGE^E^A^H^_^P^KLU^TOM^OAfailureC) ([=] (-V- OBJradarATTRfailureC) 0))
(!! (-P- OBJradaradRadar_END))

;;busSEMANTICS
;;Object operation definitions
(<-> (-P- OBJbusOPsendBrakeCommand) (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_End))
(<-> (-P- OBJbusOPsendSensorDistance) (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_End))
;;Attribute semantics

;;radarClockSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;brakeSSEMANTICS
;;Object operation definitions
(<-> (-P- OBJbrakeSOPnotifyBrake) (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_End))
;;Attribute semantics

;;brakeS STD brakingSMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6a97ca30 SEMANTICS

;;STATE braking
(-> (-P- BigBang) (!! (-P- $OBJbrakeS_STDbrakingSM_STATEbraking)))
(-> (-P- OBJbrakeS_STDbrakingSM_STATEbraking_ENTER) (yesterday (-P- OBJbrakeS_STDbrakingSM_TRANSITION__AP^E^GAOCE^EKTX^BQ^Z^TIL^H3^G)))
(-> (-P- OBJbrakeS_STDbrakingSM_STATEbraking_EXIT) (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G))
(-> (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEbraking) (!! (-P- OBJbrakeS_STDbrakingSM_STATEbraking_EXIT))) (next (-P- $OBJbrakeS_STDbrakingSM_STATEbraking)))
(-> (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEbraking) (-P- OBJbrakeS_STDbrakingSM_STATEbraking_EXIT)) (next (!! (-P- $OBJbrakeS_STDbrakingSM_STATEbraking))))
(-> (&&  (!! (-P- $OBJbrakeS_STDbrakingSM_STATEbraking)) (next (-P- OBJbrakeS_STDbrakingSM_STATEbraking_ENTER))) (next (-P- $OBJbrakeS_STDbrakingSM_STATEbraking)))
(-> (&&  (!! (-P- $OBJbrakeS_STDbrakingSM_STATEbraking)) (next (!! (-P- OBJbrakeS_STDbrakingSM_STATEbraking_ENTER)))) (next (!! (-P- $OBJbrakeS_STDbrakingSM_STATEbraking))))

;;STATE idle
(-> (-P- BigBang) (!! (-P- $OBJbrakeS_STDbrakingSM_STATEidle)))
(-> (-P- BigBang) (next (-P- OBJbrakeS_STDbrakingSM_STATEidle_ENTER)))
(-> (-P- OBJbrakeS_STDbrakingSM_STATEidle_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G))))
(-> (-P- OBJbrakeS_STDbrakingSM_STATEidle_EXIT) (-P- OBJbrakeS_STDbrakingSM_TRANSITION__AP^E^GAOCE^EKTX^BQ^Z^TIL^H3^G))
(-> (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEidle) (!! (-P- OBJbrakeS_STDbrakingSM_STATEidle_EXIT))) (next (-P- $OBJbrakeS_STDbrakingSM_STATEidle)))
(-> (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEidle) (-P- OBJbrakeS_STDbrakingSM_STATEidle_EXIT)) (next (!! (-P- $OBJbrakeS_STDbrakingSM_STATEidle))))
(-> (&&  (!! (-P- $OBJbrakeS_STDbrakingSM_STATEidle)) (next (-P- OBJbrakeS_STDbrakingSM_STATEidle_ENTER))) (next (-P- $OBJbrakeS_STDbrakingSM_STATEidle)))
(-> (&&  (!! (-P- $OBJbrakeS_STDbrakingSM_STATEidle)) (next (!! (-P- OBJbrakeS_STDbrakingSM_STATEidle_ENTER)))) (next (!! (-P- $OBJbrakeS_STDbrakingSM_STATEidle))))

;;TRANSITION @now - @braking.enter == 10
(-> (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- OBJbrakeS_STDbrakingSM_STATEbraking_EXIT) (next (-P- OBJbrakeS_STDbrakingSM_STATEidle_ENTER))))
(-> (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEbraking) (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER)) (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G))
(-> (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEbraking) (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER)))
(<-> (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEbraking) (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G_TIMECONDITION)) (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER))
(<-> (-P- OBJbrakeS_STDbrakingSM_TRANSITION_FD^SO^SAODE^EKTX^BQ^Z^TIL^H3^G_TIMECONDITION) (&&  (past (-P- OBJbrakeS_STDbrakingSM_STATEbraking_ENTER) 10) (lasted_ie (!! (-P- OBJbrakeS_STDbrakingSM_STATEbraking_ENTER)) 10)))

;;TRANSITION @notifyBrake.call
(-> (-P- OBJbrakeS_STDbrakingSM_TRANSITION__AP^E^GAOCE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- OBJbrakeS_STDbrakingSM_STATEidle_EXIT) (next (-P- OBJbrakeS_STDbrakingSM_STATEbraking_ENTER))))
(-> (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEidle) (-P- OBJbrakeS_STDbrakingSM_TRANSITION__AP^E^GAOCE^EKTX^BQ^Z^TIL^H3^G_TRIGGER)) (-P- OBJbrakeS_STDbrakingSM_TRANSITION__AP^E^GAOCE^EKTX^BQ^Z^TIL^H3^G))
(-> (-P- OBJbrakeS_STDbrakingSM_TRANSITION__AP^E^GAOCE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEidle) (-P- OBJbrakeS_STDbrakingSM_TRANSITION__AP^E^GAOCE^EKTX^BQ^Z^TIL^H3^G_TRIGGER)))
(<-> (&&  (-P- $OBJbrakeS_STDbrakingSM_STATEidle) (-P- OBJbrakeSOPnotifyBrake)) (-P- OBJbrakeS_STDbrakingSM_TRANSITION__AP^E^GAOCE^EKTX^BQ^Z^TIL^H3^G_TRIGGER))

;;ctrlSEMANTICS
;;Object operation definitions
(<-> (-P- OBJctrlOPnotifyDistance) (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_End))
;;Attribute semantics

;;ctrl STD controllerSMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6308385 SEMANTICS

;;STATE braking
(-> (-P- BigBang) (!! (-P- $OBJctrl_STDcontrollerSM_STATEbraking)))
(-> (-P- OBJctrl_STDcontrollerSM_STATEbraking_ENTER) (yesterday (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G)))
(-> (-P- OBJctrl_STDcontrollerSM_STATEbraking_EXIT) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEbraking) (!! (-P- OBJctrl_STDcontrollerSM_STATEbraking_EXIT))) (next (-P- $OBJctrl_STDcontrollerSM_STATEbraking)))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEbraking) (-P- OBJctrl_STDcontrollerSM_STATEbraking_EXIT)) (next (!! (-P- $OBJctrl_STDcontrollerSM_STATEbraking))))
(-> (&&  (!! (-P- $OBJctrl_STDcontrollerSM_STATEbraking)) (next (-P- OBJctrl_STDcontrollerSM_STATEbraking_ENTER))) (next (-P- $OBJctrl_STDcontrollerSM_STATEbraking)))
(-> (&&  (!! (-P- $OBJctrl_STDcontrollerSM_STATEbraking)) (next (!! (-P- OBJctrl_STDcontrollerSM_STATEbraking_ENTER)))) (next (!! (-P- $OBJctrl_STDcontrollerSM_STATEbraking))))

;;STATE warning
(-> (-P- BigBang) (!! (-P- $OBJctrl_STDcontrollerSM_STATEwarning)))
(-> (-P- OBJctrl_STDcontrollerSM_STATEwarning_ENTER) (yesterday (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G)))
(-> (-P- OBJctrl_STDcontrollerSM_STATEwarning_EXIT) (||  (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G)))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (!! (-P- OBJctrl_STDcontrollerSM_STATEwarning_EXIT))) (next (-P- $OBJctrl_STDcontrollerSM_STATEwarning)))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrl_STDcontrollerSM_STATEwarning_EXIT)) (next (!! (-P- $OBJctrl_STDcontrollerSM_STATEwarning))))
(-> (&&  (!! (-P- $OBJctrl_STDcontrollerSM_STATEwarning)) (next (-P- OBJctrl_STDcontrollerSM_STATEwarning_ENTER))) (next (-P- $OBJctrl_STDcontrollerSM_STATEwarning)))
(-> (&&  (!! (-P- $OBJctrl_STDcontrollerSM_STATEwarning)) (next (!! (-P- OBJctrl_STDcontrollerSM_STATEwarning_ENTER)))) (next (!! (-P- $OBJctrl_STDcontrollerSM_STATEwarning))))

;;STATE noAction
(-> (-P- BigBang) (!! (-P- $OBJctrl_STDcontrollerSM_STATEnoAction)))
(-> (-P- BigBang) (next (-P- OBJctrl_STDcontrollerSM_STATEnoAction_ENTER)))
(-> (-P- OBJctrl_STDcontrollerSM_STATEnoAction_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G))))
(-> (-P- OBJctrl_STDcontrollerSM_STATEnoAction_EXIT) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) (!! (-P- OBJctrl_STDcontrollerSM_STATEnoAction_EXIT))) (next (-P- $OBJctrl_STDcontrollerSM_STATEnoAction)))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) (-P- OBJctrl_STDcontrollerSM_STATEnoAction_EXIT)) (next (!! (-P- $OBJctrl_STDcontrollerSM_STATEnoAction))))
(-> (&&  (!! (-P- $OBJctrl_STDcontrollerSM_STATEnoAction)) (next (-P- OBJctrl_STDcontrollerSM_STATEnoAction_ENTER))) (next (-P- $OBJctrl_STDcontrollerSM_STATEnoAction)))
(-> (&&  (!! (-P- $OBJctrl_STDcontrollerSM_STATEnoAction)) (next (!! (-P- OBJctrl_STDcontrollerSM_STATEnoAction_ENTER)))) (next (!! (-P- $OBJctrl_STDcontrollerSM_STATEnoAction))))

;;TRANSITION @notifyDistance.call [ { receivedDistance < 2 } ]
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- OBJctrl_STDcontrollerSM_STATEnoAction_EXIT) (next (-P- OBJctrl_STDcontrollerSM_STATEwarning_ENTER))))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G_GUARD)) (||  (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G) (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G)))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G_GUARD)))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) ([<] (-V- OBJctrlOPnotifyDistancePARAMreceivedDistance) 2)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G_GUARD))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) (-P- OBJctrlOPnotifyDistance)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G) (!! (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G)))

;;TRANSITION @now - @braking.enter == 1
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- OBJctrl_STDcontrollerSM_STATEbraking_EXIT) (next (-P- OBJctrl_STDcontrollerSM_STATEnoAction_ENTER))))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEbraking) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- $OBJctrl_STDcontrollerSM_STATEbraking) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER)))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEbraking) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G_TIMECONDITION)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER))
(<-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^VYX8UAODE^EKTX^BQ^Z^TIL^H3^G_TIMECONDITION) (&&  (past (-P- OBJctrl_STDcontrollerSM_STATEbraking_ENTER) 1) (lasted_ie (!! (-P- OBJctrl_STDcontrollerSM_STATEbraking_ENTER)) 1)))

;;TRANSITION @notifyDistance.call [ { receivedDistance >= 2 } ]
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- OBJctrl_STDcontrollerSM_STATEwarning_EXIT) (next (-P- OBJctrl_STDcontrollerSM_STATEnoAction_ENTER))))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G_GUARD)) (||  (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G)))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G_GUARD)))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) ([>=] (-V- OBJctrlOPnotifyDistancePARAMreceivedDistance) 2)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G_GUARD))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrlOPnotifyDistance)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G) (!! (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G)))

;;TRANSITION @notifyDistance.call [ { receivedDistance >= 2 } ]
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER) (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G_GUARD)) (||  (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G) (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G)))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER) (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G_GUARD)))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) ([>=] (-V- OBJctrlOPnotifyDistancePARAMreceivedDistance) 2)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G_GUARD))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEnoAction) (-P- OBJctrlOPnotifyDistance)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_WC^V^W0AODE^EKTX^BQ^Z^TIL^H3^G) (!! (-P- OBJctrl_STDcontrollerSM_TRANSITION_^BR9^N^SAODE^EKTX^BQ^Z^TIL^H3^G)))

;;TRANSITION @notifyDistance.call [ { receivedDistance < 2 } && @now - @warning.enter > 20 ] / @brakeInterrupt.sig
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- OBJctrl_STDcontrollerSM_STATEwarning_EXIT) (next (-P- OBJctrl_STDcontrollerSM_STATEbraking_ENTER))))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_GUARD)) (||  (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G)))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G) (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_GUARD)))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (&&  ([<] (-V- OBJctrlOPnotifyDistancePARAMreceivedDistance) 2) (&&  (lasted_ii (!! (-P- OBJctrl_STDcontrollerSM_STATEwarning_ENTER)) 20) (somp (-P- OBJctrl_STDcontrollerSM_STATEwarning_ENTER))))) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_GUARD))
(<-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrlOPnotifyDistance)) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_TRIGGER))
(-> (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G)) (next (-P- OBJctrlbrakeInterrupt_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_CALL)))
(-> (-P- OBJctrlbrakeInterrupt_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G_CALL) (yesterday (&&  (-P- $OBJctrl_STDcontrollerSM_STATEwarning) (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G))))
(-> (-P- OBJctrl_STDcontrollerSM_TRANSITION_^Q^G^XUMAODE^EKTX^BQ^Z^TIL^H3^G) (!! (-P- OBJctrl_STDcontrollerSM_TRANSITION_^O^U^U^U0AODE^EKTX^BQ^Z^TIL^H3^G)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD sendSensorDistance 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- sendSensorDistance_Start) (-P- OBJradaradRadar_sendSensorDistance_START))
(<-> (-P- sendSensorDistance_End) (-P- OBJradaradRadar_sendSensorDistance_END))

;;STOP SEMANTICS
(!! (-P- sendSensorDistance_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- sendSensorDistance) (-P- sendSensorDistance_Start) (-P- sendSensorDistance_End) (-P- sendSensorDistance_Stop))
(<-> (-P- sendSensorDistance_Start) (-P- sendSensorDistance_radarRadar_Start))
(<-> (-P- sendSensorDistance_Start) (-P- sendSensorDistance_ctrlController_Start))
(<-> (-P- sendSensorDistance_Start) (-P- sendSensorDistance_busBus_Start))
(OrderCon (-P- sendSensorDistance_Start) (-P- sendSensorDistance_End) (-P- sendSensorDistance_Stop))
(OrderCon (-P- sendSensorDistance_radarRadar_Start) (-P- sendSensorDistance_radarRadar_End) (-P- sendSensorDistance_Stop))
(OrderCon (-P- sendSensorDistance_ctrlController_Start) (-P- sendSensorDistance_ctrlController_End) (-P- sendSensorDistance_Stop))
(OrderCon (-P- sendSensorDistance_busBus_Start) (-P- sendSensorDistance_busBus_End) (-P- sendSensorDistance_Stop))
(Borders (-P- sendSensorDistance_radarRadar) (-P- sendSensorDistance_radarRadar_Start) (-P- sendSensorDistance_radarRadar_End) (-P- sendSensorDistance_Stop))
(OrderCon (-P- sendSensorDistance_radarRadar_Start) (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- sendSensorDistance_Stop))
(-> (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- sendSensorDistance_radarRadar_End))
(-> (-P- sendSensorDistance_radarRadar_End) (||  (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- sendSensorDistance_radarRadar_Skip)))
(OrderGConMonoD (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- sendSensorDistance_radarRadar_End) (!! (-P- sendSensorDistance_radarRadar_Skip)) (-P- sendSensorDistance_Stop))
(Borders (-P- sendSensorDistance_ctrlController) (-P- sendSensorDistance_ctrlController_Start) (-P- sendSensorDistance_ctrlController_End) (-P- sendSensorDistance_Stop))
(OrderCon (-P- sendSensorDistance_ctrlController_Start) (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_Stop))
(-> (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_ctrlController_End))
(-> (-P- sendSensorDistance_ctrlController_End) (||  (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_ctrlController_Skip)))
(OrderGConMonoD (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_ctrlController_End) (!! (-P- sendSensorDistance_ctrlController_Skip)) (-P- sendSensorDistance_Stop))
(Borders (-P- EXOCC_^KOO^Y^WIFLE^EW^C^PJ7^M^Z^O9^F^N^W) (-P- EXOCC_^KOO^Y^WIFLE^EW^C^PJ7^M^Z^O9^F^N^W_Start) (-P- EXOCC_^KOO^Y^WIFLE^EW^C^PJ7^M^Z^O9^F^N^W_End) (-P- sendSensorDistance_Stop))
(<-> (-P- EXOCC_^KOO^Y^WIFLE^EW^C^PJ7^M^Z^O9^F^N^W_Start) (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_End))
(<-> (-P- EXOCC_^KOO^Y^WIFLE^EW^C^PJ7^M^Z^O9^F^N^W_End) (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start))
(Borders (-P- sendSensorDistance_busBus) (-P- sendSensorDistance_busBus_Start) (-P- sendSensorDistance_busBus_End) (-P- sendSensorDistance_Stop))
(OrderCon (-P- sendSensorDistance_busBus_Start) (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_Stop))
(-> (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- sendSensorDistance_busBus_End))
(-> (-P- sendSensorDistance_busBus_End) (||  (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- sendSensorDistance_busBus_Skip)))
(OrderGConMonoD (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- sendSensorDistance_busBus_End) (!! (-P- sendSensorDistance_busBus_Skip)) (-P- sendSensorDistance_Stop))
(OrderGCon (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (!! (-P- sendSensorDistance_busBus_Skip)) (-P- sendSensorDistance_Stop))
(-> (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (!! (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start)))
(-> (-P- sendSensorDistance_End) (&&  (||  (-P- sendSensorDistance_radarRadar_End) (-P- sendSensorDistance_ctrlController_End) (-P- sendSensorDistance_busBus_End)) (&&  (SomPIn_i (-P- sendSensorDistance_radarRadar_End) (-P- sendSensorDistance_Start)) (SomPIn_i (-P- sendSensorDistance_ctrlController_End) (-P- sendSensorDistance_Start)) (SomPIn_i (-P- sendSensorDistance_busBus_End) (-P- sendSensorDistance_Start)))))
(!! (-P- sendSensorDistance_radarRadar_Skip))
(!! (-P- sendSensorDistance_ctrlController_Skip))
(!! (-P- sendSensorDistance_busBus_Skip))
(Borders (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W) (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_Stop))
(OrderCon (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_Stop))(-> (-P- MESSAGEnotifyDistance$_^ZFB70IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) ([=] (-V- SDsendSensorDistancePARdistance) (-V- OBJctrlOPnotifyDistancePARAMreceivedDistance)))

(Borders (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W) (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_Stop))
(OrderCon (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) (-P- sendSensorDistance_Stop))(-> (-P- MESSAGEsendSensorDistance$_AEQ^N0IZ^UE^E^AM^I^Q1KE^VW^KR^W_End) ([=] (-V- SDsendSensorDistancePARdistance) (-V- OBJbusOPsendSensorDistancePARAMreceivedDistance)))


;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- sendSensorDistance_TIMECONSTRAINT_1) (&&  (-P- sendSensorDistance) (-> (-P- sendSensorDistance_End) (&&  (next (Lasttime_ii (-P- sendSensorDistance_Start) 2)) (!! (since_ii (!! (-P- sendSensorDistance_Start)) (-P- sendSensorDistance_Start)))))))
(-> (-P- sendSensorDistance) (-P- sendSensorDistance_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
(-> (&&  (-P- sendSensorDistance) (!! (-P- sendSensorDistance_Start))) ([=] (-V- SDsendSensorDistancePARdistance) (yesterday (-V- SDsendSensorDistancePARdistance))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD readValue 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- readValue_Start) (-P- IOD_readValue_START))
(<-> (-P- readValue_End) (-P- IOD_readValue_END))

;;STOP SEMANTICS
(!! (-P- readValue_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- readValue) (-P- readValue_Start) (-P- readValue_End) (-P- readValue_Stop))
(<-> (-P- readValue_Start) (-P- readValue_radarRadar_Start))
(OrderCon (-P- readValue_Start) (-P- readValue_End) (-P- readValue_Stop))
(OrderCon (-P- readValue_radarRadar_Start) (-P- readValue_radarRadar_End) (-P- readValue_Stop))
(Borders (-P- readValue_radarRadar) (-P- readValue_radarRadar_Start) (-P- readValue_radarRadar_End) (-P- readValue_Stop))
(OrderCon (-P- readValue_radarRadar_Start) (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- readValue_Stop))
(-> (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_End) (-P- readValue_radarRadar_End))
(-> (-P- readValue_radarRadar_End) (||  (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_End) (-P- readValue_radarRadar_Skip)))
(OrderGConMonoD (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_End) (-P- readValue_radarRadar_End) (!! (-P- readValue_radarRadar_Skip)) (-P- readValue_Stop))
(OrderGCon (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_End) (!! (-P- readValue_radarRadar_Skip)) (-P- readValue_Stop))
(-> (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_Start) (!! (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_End)))
(-> (-P- readValue_End) (&&  (-P- readValue_radarRadar_End) (SomPIn_i (-P- readValue_radarRadar_End) (-P- readValue_Start))))
(!! (-P- readValue_radarRadar_Skip))
(Borders (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W) (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_End) (-P- readValue_Stop))
(OrderCon (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_End) (-P- readValue_Stop))(<-> (-P- MESSAGEm1$_^VUN5EIY^GE^E^AM^I^Q1KE^VW^KR^W_Start) (-P- radarClockTICK))


;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD sendBrakeCommand 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS
(<-> (-P- sendBrakeCommand_Start) (-P- IOD_sendBrakeCommand_START))
(<-> (-P- sendBrakeCommand_End) (-P- IOD_sendBrakeCommand_END))

;;STOP SEMANTICS
(!! (-P- sendBrakeCommand_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- sendBrakeCommand) (-P- sendBrakeCommand_Start) (-P- sendBrakeCommand_End) (-P- sendBrakeCommand_Stop))
(<-> (-P- sendBrakeCommand_Start) (-P- sendBrakeCommand_ctrlController_Start))
(<-> (-P- sendBrakeCommand_Start) (-P- sendBrakeCommand_busBus_Start))
(<-> (-P- sendBrakeCommand_Start) (-P- sendBrakeCommand_brakeSBrakingSystem_Start))
(OrderCon (-P- sendBrakeCommand_Start) (-P- sendBrakeCommand_End) (-P- sendBrakeCommand_Stop))
(OrderCon (-P- sendBrakeCommand_ctrlController_Start) (-P- sendBrakeCommand_ctrlController_End) (-P- sendBrakeCommand_Stop))
(OrderCon (-P- sendBrakeCommand_busBus_Start) (-P- sendBrakeCommand_busBus_End) (-P- sendBrakeCommand_Stop))
(OrderCon (-P- sendBrakeCommand_brakeSBrakingSystem_Start) (-P- sendBrakeCommand_brakeSBrakingSystem_End) (-P- sendBrakeCommand_Stop))
(Borders (-P- sendBrakeCommand_ctrlController) (-P- sendBrakeCommand_ctrlController_Start) (-P- sendBrakeCommand_ctrlController_End) (-P- sendBrakeCommand_Stop))
(OrderCon (-P- sendBrakeCommand_ctrlController_Start) (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- sendBrakeCommand_Stop))
(-> (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- sendBrakeCommand_ctrlController_End))
(-> (-P- sendBrakeCommand_ctrlController_End) (||  (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- sendBrakeCommand_ctrlController_Skip)))
(OrderGConMonoD (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- sendBrakeCommand_ctrlController_End) (!! (-P- sendBrakeCommand_ctrlController_Skip)) (-P- sendBrakeCommand_Stop))
(Borders (-P- EXOCC_81I^H8IFJE^EW^C^PJ7^M^Z^O9^F^N^W) (-P- EXOCC_81I^H8IFJE^EW^C^PJ7^M^Z^O9^F^N^W_Start) (-P- EXOCC_81I^H8IFJE^EW^C^PJ7^M^Z^O9^F^N^W_End) (-P- sendBrakeCommand_Stop))
(<-> (-P- EXOCC_81I^H8IFJE^EW^C^PJ7^M^Z^O9^F^N^W_Start) (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_End))
(<-> (-P- EXOCC_81I^H8IFJE^EW^C^PJ7^M^Z^O9^F^N^W_End) (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_Start))
(Borders (-P- sendBrakeCommand_busBus) (-P- sendBrakeCommand_busBus_Start) (-P- sendBrakeCommand_busBus_End) (-P- sendBrakeCommand_Stop))
(OrderCon (-P- sendBrakeCommand_busBus_Start) (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_Stop))
(-> (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- sendBrakeCommand_busBus_End))
(-> (-P- sendBrakeCommand_busBus_End) (||  (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- sendBrakeCommand_busBus_Skip)))
(OrderGConMonoD (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- sendBrakeCommand_busBus_End) (!! (-P- sendBrakeCommand_busBus_Skip)) (-P- sendBrakeCommand_Stop))
(OrderGCon (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (!! (-P- sendBrakeCommand_busBus_Skip)) (-P- sendBrakeCommand_Stop))
(-> (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_End) (!! (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_Start)))
(Borders (-P- sendBrakeCommand_brakeSBrakingSystem) (-P- sendBrakeCommand_brakeSBrakingSystem_Start) (-P- sendBrakeCommand_brakeSBrakingSystem_End) (-P- sendBrakeCommand_Stop))
(OrderCon (-P- sendBrakeCommand_brakeSBrakingSystem_Start) (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_Stop))
(-> (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_brakeSBrakingSystem_End))
(-> (-P- sendBrakeCommand_brakeSBrakingSystem_End) (||  (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_brakeSBrakingSystem_Skip)))
(OrderGConMonoD (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_brakeSBrakingSystem_End) (!! (-P- sendBrakeCommand_brakeSBrakingSystem_Skip)) (-P- sendBrakeCommand_Stop))
(-> (-P- sendBrakeCommand_End) (&&  (||  (-P- sendBrakeCommand_ctrlController_End) (-P- sendBrakeCommand_busBus_End) (-P- sendBrakeCommand_brakeSBrakingSystem_End)) (&&  (SomPIn_i (-P- sendBrakeCommand_ctrlController_End) (-P- sendBrakeCommand_Start)) (SomPIn_i (-P- sendBrakeCommand_busBus_End) (-P- sendBrakeCommand_Start)) (SomPIn_i (-P- sendBrakeCommand_brakeSBrakingSystem_End) (-P- sendBrakeCommand_Start)))))
(!! (-P- sendBrakeCommand_ctrlController_Skip))
(!! (-P- sendBrakeCommand_busBus_Skip))
(!! (-P- sendBrakeCommand_brakeSBrakingSystem_Skip))
(Borders (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G) (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_Stop))
(OrderCon (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- MESSAGEnotifyBrake$_I36^J^SAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_Stop))
(Borders (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G) (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_Stop))
(OrderCon (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_Start) (-P- MESSAGEsendBrakeCommand$_F^OV^PUAOCE^EKTX^BQ^Z^TIL^H3^G_End) (-P- sendBrakeCommand_Stop))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- sendBrakeCommand_TIMECONSTRAINT_1) (&&  (-P- sendBrakeCommand) (-> (-P- sendBrakeCommand_End) (&&  (next (Lasttime_ii (-P- sendBrakeCommand_Start) 3)) (!! (since_ii (!! (-P- sendBrakeCommand_Start)) (-P- sendBrakeCommand_Start)))))))
(-> (-P- sendBrakeCommand) (-P- sendBrakeCommand_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IODs 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;IOD IOD
(-> (-P- IOD_^PN^S^F^KAN_E^EKTX^BQ^Z^TIL^H3^G_START) (futr (!! (somf (-P- IOD_^PN^S^F^KAN_E^EKTX^BQ^Z^TIL^H3^G_START))) 1))
(<-> (-P- BigBang) (-P- IOD_^PN^S^F^KAN_E^EKTX^BQ^Z^TIL^H3^G_START))
(<-> (-P- IOD_sendBrakeCommand_START) (past (-P- brakeInterrupt) 1))
(<-> (-P- IOD_readValue_START) (past (||  (-P- IOD_^PN^S^F^KAN_E^EKTX^BQ^Z^TIL^H3^G_START) (-P- IOD_readValue_END)) 1))
(!! (-P- IOD_^PN^S^F^KAN_E^EKTX^BQ^Z^TIL^H3^G_END))


)) ;;END AX1 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PROPERTIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar Q1 (alw (-> (lasted (&&  ([<] (-V- SDsendSensorDistancePARdistance) 2) (!! (-P- failure))) 52) (withinp (-P- $OBJbrakeS_STDbrakingSM_STATEbraking) 52))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- BigBang) (alwf_e (!! (-P- BigBang)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;radar INITIALIZATION SEMANTICS
([=] (-V- OBJradarATTRfailureC) 0)
;;bus INITIALIZATION SEMANTICS

;;radarClock INITIALIZATION SEMANTICS

;;brakeS INITIALIZATION SEMANTICS

;;ctrl INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) (!!(yesterday Q1)) initAx))


(ae2bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )