;  Model statistics:
;  54	:Number of UML elements
;  2	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  2	:Number of states
;  2	:Number of transitions
;  2	:Number of lifelines in sequence diagrams
;  3	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  0	:Number of time contraints in sequence diagrams
;  0	:Number of clocks
;  0	:Number of nodes in interaction overview diagrams
;  2	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'ae2bvzot)
(use-package :trio-utils)
(defvar TSPACE 20)
;; Variables:
(define-tvar OBJobj1ATTRat1 *int*)
(define-tvar OBJobj2ATTRat2 *int*)
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

;;SIGNALS SEMANTICS

;;obj1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJobj1OPop1) (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End))
;;Attribute semantics
(-> (!! (||  (-P- OBJobj1ASSIGNMENT_DYNGA^CYCE^E^AUA_R^LI^L6^ZHAat1) (-P- OBJobj1ASSIGNMENT_3^CC^D^K^CUSE^E^AZHZ_K^TWZ^TCQat1))) ([=] (-V- OBJobj1ATTRat1) (yesterday (-V- OBJobj1ATTRat1))))

;;obj2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJobj2OPop2) (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_End))
(<-> (-P- OBJobj2OPop2reply) (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_End))
;;Attribute semantics
([=] (-V- OBJobj2ATTRat2) (yesterday (-V- OBJobj2ATTRat2)))

;;obj2 STD StateMachine1org.correttouml.uml.diagrams.statediagram.StateDiagram@5a4aba15 SEMANTICS

;;STATE State0
(-> (-P- BigBang) (!! (-P- $OBJobj2_STDStateMachine1_STATEState0)))
(-> (-P- BigBang) (next (-P- OBJobj2_STDStateMachine1_STATEState0_ENTER)))
(-> (-P- OBJobj2_STDStateMachine1_STATEState0_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJobj2_STDStateMachine1_STATEState0_EXIT) (-P- OBJobj2_STDStateMachine1_TRANSITION_^R^LET4MX0E^E^AUA_R^LI^L6^ZHA))
(-> (&&  (-P- $OBJobj2_STDStateMachine1_STATEState0) (!! (-P- OBJobj2_STDStateMachine1_STATEState0_EXIT))) (next (-P- $OBJobj2_STDStateMachine1_STATEState0)))
(-> (&&  (-P- $OBJobj2_STDStateMachine1_STATEState0) (-P- OBJobj2_STDStateMachine1_STATEState0_EXIT)) (next (!! (-P- $OBJobj2_STDStateMachine1_STATEState0))))
(-> (&&  (!! (-P- $OBJobj2_STDStateMachine1_STATEState0)) (next (-P- OBJobj2_STDStateMachine1_STATEState0_ENTER))) (next (-P- $OBJobj2_STDStateMachine1_STATEState0)))
(-> (&&  (!! (-P- $OBJobj2_STDStateMachine1_STATEState0)) (next (!! (-P- OBJobj2_STDStateMachine1_STATEState0_ENTER)))) (next (!! (-P- $OBJobj2_STDStateMachine1_STATEState0))))

;;STATE State1
(-> (-P- BigBang) (!! (-P- $OBJobj2_STDStateMachine1_STATEState1)))
(-> (-P- OBJobj2_STDStateMachine1_STATEState1_ENTER) (yesterday (-P- OBJobj2_STDStateMachine1_TRANSITION_^R^LET4MX0E^E^AUA_R^LI^L6^ZHA)))
(!! (-P- OBJobj2_STDStateMachine1_STATEState1_EXIT))
(-> (&&  (-P- $OBJobj2_STDStateMachine1_STATEState1) (!! (-P- OBJobj2_STDStateMachine1_STATEState1_EXIT))) (next (-P- $OBJobj2_STDStateMachine1_STATEState1)))
(-> (&&  (-P- $OBJobj2_STDStateMachine1_STATEState1) (-P- OBJobj2_STDStateMachine1_STATEState1_EXIT)) (next (!! (-P- $OBJobj2_STDStateMachine1_STATEState1))))
(-> (&&  (!! (-P- $OBJobj2_STDStateMachine1_STATEState1)) (next (-P- OBJobj2_STDStateMachine1_STATEState1_ENTER))) (next (-P- $OBJobj2_STDStateMachine1_STATEState1)))
(-> (&&  (!! (-P- $OBJobj2_STDStateMachine1_STATEState1)) (next (!! (-P- OBJobj2_STDStateMachine1_STATEState1_ENTER)))) (next (!! (-P- $OBJobj2_STDStateMachine1_STATEState1))))

;;TRANSITION op2.reply
(-> (-P- OBJobj2_STDStateMachine1_TRANSITION_^R^LET4MX0E^E^AUA_R^LI^L6^ZHA) (&&  (-P- OBJobj2_STDStateMachine1_STATEState0_EXIT) (next (-P- OBJobj2_STDStateMachine1_STATEState1_ENTER))))
(-> (&&  (-P- $OBJobj2_STDStateMachine1_STATEState0) (-P- OBJobj2_STDStateMachine1_TRANSITION_^R^LET4MX0E^E^AUA_R^LI^L6^ZHA_TRIGGER)) (-P- OBJobj2_STDStateMachine1_TRANSITION_^R^LET4MX0E^E^AUA_R^LI^L6^ZHA))
(-> (-P- OBJobj2_STDStateMachine1_TRANSITION_^R^LET4MX0E^E^AUA_R^LI^L6^ZHA) (&&  (-P- $OBJobj2_STDStateMachine1_STATEState0) (-P- OBJobj2_STDStateMachine1_TRANSITION_^R^LET4MX0E^E^AUA_R^LI^L6^ZHA_TRIGGER)))
(<-> (&&  (-P- $OBJobj2_STDStateMachine1_STATEState0) (-P- OBJobj2OPop2reply)) (-P- OBJobj2_STDStateMachine1_TRANSITION_^R^LET4MX0E^E^AUA_R^LI^L6^ZHA_TRIGGER))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD SD1 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SD CONNECTIONS SEMANTICS

;;STOP SEMANTICS
(!! (-P- SD1_Stop))

;;FRAGMENTS SEMANTICS
(Borders (-P- SD1) (-P- SD1_Start) (-P- SD1_End) (-P- SD1_Stop))
(<-> (-P- SD1_Start) (-P- SD1_l1_Start))
(<-> (-P- SD1_Start) (-P- SD1_l2_Start))
(OrderCon (-P- SD1_Start) (-P- SD1_End) (-P- SD1_Stop))
(OrderCon (-P- SD1_l1_Start) (-P- SD1_l1_End) (-P- SD1_Stop))
(OrderCon (-P- SD1_l2_Start) (-P- SD1_l2_End) (-P- SD1_Stop))
(Borders (-P- SD1_l1) (-P- SD1_l1_Start) (-P- SD1_l1_End) (-P- SD1_Stop))
(OrderCon (-P- SD1_l1_Start) (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_Start) (-P- SD1_Stop))
(-> (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End) (-P- SD1_l1_End))
(-> (-P- SD1_l1_End) (||  (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End) (-P- SD1_l1_Skip)))
(OrderGConMonoD (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End) (-P- SD1_l1_End) (!! (-P- SD1_l1_Skip)) (-P- SD1_Stop))
(OrderGCon (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_Start) (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_End) (!! (-P- SD1_l1_Skip)) (-P- SD1_Stop))
(-> (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_Start) (!! (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_End)))
(-> (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_End) (!! (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_Start)))
(-> (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_Start) (!! (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End)))
(OrderGCon (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_End) (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_Start) (!! (-P- SD1_l1_Skip)) (-P- SD1_Stop))
(OrderGCon (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_Start) (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End) (!! (-P- SD1_l1_Skip)) (-P- SD1_Stop))
(Borders (-P- EXOCC_^YGFF^GMUSE^E^AZHZ_K^TWZ^TCQ) (-P- EXOCC_^YGFF^GMUSE^E^AZHZ_K^TWZ^TCQ_Start) (-P- EXOCC_^YGFF^GMUSE^E^AZHZ_K^TWZ^TCQ_End) (-P- SD1_Stop))
(<-> (-P- EXOCC_^YGFF^GMUSE^E^AZHZ_K^TWZ^TCQ_Start) (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_End))
(<-> (-P- EXOCC_^YGFF^GMUSE^E^AZHZ_K^TWZ^TCQ_End) (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_Start))
(Borders (-P- SD1_l2) (-P- SD1_l2_Start) (-P- SD1_l2_End) (-P- SD1_Stop))
(OrderCon (-P- SD1_l2_Start) (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_End) (-P- SD1_Stop))
(-> (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_Start) (-P- SD1_l2_End))
(-> (-P- SD1_l2_End) (||  (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_Start) (-P- SD1_l2_Skip)))
(OrderGConMonoD (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_Start) (-P- SD1_l2_End) (!! (-P- SD1_l2_Skip)) (-P- SD1_Stop))
(OrderGCon (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_End) (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_Start) (!! (-P- SD1_l2_Skip)) (-P- SD1_Stop))
(-> (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_End) (!! (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_Start)))
(-> (-P- SD1_End) (&&  (||  (-P- SD1_l1_End) (-P- SD1_l2_End)) (&&  (SomPIn_i (-P- SD1_l1_End) (-P- SD1_Start)) (SomPIn_i (-P- SD1_l2_End) (-P- SD1_Start)))))
(!! (-P- SD1_l1_Skip))
(!! (-P- SD1_l2_Skip))
(Borders (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA) (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_Start) (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End) (-P- SD1_Stop))
(OrderCon (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_Start) (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End) (-P- SD1_Stop))
(<-> (-P- MESSAGEat1=99$_DYM^E8MYCE^E^AUA_R^LI^L6^ZHA_End) (-P- OBJobj1ASSIGNMENT_DYNGA^CYCE^E^AUA_R^LI^L6^ZHAat1))
(-> (-P- OBJobj1ASSIGNMENT_DYNGA^CYCE^E^AUA_R^LI^L6^ZHAat1) ([=] (-V- OBJobj1ATTRat1) 99))


(Borders (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ) (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_Start) (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_End) (-P- SD1_Stop))
(OrderCon (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_Start) (-P- MESSAGEm1$_^MFLU4MURE^E^AZHZ_K^TWZ^TCQ_End) (-P- SD1_Stop))

(Borders (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ) (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_Start) (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_End) (-P- SD1_Stop))
(OrderCon (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_Start) (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_End) (-P- SD1_Stop))
(<-> (-P- MESSAGEat1=Result$_3^CB2^GMUSE^E^AZHZ_K^TWZ^TCQ_End) (-P- OBJobj1ASSIGNMENT_3^CC^D^K^CUSE^E^AZHZ_K^TWZ^TCQat1))
(-> (-P- OBJobj1ASSIGNMENT_3^CC^D^K^CUSE^E^AZHZ_K^TWZ^TCQat1) ([=] (-V- OBJobj1ATTRat1) (-V- OBJobj1ATTRat1)))



;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IODs 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


)) ;;END AX1 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- BigBang) (alwf_e (!! (-P- BigBang)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;obj1 INITIALIZATION SEMANTICS

;;obj2 INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) initAx))


(ae2bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )