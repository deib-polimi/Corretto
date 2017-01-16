;  Model statistics:
;  78	:Number of UML elements
;  6	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  36	:Number of states
;  48	:Number of transitions
;  0	:Number of lifelines in sequence diagrams
;  0	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  0	:Number of time contraints in sequence diagrams
;  0	:Number of clocks
;  0	:Number of nodes in interaction overview diagrams
;  8	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'ae2bvzot)
(use-package :trio-utils)
(defvar TSPACE 75)
;; Variables:
(define-tvar OBJproc_0ATTRpid *int*)
(define-tvar ATTRcounter *int*)
(define-tvar OBJproc_1ATTRpid *int*)
(define-tvar OBJproc_5ATTRpid *int*)
(define-tvar OBJproc_3ATTRpid *int*)
(define-tvar OBJproc_4ATTRpid *int*)
(define-tvar ATTRid *int*)
(define-tvar OBJproc_2ATTRpid *int*)
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

;;proc_5SEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJproc_5ATTRpid) (yesterday (-V- OBJproc_5ATTRpid)))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))) ([=] (-V- ATTRcounter) (yesterday (-V- ATTRcounter))))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))) ([=] (-V- ATTRid) (yesterday (-V- ATTRid))))

;;proc_5 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6bc77f62 SEMANTICS

;;STATE EXIT
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATEEXIT)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEEXIT_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEEXIT_EXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEEXIT) (!! (-P- OBJproc_5_STDProcess_SM_STATEEXIT_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEEXIT)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEEXIT) (-P- OBJproc_5_STDProcess_SM_STATEEXIT_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEEXIT))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEEXIT)) (next (-P- OBJproc_5_STDProcess_SM_STATEEXIT_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEEXIT)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEEXIT)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEEXIT_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEEXIT))))

;;STATE REQ
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATEREQ)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEREQ_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEREQ_EXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEREQ) (!! (-P- OBJproc_5_STDProcess_SM_STATEREQ_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEREQ)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEREQ) (-P- OBJproc_5_STDProcess_SM_STATEREQ_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEREQ))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEREQ)) (next (-P- OBJproc_5_STDProcess_SM_STATEREQ_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEREQ)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEREQ)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEREQ_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEREQ))))
(-> (-P- $OBJproc_5_STDProcess_SM_STATEREQ) (withinp_ii (-P- OBJproc_5_STDProcess_SM_STATEREQ_ENTER) 3))

;;STATE UPDATED
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_EXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED) (!! (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED) (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED)) (next (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED))))
(-> (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED) (withinp_ii (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_ENTER) 4))

;;STATE WAIT
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATEWAIT)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEWAIT_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEWAIT_EXIT) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWAIT) (!! (-P- OBJproc_5_STDProcess_SM_STATEWAIT_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEWAIT)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWAIT) (-P- OBJproc_5_STDProcess_SM_STATEWAIT_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEWAIT))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEWAIT)) (next (-P- OBJproc_5_STDProcess_SM_STATEWAIT_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEWAIT)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEWAIT)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEWAIT_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEWAIT))))

;;STATE FISHERP
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP)))
(-> (-P- BigBang) (next (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_ENTER)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W))))
(-> (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_EXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP) (!! (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP) (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP)) (next (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP))))

;;STATE CS
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATECS)))
(-> (-P- OBJproc_5_STDProcess_SM_STATECS_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_5_STDProcess_SM_STATECS_EXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATECS) (!! (-P- OBJproc_5_STDProcess_SM_STATECS_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATECS)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATECS) (-P- OBJproc_5_STDProcess_SM_STATECS_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATECS))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATECS)) (next (-P- OBJproc_5_STDProcess_SM_STATECS_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATECS)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATECS)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATECS_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATECS))))

;;TRANSITION @takeLock.call [{id==0--1}]
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEREQ_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP) ([=] (-V- ATTRid) ([-] 0 1))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEFISHERP) (-P- OBJproc_5OPtakeLock)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION /id=0-1, counter=<P>counter-1
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_5_STDProcess_SM_STATEEXIT_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_5_STDProcess_SM_STATEEXIT))
(<-> (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEEXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) ([-] 0 1)))

(<-> (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEEXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION @goWait.call[@now - @UPDATED.enter >= 4]
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEWAIT_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED) (&&  (lasted_ie (!! (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_ENTER)) 4) (somp (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_ENTER)))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEUPDATED) (-P- OBJproc_5OPgoWait)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION [{id==pid}]
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_5_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATECS_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWAIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWAIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWAIT) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;TRANSITION /counter=<P>counter+1
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_5_STDProcess_SM_STATECS_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEEXIT_ENTER))))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_5_STDProcess_SM_STATECS))
(<-> (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATECS) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=pid
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_5_STDProcess_SM_STATEREQ_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEUPDATED_ENTER))))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_5_STDProcess_SM_STATEREQ))
(<-> (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEREQ) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (||  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)))


;;TRANSITION [{id!=pid}]
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_5_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWAIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWAIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWAIT) (!! ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;proc_4SEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJproc_4ATTRpid) (yesterday (-V- OBJproc_4ATTRpid)))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))) ([=] (-V- ATTRcounter) (yesterday (-V- ATTRcounter))))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))) ([=] (-V- ATTRid) (yesterday (-V- ATTRid))))

;;proc_4 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6bc77f62 SEMANTICS

;;STATE EXIT
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATEEXIT)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEEXIT_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEEXIT_EXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEEXIT) (!! (-P- OBJproc_4_STDProcess_SM_STATEEXIT_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEEXIT)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEEXIT) (-P- OBJproc_4_STDProcess_SM_STATEEXIT_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEEXIT))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEEXIT)) (next (-P- OBJproc_4_STDProcess_SM_STATEEXIT_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEEXIT)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEEXIT)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEEXIT_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEEXIT))))

;;STATE REQ
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATEREQ)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEREQ_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEREQ_EXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEREQ) (!! (-P- OBJproc_4_STDProcess_SM_STATEREQ_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEREQ)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEREQ) (-P- OBJproc_4_STDProcess_SM_STATEREQ_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEREQ))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEREQ)) (next (-P- OBJproc_4_STDProcess_SM_STATEREQ_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEREQ)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEREQ)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEREQ_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEREQ))))
(-> (-P- $OBJproc_4_STDProcess_SM_STATEREQ) (withinp_ii (-P- OBJproc_4_STDProcess_SM_STATEREQ_ENTER) 3))

;;STATE UPDATED
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_EXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED) (!! (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED) (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED)) (next (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED))))
(-> (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED) (withinp_ii (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_ENTER) 4))

;;STATE WAIT
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATEWAIT)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEWAIT_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEWAIT_EXIT) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWAIT) (!! (-P- OBJproc_4_STDProcess_SM_STATEWAIT_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEWAIT)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWAIT) (-P- OBJproc_4_STDProcess_SM_STATEWAIT_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEWAIT))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEWAIT)) (next (-P- OBJproc_4_STDProcess_SM_STATEWAIT_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEWAIT)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEWAIT)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEWAIT_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEWAIT))))

;;STATE FISHERP
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP)))
(-> (-P- BigBang) (next (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_ENTER)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W))))
(-> (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_EXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP) (!! (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP) (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP)) (next (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP))))

;;STATE CS
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATECS)))
(-> (-P- OBJproc_4_STDProcess_SM_STATECS_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_4_STDProcess_SM_STATECS_EXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATECS) (!! (-P- OBJproc_4_STDProcess_SM_STATECS_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATECS)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATECS) (-P- OBJproc_4_STDProcess_SM_STATECS_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATECS))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATECS)) (next (-P- OBJproc_4_STDProcess_SM_STATECS_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATECS)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATECS)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATECS_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATECS))))

;;TRANSITION @takeLock.call [{id==0--1}]
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEREQ_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP) ([=] (-V- ATTRid) ([-] 0 1))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEFISHERP) (-P- OBJproc_4OPtakeLock)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION /id=0-1, counter=<P>counter-1
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_4_STDProcess_SM_STATEEXIT_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_4_STDProcess_SM_STATEEXIT))
(<-> (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEEXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (||  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) ([-] 0 1)))

(<-> (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEEXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION @goWait.call[@now - @UPDATED.enter >= 4]
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEWAIT_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED) (&&  (lasted_ie (!! (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_ENTER)) 4) (somp (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_ENTER)))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEUPDATED) (-P- OBJproc_4OPgoWait)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION [{id==pid}]
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_4_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATECS_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWAIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWAIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWAIT) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;TRANSITION /counter=<P>counter+1
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_4_STDProcess_SM_STATECS_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEEXIT_ENTER))))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_4_STDProcess_SM_STATECS))
(<-> (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATECS) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=pid
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_4_STDProcess_SM_STATEREQ_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEUPDATED_ENTER))))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_4_STDProcess_SM_STATEREQ))
(<-> (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEREQ) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (||  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)))


;;TRANSITION [{id!=pid}]
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_4_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWAIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWAIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWAIT) (!! ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;proc_2SEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJproc_2ATTRpid) (yesterday (-V- OBJproc_2ATTRpid)))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))) ([=] (-V- ATTRcounter) (yesterday (-V- ATTRcounter))))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))) ([=] (-V- ATTRid) (yesterday (-V- ATTRid))))

;;proc_2 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6bc77f62 SEMANTICS

;;STATE EXIT
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATEEXIT)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEEXIT_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEEXIT_EXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEEXIT) (!! (-P- OBJproc_2_STDProcess_SM_STATEEXIT_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEEXIT)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEEXIT) (-P- OBJproc_2_STDProcess_SM_STATEEXIT_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEEXIT))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEEXIT)) (next (-P- OBJproc_2_STDProcess_SM_STATEEXIT_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEEXIT)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEEXIT)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEEXIT_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEEXIT))))

;;STATE REQ
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATEREQ)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEREQ_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEREQ_EXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEREQ) (!! (-P- OBJproc_2_STDProcess_SM_STATEREQ_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEREQ)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEREQ) (-P- OBJproc_2_STDProcess_SM_STATEREQ_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEREQ))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEREQ)) (next (-P- OBJproc_2_STDProcess_SM_STATEREQ_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEREQ)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEREQ)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEREQ_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEREQ))))
(-> (-P- $OBJproc_2_STDProcess_SM_STATEREQ) (withinp_ii (-P- OBJproc_2_STDProcess_SM_STATEREQ_ENTER) 3))

;;STATE UPDATED
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_EXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED) (!! (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED) (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED)) (next (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED))))
(-> (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED) (withinp_ii (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_ENTER) 4))

;;STATE WAIT
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATEWAIT)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEWAIT_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEWAIT_EXIT) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWAIT) (!! (-P- OBJproc_2_STDProcess_SM_STATEWAIT_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEWAIT)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWAIT) (-P- OBJproc_2_STDProcess_SM_STATEWAIT_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEWAIT))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEWAIT)) (next (-P- OBJproc_2_STDProcess_SM_STATEWAIT_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEWAIT)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEWAIT)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEWAIT_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEWAIT))))

;;STATE FISHERP
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP)))
(-> (-P- BigBang) (next (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_ENTER)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W))))
(-> (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_EXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP) (!! (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP) (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP)) (next (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP))))

;;STATE CS
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATECS)))
(-> (-P- OBJproc_2_STDProcess_SM_STATECS_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_2_STDProcess_SM_STATECS_EXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATECS) (!! (-P- OBJproc_2_STDProcess_SM_STATECS_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATECS)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATECS) (-P- OBJproc_2_STDProcess_SM_STATECS_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATECS))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATECS)) (next (-P- OBJproc_2_STDProcess_SM_STATECS_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATECS)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATECS)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATECS_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATECS))))

;;TRANSITION @takeLock.call [{id==0--1}]
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEREQ_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP) ([=] (-V- ATTRid) ([-] 0 1))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEFISHERP) (-P- OBJproc_2OPtakeLock)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION /id=0-1, counter=<P>counter-1
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_2_STDProcess_SM_STATEEXIT_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_2_STDProcess_SM_STATEEXIT))
(<-> (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEEXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (||  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) ([-] 0 1)))

(<-> (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEEXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION @goWait.call[@now - @UPDATED.enter >= 4]
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEWAIT_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED) (&&  (lasted_ie (!! (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_ENTER)) 4) (somp (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_ENTER)))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEUPDATED) (-P- OBJproc_2OPgoWait)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION [{id==pid}]
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_2_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATECS_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWAIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWAIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWAIT) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;TRANSITION /counter=<P>counter+1
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_2_STDProcess_SM_STATECS_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEEXIT_ENTER))))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_2_STDProcess_SM_STATECS))
(<-> (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATECS) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=pid
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_2_STDProcess_SM_STATEREQ_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEUPDATED_ENTER))))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_2_STDProcess_SM_STATEREQ))
(<-> (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEREQ) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (||  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)))


;;TRANSITION [{id!=pid}]
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_2_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWAIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWAIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWAIT) (!! ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;proc_0SEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJproc_0ATTRpid) (yesterday (-V- OBJproc_0ATTRpid)))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))) ([=] (-V- ATTRcounter) (yesterday (-V- ATTRcounter))))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))) ([=] (-V- ATTRid) (yesterday (-V- ATTRid))))

;;proc_0 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6bc77f62 SEMANTICS

;;STATE EXIT
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEEXIT_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEEXIT_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEEXIT) (!! (-P- OBJproc_0_STDProcess_SM_STATEEXIT_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEEXIT) (-P- OBJproc_0_STDProcess_SM_STATEEXIT_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)) (next (-P- OBJproc_0_STDProcess_SM_STATEEXIT_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEEXIT_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT))))

;;STATE REQ
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEREQ_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEREQ) (!! (-P- OBJproc_0_STDProcess_SM_STATEREQ_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEREQ)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEREQ) (-P- OBJproc_0_STDProcess_SM_STATEREQ_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ)) (next (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEREQ)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ))))
(-> (-P- $OBJproc_0_STDProcess_SM_STATEREQ) (withinp_ii (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER) 3))

;;STATE UPDATED
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (!! (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)) (next (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED))))
(-> (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (withinp_ii (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER) 4))

;;STATE WAIT
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEWAIT_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (!! (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)) (next (-P- OBJproc_0_STDProcess_SM_STATEWAIT_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEWAIT_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT))))

;;STATE FISHERP
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)))
(-> (-P- BigBang) (next (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W))))
(-> (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (!! (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)) (next (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP))))

;;STATE CS
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATECS)))
(-> (-P- OBJproc_0_STDProcess_SM_STATECS_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATECS_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATECS) (!! (-P- OBJproc_0_STDProcess_SM_STATECS_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATECS)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATECS) (-P- OBJproc_0_STDProcess_SM_STATECS_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATECS))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATECS)) (next (-P- OBJproc_0_STDProcess_SM_STATECS_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATECS)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATECS)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATECS_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATECS))))

;;TRANSITION @takeLock.call [{id==0--1}]
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) ([=] (-V- ATTRid) ([-] 0 1))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (-P- OBJproc_0OPtakeLock)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION /id=0-1, counter=<P>counter-1
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEEXIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_0_STDProcess_SM_STATEEXIT))
(<-> (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEEXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (||  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) ([-] 0 1)))

(<-> (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEEXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION @goWait.call[@now - @UPDATED.enter >= 4]
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEWAIT_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (&&  (lasted_ie (!! (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER)) 4) (somp (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (-P- OBJproc_0OPgoWait)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION [{id==pid}]
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATECS_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;TRANSITION /counter=<P>counter+1
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATECS_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEEXIT_ENTER))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_0_STDProcess_SM_STATECS))
(<-> (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATECS) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=pid
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEREQ_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_0_STDProcess_SM_STATEREQ))
(<-> (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEREQ) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (||  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)))


;;TRANSITION [{id!=pid}]
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (!! ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;proc_3SEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJproc_3ATTRpid) (yesterday (-V- OBJproc_3ATTRpid)))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))) ([=] (-V- ATTRcounter) (yesterday (-V- ATTRcounter))))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))) ([=] (-V- ATTRid) (yesterday (-V- ATTRid))))

;;proc_3 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6bc77f62 SEMANTICS

;;STATE EXIT
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATEEXIT)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEEXIT_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEEXIT_EXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEEXIT) (!! (-P- OBJproc_3_STDProcess_SM_STATEEXIT_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEEXIT)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEEXIT) (-P- OBJproc_3_STDProcess_SM_STATEEXIT_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEEXIT))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEEXIT)) (next (-P- OBJproc_3_STDProcess_SM_STATEEXIT_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEEXIT)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEEXIT)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEEXIT_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEEXIT))))

;;STATE REQ
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATEREQ)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEREQ_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEREQ_EXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEREQ) (!! (-P- OBJproc_3_STDProcess_SM_STATEREQ_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEREQ)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEREQ) (-P- OBJproc_3_STDProcess_SM_STATEREQ_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEREQ))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEREQ)) (next (-P- OBJproc_3_STDProcess_SM_STATEREQ_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEREQ)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEREQ)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEREQ_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEREQ))))
(-> (-P- $OBJproc_3_STDProcess_SM_STATEREQ) (withinp_ii (-P- OBJproc_3_STDProcess_SM_STATEREQ_ENTER) 3))

;;STATE UPDATED
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_EXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED) (!! (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED) (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED)) (next (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED))))
(-> (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED) (withinp_ii (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_ENTER) 4))

;;STATE WAIT
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATEWAIT)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEWAIT_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEWAIT_EXIT) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWAIT) (!! (-P- OBJproc_3_STDProcess_SM_STATEWAIT_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEWAIT)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWAIT) (-P- OBJproc_3_STDProcess_SM_STATEWAIT_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEWAIT))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEWAIT)) (next (-P- OBJproc_3_STDProcess_SM_STATEWAIT_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEWAIT)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEWAIT)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEWAIT_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEWAIT))))

;;STATE FISHERP
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP)))
(-> (-P- BigBang) (next (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_ENTER)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W))))
(-> (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_EXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP) (!! (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP) (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP)) (next (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP))))

;;STATE CS
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATECS)))
(-> (-P- OBJproc_3_STDProcess_SM_STATECS_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_3_STDProcess_SM_STATECS_EXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATECS) (!! (-P- OBJproc_3_STDProcess_SM_STATECS_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATECS)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATECS) (-P- OBJproc_3_STDProcess_SM_STATECS_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATECS))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATECS)) (next (-P- OBJproc_3_STDProcess_SM_STATECS_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATECS)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATECS)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATECS_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATECS))))

;;TRANSITION @takeLock.call [{id==0--1}]
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEREQ_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP) ([=] (-V- ATTRid) ([-] 0 1))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEFISHERP) (-P- OBJproc_3OPtakeLock)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION /id=0-1, counter=<P>counter-1
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_3_STDProcess_SM_STATEEXIT_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_3_STDProcess_SM_STATEEXIT))
(<-> (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEEXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (||  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) ([-] 0 1)))

(<-> (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEEXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION @goWait.call[@now - @UPDATED.enter >= 4]
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEWAIT_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED) (&&  (lasted_ie (!! (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_ENTER)) 4) (somp (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_ENTER)))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEUPDATED) (-P- OBJproc_3OPgoWait)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION [{id==pid}]
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_3_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATECS_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWAIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWAIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWAIT) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;TRANSITION /counter=<P>counter+1
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_3_STDProcess_SM_STATECS_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEEXIT_ENTER))))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_3_STDProcess_SM_STATECS))
(<-> (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATECS) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=pid
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_3_STDProcess_SM_STATEREQ_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEUPDATED_ENTER))))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_3_STDProcess_SM_STATEREQ))
(<-> (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEREQ) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (||  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)))


;;TRANSITION [{id!=pid}]
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_3_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWAIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWAIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWAIT) (!! ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;proc_1SEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJproc_1ATTRpid) (yesterday (-V- OBJproc_1ATTRpid)))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))) ([=] (-V- ATTRcounter) (yesterday (-V- ATTRcounter))))
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))) ([=] (-V- ATTRid) (yesterday (-V- ATTRid))))

;;proc_1 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6bc77f62 SEMANTICS

;;STATE EXIT
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEEXIT_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEEXIT_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEEXIT) (!! (-P- OBJproc_1_STDProcess_SM_STATEEXIT_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEEXIT) (-P- OBJproc_1_STDProcess_SM_STATEEXIT_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)) (next (-P- OBJproc_1_STDProcess_SM_STATEEXIT_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEEXIT_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT))))

;;STATE REQ
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEREQ_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEREQ) (!! (-P- OBJproc_1_STDProcess_SM_STATEREQ_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEREQ)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEREQ) (-P- OBJproc_1_STDProcess_SM_STATEREQ_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ)) (next (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEREQ)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ))))
(-> (-P- $OBJproc_1_STDProcess_SM_STATEREQ) (withinp_ii (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER) 3))

;;STATE UPDATED
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (!! (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)) (next (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED))))
(-> (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (withinp_ii (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER) 4))

;;STATE WAIT
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEWAIT_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (!! (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)) (next (-P- OBJproc_1_STDProcess_SM_STATEWAIT_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEWAIT_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT))))

;;STATE FISHERP
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)))
(-> (-P- BigBang) (next (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W))))
(-> (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (!! (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)) (next (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP))))

;;STATE CS
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATECS)))
(-> (-P- OBJproc_1_STDProcess_SM_STATECS_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATECS_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATECS) (!! (-P- OBJproc_1_STDProcess_SM_STATECS_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATECS)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATECS) (-P- OBJproc_1_STDProcess_SM_STATECS_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATECS))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATECS)) (next (-P- OBJproc_1_STDProcess_SM_STATECS_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATECS)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATECS)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATECS_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATECS))))

;;TRANSITION @takeLock.call [{id==0--1}]
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) ([=] (-V- ATTRid) ([-] 0 1))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (-P- OBJproc_1OPtakeLock)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^CZ^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION /id=0-1, counter=<P>counter-1
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEEXIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_1_STDProcess_SM_STATEEXIT))
(<-> (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEEXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (||  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) ([-] 0 1)))

(<-> (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEEXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION @goWait.call[@now - @UPDATED.enter >= 4]
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEWAIT_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (&&  (lasted_ie (!! (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER)) 4) (somp (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (-P- OBJproc_1OPgoWait)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C5^X^FE^E^AT^L9^A0^B^G5V^O^W_TRIGGER))

;;TRANSITION [{id==pid}]
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATECS_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))

;;TRANSITION /counter=<P>counter+1
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATECS_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEEXIT_ENTER))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_1_STDProcess_SM_STATECS))
(<-> (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATECS) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D^P^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wcounter)))) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=pid
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEREQ_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- $OBJproc_1_STDProcess_SM_STATEREQ))
(<-> (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEREQ) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^W))) (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (||  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_5ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_2ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_4ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_3ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid) (&&  (!! (-P- OBJproc_5ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_5ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_2ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_4ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^C^P^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_3ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_IY8U^D5^X^FE^E^AT^L9^A0^B^G5V^O^Wid)))) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)))


;;TRANSITION [{id!=pid}]
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (!! ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W_GUARD))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DZ^X^FE^E^AT^L9^A0^B^G5V^O^W) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_IY8U^DJ^X^FE^E^AT^L9^A0^B^G5V^O^W)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IODs 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


)) ;;END AX1 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PROPERTIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar Q1 (alw (!! ([>] (-V- ATTRcounter) 1))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- BigBang) (alwf_e (!! (-P- BigBang)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;proc_5 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_5ATTRpid) 5)([=] (-V- ATTRcounter) 0)([=] (-V- ATTRid) -1)
;;proc_4 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_4ATTRpid) 4)([=] (-V- ATTRcounter) 0)([=] (-V- ATTRid) -1)
;;proc_2 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_2ATTRpid) 2)([=] (-V- ATTRcounter) 0)([=] (-V- ATTRid) -1)
;;proc_0 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_0ATTRpid) 0)([=] (-V- ATTRcounter) 0)([=] (-V- ATTRid) -1)
;;proc_3 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_3ATTRpid) 3)([=] (-V- ATTRcounter) 0)([=] (-V- ATTRid) -1)
;;proc_1 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_1ATTRpid) 1)([=] (-V- ATTRcounter) 0)([=] (-V- ATTRid) -1)
) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) (!!(yesterday Q1)) initAx))


(ae2bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )