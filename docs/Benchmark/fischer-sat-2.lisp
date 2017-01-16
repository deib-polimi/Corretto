;  Model statistics:
;  50	:Number of UML elements
;  2	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  12	:Number of states
;  16	:Number of transitions
;  0	:Number of lifelines in sequence diagrams
;  0	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  0	:Number of time contraints in sequence diagrams
;  0	:Number of clocks
;  0	:Number of nodes in interaction overview diagrams
;  4	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'ae2bvzot)
(use-package :trio-utils)
(defvar TSPACE 75)
;; Variables:
(define-tvar OBJproc_0ATTRpid *int*)
(define-tvar ATTRcounter *int*)
(define-tvar OBJproc_1ATTRpid *int*)
(define-tvar ATTRid *int*)
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

;;proc_1SEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJproc_1ATTRpid) (yesterday (-V- OBJproc_1ATTRpid)))
(-> (!! (||  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid))) ([=] (-V- ATTRid) (yesterday (-V- ATTRid))))
(-> (!! (||  (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter))) ([=] (-V- ATTRcounter) (yesterday (-V- ATTRcounter))))

;;proc_1 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6be0e7a9 SEMANTICS

;;STATE CS
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATECS)))
(-> (-P- OBJproc_1_STDProcess_SM_STATECS_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATECS_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATECS) (!! (-P- OBJproc_1_STDProcess_SM_STATECS_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATECS)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATECS) (-P- OBJproc_1_STDProcess_SM_STATECS_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATECS))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATECS)) (next (-P- OBJproc_1_STDProcess_SM_STATECS_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATECS)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATECS)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATECS_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATECS))))

;;STATE FISHERP
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)))
(-> (-P- BigBang) (next (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))))
(-> (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (!! (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)) (next (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP))))

;;STATE EXIT
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEEXIT_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEEXIT_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEEXIT) (!! (-P- OBJproc_1_STDProcess_SM_STATEEXIT_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEEXIT) (-P- OBJproc_1_STDProcess_SM_STATEEXIT_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)) (next (-P- OBJproc_1_STDProcess_SM_STATEEXIT_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEEXIT_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEEXIT))))

;;STATE REQ
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEREQ_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEREQ) (!! (-P- OBJproc_1_STDProcess_SM_STATEREQ_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEREQ)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEREQ) (-P- OBJproc_1_STDProcess_SM_STATEREQ_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ)) (next (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEREQ)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEREQ))))
(-> (-P- $OBJproc_1_STDProcess_SM_STATEREQ) (withinp_ii (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER) 3))

;;STATE WAIT
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEWAIT_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (!! (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)) (next (-P- OBJproc_1_STDProcess_SM_STATEWAIT_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEWAIT_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWAIT))))

;;STATE UPDATED
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (!! (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)) (next (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED))))
(-> (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (withinp_ii (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER) 4))

;;TRANSITION @takeLock.call [{id==0--1}]
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEREQ_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) ([=] (-V- ATTRid) ([-] 0 1))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEFISHERP) (-P- OBJproc_1OPtakeLock)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER))

;;TRANSITION [{id!=pid}]
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (!! ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))

;;TRANSITION @goWait.call[@now - @UPDATED.enter >= 4]
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEWAIT_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (&&  (lasted_ie (!! (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER)) 4) (somp (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEUPDATED) (-P- OBJproc_1OPgoWait)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER))

;;TRANSITION [{id==pid}]
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATECS_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWAIT) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))

;;TRANSITION /counter=<P>counter+1
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATECS_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEEXIT_ENTER))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- $OBJproc_1_STDProcess_SM_STATECS))
(<-> (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATECS) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))) (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (&&  (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)))) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=0-1, counter=<P>counter-1
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEEXIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- $OBJproc_1_STDProcess_SM_STATEEXIT))
(<-> (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEEXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (||  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (&&  (!! (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)))) ([=] (-V- ATTRid) ([-] 0 1)))

(<-> (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEEXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (&&  (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)))) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=pid
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_1_STDProcess_SM_STATEREQ_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEUPDATED_ENTER))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- $OBJproc_1_STDProcess_SM_STATEREQ))
(<-> (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEREQ) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (||  (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (&&  (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)))) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)))


;;proc_0SEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJproc_0ATTRpid) (yesterday (-V- OBJproc_0ATTRpid)))
(-> (!! (||  (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid))) ([=] (-V- ATTRid) (yesterday (-V- ATTRid))))
(-> (!! (||  (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter))) ([=] (-V- ATTRcounter) (yesterday (-V- ATTRcounter))))

;;proc_0 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@6be0e7a9 SEMANTICS

;;STATE CS
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATECS)))
(-> (-P- OBJproc_0_STDProcess_SM_STATECS_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATECS_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATECS) (!! (-P- OBJproc_0_STDProcess_SM_STATECS_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATECS)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATECS) (-P- OBJproc_0_STDProcess_SM_STATECS_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATECS))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATECS)) (next (-P- OBJproc_0_STDProcess_SM_STATECS_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATECS)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATECS)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATECS_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATECS))))

;;STATE FISHERP
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)))
(-> (-P- BigBang) (next (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))))
(-> (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (!! (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)) (next (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP))))

;;STATE EXIT
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEEXIT_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEEXIT_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEEXIT) (!! (-P- OBJproc_0_STDProcess_SM_STATEEXIT_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEEXIT) (-P- OBJproc_0_STDProcess_SM_STATEEXIT_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)) (next (-P- OBJproc_0_STDProcess_SM_STATEEXIT_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEEXIT_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEEXIT))))

;;STATE REQ
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEREQ_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEREQ) (!! (-P- OBJproc_0_STDProcess_SM_STATEREQ_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEREQ)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEREQ) (-P- OBJproc_0_STDProcess_SM_STATEREQ_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ)) (next (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEREQ)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEREQ))))
(-> (-P- $OBJproc_0_STDProcess_SM_STATEREQ) (withinp_ii (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER) 3))

;;STATE WAIT
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEWAIT_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (!! (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)) (next (-P- OBJproc_0_STDProcess_SM_STATEWAIT_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEWAIT_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWAIT))))

;;STATE UPDATED
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (!! (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)) (next (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED))))
(-> (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (withinp_ii (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER) 4))

;;TRANSITION @takeLock.call [{id==0--1}]
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEREQ_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) ([=] (-V- ATTRid) ([-] 0 1))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEFISHERP) (-P- OBJproc_0OPtakeLock)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^W5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER))

;;TRANSITION [{id!=pid}]
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (!! ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))

;;TRANSITION @goWait.call[@now - @UPDATED.enter >= 4]
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEWAIT_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (&&  (lasted_ie (!! (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER)) 4) (somp (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEUPDATED) (-P- OBJproc_0OPgoWait)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W_TRIGGER))

;;TRANSITION [{id==pid}]
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEWAIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATECS_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWAIT) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W_GUARD))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X^P^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^X5^X^EE^E^A^MF^BU0^M^I^L^K^_^W)))

;;TRANSITION /counter=<P>counter+1
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATECS_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEEXIT_ENTER))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- $OBJproc_0_STDProcess_SM_STATECS))
(<-> (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATECS) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (&&  (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)))) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=0-1, counter=<P>counter-1
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEEXIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEFISHERP_ENTER))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- $OBJproc_0_STDProcess_SM_STATEEXIT))
(<-> (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEEXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (||  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (&&  (!! (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)))) ([=] (-V- ATTRid) ([-] 0 1)))

(<-> (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEEXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (||  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (||  ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)) ([=] (-V- ATTRcounter) ([+] (yesterday (-V- ATTRcounter)) 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter) (&&  (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wcounter)))) ([=] (-V- ATTRcounter) ([-] (yesterday (-V- ATTRcounter)) 1)))


;;TRANSITION /id=pid
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (&&  (-P- OBJproc_0_STDProcess_SM_STATEREQ_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEUPDATED_ENTER))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W) (-P- $OBJproc_0_STDProcess_SM_STATEREQ))
(<-> (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEREQ) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^W))) (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (||  (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (||  ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)) ([=] (-V- ATTRid) (-V- OBJproc_1ATTRpid)) ([=] (-V- ATTRid) ([-] 0 1)) ([=] (-V- ATTRid) ([-] 0 1))))
(-> (&&  (-P- OBJproc_0ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid) (&&  (!! (-P- OBJproc_1ASSIGNMENT_^L78U^XJ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (!! (-P- OBJproc_1ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)) (!! (-P- OBJproc_0ASSIGNMENT_^L78U^YZ^X^EE^E^A^MF^BU0^M^I^L^K^_^Wid)))) ([=] (-V- ATTRid) (-V- OBJproc_0ATTRpid)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

;;proc_1 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_1ATTRpid) 1)([=] (-V- ATTRid) -1)([=] (-V- ATTRcounter) 0)
;;proc_0 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_0ATTRpid) 0)([=] (-V- ATTRid) -1)([=] (-V- ATTRcounter) 0)
) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) initAx))


(ae2bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )