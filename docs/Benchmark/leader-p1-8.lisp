;  Model statistics:
;  219	:Number of UML elements
;  10	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  37	:Number of states
;  85	:Number of transitions
;  0	:Number of lifelines in sequence diagrams
;  0	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  0	:Number of time contraints in sequence diagrams
;  0	:Number of clocks
;  0	:Number of nodes in interaction overview diagrams
;  72	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'ae2bvzot)
(use-package :trio-utils)
(defvar TSPACE 25)
;; Variables:
(define-tvar OBJproc_4ATTRneighbourR *int*)
(define-tvar OBJproc_2ATTRmynumber *int*)
(define-tvar OBJproc_6OPwinnerPARAMwin_nr *int*)
(define-tvar OBJproc_4OPtwoPARAMtwo_nr *int*)
(define-tvar OBJproc_4OPwinnerPARAMwin_nr *int*)
(define-tvar OBJproc_1ATTRneighbourR *int*)
(define-tvar OBJproc_7OPsetIdPARAMmyId *int*)
(define-tvar OBJproc_4ATTRmax *int*)
(define-tvar OBJproc_4ATTRmynumber *int*)
(define-tvar OBJproc_5OPtwoPARAMtwo_nr *int*)
(define-tvar OBJproc_0ATTRneighbourR *int*)
(define-tvar OBJproc_5ATTRmynumber *int*)
(define-tvar OBJproc_5ATTRactive *int*)
(define-tvar OBJproc_5ATTRneighbourR *int*)
(define-tvar OBJproc_6ATTRactive *int*)
(define-tvar OBJproc_5OPonePARAMone_nr *int*)
(define-tvar OBJproc_7ATTRmynumber *int*)
(define-tvar OBJproc_6OPtwoPARAMtwo_nr *int*)
(define-tvar OBJproc_1OPonePARAMone_nr *int*)
(define-tvar OBJproc_1OPsetIdPARAMmyId *int*)
(define-tvar OBJproc_2ATTRmax *int*)
(define-tvar OBJproc_2OPtwoPARAMtwo_nr *int*)
(define-tvar OBJproc_1ATTRmax *int*)
(define-tvar OBJproc_2ATTRneighbourR *int*)
(define-tvar OBJproc_0OPsetIdPARAMmyId *int*)
(define-tvar OBJproc_1OPwinnerPARAMwin_nr *int*)
(define-tvar OBJproc_2OPsetIdPARAMmyId *int*)
(define-tvar OBJproc_4OPsetIdPARAMmyId *int*)
(define-tvar OBJproc_4ATTRactive *int*)
(define-tvar OBJproc_0ATTRactive *int*)
(define-tvar OBJproc_3OPtwoPARAMtwo_nr *int*)
(define-tvar OBJproc_1ATTRmynumber *int*)
(define-tvar OBJproc_7OPwinnerPARAMwin_nr *int*)
(define-tvar OBJproc_3ATTRactive *int*)
(define-tvar OBJproc_6OPonePARAMone_nr *int*)
(define-tvar OBJproc_5OPsetIdPARAMmyId *int*)
(define-tvar OBJproc_3ATTRneighbourR *int*)
(define-tvar OBJproc_3OPwinnerPARAMwin_nr *int*)
(define-tvar OBJproc_6ATTRmynumber *int*)
(define-tvar OBJproc_7ATTRactive *int*)
(define-tvar OBJproc_2OPwinnerPARAMwin_nr *int*)
(define-tvar OBJproc_0ATTRmynumber *int*)
(define-tvar OBJproc_6OPsetIdPARAMmyId *int*)
(define-tvar OBJproc_0OPwinnerPARAMwin_nr *int*)
(define-tvar OBJproc_3OPsetIdPARAMmyId *int*)
(define-tvar OBJproc_5OPwinnerPARAMwin_nr *int*)
(define-tvar OBJproc_5ATTRmax *int*)
(define-tvar OBJproc_7ATTRmax *int*)
(define-tvar OBJproc_2ATTRactive *int*)
(define-tvar OBJproc_0OPonePARAMone_nr *int*)
(define-tvar OBJidGeneratorATTRidattr6 *int*)
(define-tvar OBJidGeneratorATTRidattr7 *int*)
(define-tvar OBJproc_2OPonePARAMone_nr *int*)
(define-tvar OBJproc_3OPonePARAMone_nr *int*)
(define-tvar OBJidGeneratorATTRidattr0 *int*)
(define-tvar OBJidGeneratorATTRidattr1 *int*)
(define-tvar OBJproc_6ATTRmax *int*)
(define-tvar OBJproc_0OPtwoPARAMtwo_nr *int*)
(define-tvar OBJidGeneratorATTRidattr4 *int*)
(define-tvar OBJproc_3ATTRmax *int*)
(define-tvar OBJidGeneratorATTRidattr5 *int*)
(define-tvar OBJproc_7OPtwoPARAMtwo_nr *int*)
(define-tvar OBJproc_1ATTRactive *int*)
(define-tvar OBJidGeneratorATTRidattr2 *int*)
(define-tvar OBJidGeneratorATTRidattr3 *int*)
(define-tvar OBJproc_7OPonePARAMone_nr *int*)
(define-tvar OBJproc_7ATTRneighbourR *int*)
(define-tvar OBJproc_3ATTRmynumber *int*)
(define-tvar OBJproc_1OPtwoPARAMtwo_nr *int*)
(define-tvar OBJproc_0ATTRmax *int*)
(define-tvar OBJproc_4OPonePARAMone_nr *int*)
(define-tvar OBJproc_6ATTRneighbourR *int*)
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
(<-> (-P- we_have_winner) (||  (-P- OBJproc_4we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_3we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_2we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_7we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_6we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_5we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_1we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_0we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))


;;proc_4SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_4OPone) (||  (-P- OBJproc_4OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_4OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_4OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_4OPtwo) (||  (-P- OBJproc_4OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_4OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_4OPwinner) (||  (-P- OBJproc_4OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_4OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_4OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_4OPsetId) (-P- OBJproc_4OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL))
;;Attribute semantics
(-> (!! (||  (-P- OBJproc_4ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (-P- OBJproc_4ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax))) ([=] (-V- OBJproc_4ATTRmax) (yesterday (-V- OBJproc_4ATTRmax))))
(-> (!! (-P- OBJproc_4ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)) ([=] (-V- OBJproc_4ATTRactive) (yesterday (-V- OBJproc_4ATTRactive))))
(-> (!! (-P- OBJproc_4ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)) ([=] (-V- OBJproc_4ATTRmynumber) (yesterday (-V- OBJproc_4ATTRmynumber))))
(-> (!! (-P- OBJproc_4ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)) ([=] (-V- OBJproc_4ATTRneighbourR) (yesterday (-V- OBJproc_4ATTRneighbourR))))

;;proc_4 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@286edac4 SEMANTICS

;;STATE MAIN
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN))))

;;STATE WIN
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWIN) (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN))))

;;STATE INIT
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (-P- BigBang) (next (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT))))

;;STATE LOST
(-> (-P- BigBang) (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATELOST) (!! (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATELOST) (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)) (next (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (||  ([<=] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4OPtwoPARAMtwo_nr)) ([<=] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) ([=] (-V- OBJproc_4ATTRactive) 0))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (&&  ([>] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4OPtwoPARAMtwo_nr)) ([>] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_4ATTRmax) (yesterday (-V- OBJproc_4ATTRneighbourR))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPonePARAMone_nr) (yesterday (-V- OBJproc_4ATTRneighbourR))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @setId.call / mynumber=<P>myId, #link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4OPsetId)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) ([=] (-V- OBJproc_4ATTRmynumber) (yesterday (-V- OBJproc_4OPsetIdPARAMmyId))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPonePARAMone_nr) (-V- OBJproc_4ATTRmynumber)))

(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_4ATTRmax) (-V- OBJproc_4ATTRmynumber)))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4ATTRactive) 0)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_4OPtwoPARAMtwo_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4OPwinnerPARAMwin_nr) (-V- OBJproc_4ATTRmynumber))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPwinner)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_4OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4ATTRactive) 0)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPonePARAMone_nr) (yesterday (-V- OBJproc_4OPonePARAMone_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_4OPwinnerPARAMwin_nr) (-V- OBJproc_4ATTRmynumber)))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPwinner)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_4OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (!! ([=] (-V- OBJproc_4OPonePARAMone_nr) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_4OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) ([=] (-V- OBJproc_4ATTRneighbourR) (yesterday (-V- OBJproc_4OPonePARAMone_nr))))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) ([=] (-V- OBJproc_4OPonePARAMone_nr) (-V- OBJproc_4ATTRmax)))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_4OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))

;;proc_3SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_3OPone) (||  (-P- OBJproc_3OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_3OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_3OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_3OPtwo) (||  (-P- OBJproc_3OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_3OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_3OPwinner) (||  (-P- OBJproc_3OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_3OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_3OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_3OPsetId) (-P- OBJproc_3OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL))
;;Attribute semantics
(-> (!! (||  (-P- OBJproc_3ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (-P- OBJproc_3ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax))) ([=] (-V- OBJproc_3ATTRmax) (yesterday (-V- OBJproc_3ATTRmax))))
(-> (!! (-P- OBJproc_3ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)) ([=] (-V- OBJproc_3ATTRactive) (yesterday (-V- OBJproc_3ATTRactive))))
(-> (!! (-P- OBJproc_3ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)) ([=] (-V- OBJproc_3ATTRmynumber) (yesterday (-V- OBJproc_3ATTRmynumber))))
(-> (!! (-P- OBJproc_3ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)) ([=] (-V- OBJproc_3ATTRneighbourR) (yesterday (-V- OBJproc_3ATTRneighbourR))))

;;proc_3 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@286edac4 SEMANTICS

;;STATE MAIN
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN))))

;;STATE WIN
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWIN) (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN))))

;;STATE INIT
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (-P- BigBang) (next (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT))))

;;STATE LOST
(-> (-P- BigBang) (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATELOST) (!! (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATELOST) (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)) (next (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (||  ([<=] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3OPtwoPARAMtwo_nr)) ([<=] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) ([=] (-V- OBJproc_3ATTRactive) 0))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (&&  ([>] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3OPtwoPARAMtwo_nr)) ([>] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_3ATTRmax) (yesterday (-V- OBJproc_3ATTRneighbourR))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPonePARAMone_nr) (yesterday (-V- OBJproc_3ATTRneighbourR))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @setId.call / mynumber=<P>myId, #link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3OPsetId)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) ([=] (-V- OBJproc_3ATTRmynumber) (yesterday (-V- OBJproc_3OPsetIdPARAMmyId))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPonePARAMone_nr) (-V- OBJproc_3ATTRmynumber)))

(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_3ATTRmax) (-V- OBJproc_3ATTRmynumber)))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3ATTRactive) 0)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_3OPtwoPARAMtwo_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3OPwinnerPARAMwin_nr) (-V- OBJproc_3ATTRmynumber))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPwinner)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_3OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3ATTRactive) 0)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPonePARAMone_nr) (yesterday (-V- OBJproc_3OPonePARAMone_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_3OPwinnerPARAMwin_nr) (-V- OBJproc_3ATTRmynumber)))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPwinner)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_3OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (!! ([=] (-V- OBJproc_3OPonePARAMone_nr) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_3OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) ([=] (-V- OBJproc_3ATTRneighbourR) (yesterday (-V- OBJproc_3OPonePARAMone_nr))))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) ([=] (-V- OBJproc_3OPonePARAMone_nr) (-V- OBJproc_3ATTRmax)))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_3OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))

;;idGeneratorSEMANTICS
;;Object operation definitions
;;Attribute semantics
([=] (-V- OBJidGeneratorATTRidattr4) (yesterday (-V- OBJidGeneratorATTRidattr4)))
([=] (-V- OBJidGeneratorATTRidattr1) (yesterday (-V- OBJidGeneratorATTRidattr1)))
([=] (-V- OBJidGeneratorATTRidattr7) (yesterday (-V- OBJidGeneratorATTRidattr7)))
([=] (-V- OBJidGeneratorATTRidattr2) (yesterday (-V- OBJidGeneratorATTRidattr2)))
([=] (-V- OBJidGeneratorATTRidattr6) (yesterday (-V- OBJidGeneratorATTRidattr6)))
([=] (-V- OBJidGeneratorATTRidattr3) (yesterday (-V- OBJidGeneratorATTRidattr3)))
([=] (-V- OBJidGeneratorATTRidattr0) (yesterday (-V- OBJidGeneratorATTRidattr0)))
([=] (-V- OBJidGeneratorATTRidattr5) (yesterday (-V- OBJidGeneratorATTRidattr5)))

;;idGenerator STD IdGenerator_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@4ff3ac SEMANTICS

;;STATE END
(-> (-P- BigBang) (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND)))
(-> (-P- OBJidGenerator_STDIdGenerator_SM_STATEEND_ENTER) (yesterday (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJidGenerator_STDIdGenerator_SM_STATEEND_EXIT))
(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND) (!! (-P- OBJidGenerator_STDIdGenerator_SM_STATEEND_EXIT))) (next (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND)))
(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND) (-P- OBJidGenerator_STDIdGenerator_SM_STATEEND_EXIT)) (next (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND))))
(-> (&&  (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND)) (next (-P- OBJidGenerator_STDIdGenerator_SM_STATEEND_ENTER))) (next (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND)))
(-> (&&  (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND)) (next (!! (-P- OBJidGenerator_STDIdGenerator_SM_STATEEND_ENTER)))) (next (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATEEND))))

;;STATE SETID
(-> (-P- BigBang) (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID)))
(-> (-P- BigBang) (next (-P- OBJidGenerator_STDIdGenerator_SM_STATESETID_ENTER)))
(-> (-P- OBJidGenerator_STDIdGenerator_SM_STATESETID_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJidGenerator_STDIdGenerator_SM_STATESETID_EXIT) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (!! (-P- OBJidGenerator_STDIdGenerator_SM_STATESETID_EXIT))) (next (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID)))
(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_STATESETID_EXIT)) (next (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID))))
(-> (&&  (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID)) (next (-P- OBJidGenerator_STDIdGenerator_SM_STATESETID_ENTER))) (next (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID)))
(-> (&&  (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID)) (next (!! (-P- OBJidGenerator_STDIdGenerator_SM_STATESETID_ENTER)))) (next (!! (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID))))

;;TRANSITION [{idattr0!=idattr1} && {idattr0!=idattr2} && {idattr0!=idattr3} && {idattr0!=idattr4} && {idattr0!=idattr5} && {idattr0!=idattr6} && {idattr0!=idattr7} && {idattr1!=idattr2} && {idattr1!=idattr3} && {idattr1!=idattr4} && {idattr1!=idattr5} && {idattr1!=idattr6} && {idattr1!=idattr7} && {idattr2!=idattr3} && {idattr2!=idattr4} && {idattr2!=idattr5} && {idattr2!=idattr6} && {idattr2!=idattr7} && {idattr3!=idattr4} && {idattr3!=idattr5} && {idattr3!=idattr6} && {idattr3!=idattr7} && {idattr4!=idattr5} && {idattr4!=idattr6} && {idattr4!=idattr7} && {idattr5!=idattr6} && {idattr5!=idattr7} && {idattr6!=idattr7}]/#gen_link_proc0.out@setId(idattr0).call, #gen_link_proc1.out@setId(idattr1).call, #gen_link_proc2.out@setId(idattr2).call, #gen_link_proc3.out@setId(idattr3).call, #gen_link_proc4.out@setId(idattr4).call, #gen_link_proc5.out@setId(idattr5).call, #gen_link_proc6.out@setId(idattr6).call, #gen_link_proc7.out@setId(idattr7).call
(-> (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJidGenerator_STDIdGenerator_SM_STATESETID_EXIT) (next (-P- OBJidGenerator_STDIdGenerator_SM_STATEEND_ENTER))))
(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr0) (-V- OBJidGeneratorATTRidattr1))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr0) (-V- OBJidGeneratorATTRidattr2))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr0) (-V- OBJidGeneratorATTRidattr3))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr0) (-V- OBJidGeneratorATTRidattr4))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr0) (-V- OBJidGeneratorATTRidattr5))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr0) (-V- OBJidGeneratorATTRidattr6))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr0) (-V- OBJidGeneratorATTRidattr7))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr1) (-V- OBJidGeneratorATTRidattr2))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr1) (-V- OBJidGeneratorATTRidattr3))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr1) (-V- OBJidGeneratorATTRidattr4))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr1) (-V- OBJidGeneratorATTRidattr5))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr1) (-V- OBJidGeneratorATTRidattr6))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr1) (-V- OBJidGeneratorATTRidattr7))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr2) (-V- OBJidGeneratorATTRidattr3))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr2) (-V- OBJidGeneratorATTRidattr4))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr2) (-V- OBJidGeneratorATTRidattr5))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr2) (-V- OBJidGeneratorATTRidattr6))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr2) (-V- OBJidGeneratorATTRidattr7))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr3) (-V- OBJidGeneratorATTRidattr4))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr3) (-V- OBJidGeneratorATTRidattr5))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr3) (-V- OBJidGeneratorATTRidattr6))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr3) (-V- OBJidGeneratorATTRidattr7))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr4) (-V- OBJidGeneratorATTRidattr5))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr4) (-V- OBJidGeneratorATTRidattr6))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr4) (-V- OBJidGeneratorATTRidattr7))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr5) (-V- OBJidGeneratorATTRidattr6))) (&&  (!! ([=] (-V- OBJidGeneratorATTRidattr5) (-V- OBJidGeneratorATTRidattr7))) (!! ([=] (-V- OBJidGeneratorATTRidattr6) (-V- OBJidGeneratorATTRidattr7))))))))))))))))))))))))))))))) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPsetIdPARAMmyId) (-V- OBJidGeneratorATTRidattr0)))

(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPsetIdPARAMmyId) (-V- OBJidGeneratorATTRidattr1)))

(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPsetIdPARAMmyId) (-V- OBJidGeneratorATTRidattr2)))

(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPsetIdPARAMmyId) (-V- OBJidGeneratorATTRidattr3)))

(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_4OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_4OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_4OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_4OPsetIdPARAMmyId) (-V- OBJidGeneratorATTRidattr4)))

(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_5OPsetIdPARAMmyId) (-V- OBJidGeneratorATTRidattr5)))

(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPsetIdPARAMmyId) (-V- OBJidGeneratorATTRidattr6)))

(-> (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJidGenerator_STDIdGenerator_SM_STATESETID) (-P- OBJidGenerator_STDIdGenerator_SM_TRANSITION_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPsetIdPARAMmyId) (-V- OBJidGeneratorATTRidattr7)))


;;proc_2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_2OPone) (||  (-P- OBJproc_2OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_2OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_2OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_2OPtwo) (||  (-P- OBJproc_2OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_2OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_2OPwinner) (||  (-P- OBJproc_2OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_2OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_2OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_2OPsetId) (-P- OBJproc_2OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL))
;;Attribute semantics
(-> (!! (||  (-P- OBJproc_2ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (-P- OBJproc_2ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax))) ([=] (-V- OBJproc_2ATTRmax) (yesterday (-V- OBJproc_2ATTRmax))))
(-> (!! (-P- OBJproc_2ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)) ([=] (-V- OBJproc_2ATTRactive) (yesterday (-V- OBJproc_2ATTRactive))))
(-> (!! (-P- OBJproc_2ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)) ([=] (-V- OBJproc_2ATTRmynumber) (yesterday (-V- OBJproc_2ATTRmynumber))))
(-> (!! (-P- OBJproc_2ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)) ([=] (-V- OBJproc_2ATTRneighbourR) (yesterday (-V- OBJproc_2ATTRneighbourR))))

;;proc_2 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@286edac4 SEMANTICS

;;STATE MAIN
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN))))

;;STATE WIN
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWIN) (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN))))

;;STATE INIT
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (-P- BigBang) (next (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT))))

;;STATE LOST
(-> (-P- BigBang) (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATELOST) (!! (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATELOST) (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)) (next (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (||  ([<=] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2OPtwoPARAMtwo_nr)) ([<=] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) ([=] (-V- OBJproc_2ATTRactive) 0))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (&&  ([>] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2OPtwoPARAMtwo_nr)) ([>] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_2ATTRmax) (yesterday (-V- OBJproc_2ATTRneighbourR))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPonePARAMone_nr) (yesterday (-V- OBJproc_2ATTRneighbourR))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @setId.call / mynumber=<P>myId, #link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2OPsetId)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) ([=] (-V- OBJproc_2ATTRmynumber) (yesterday (-V- OBJproc_2OPsetIdPARAMmyId))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPonePARAMone_nr) (-V- OBJproc_2ATTRmynumber)))

(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_2ATTRmax) (-V- OBJproc_2ATTRmynumber)))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2ATTRactive) 0)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_2OPtwoPARAMtwo_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2OPwinnerPARAMwin_nr) (-V- OBJproc_2ATTRmynumber))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPwinner)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_2OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2ATTRactive) 0)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPonePARAMone_nr) (yesterday (-V- OBJproc_2OPonePARAMone_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_2OPwinnerPARAMwin_nr) (-V- OBJproc_2ATTRmynumber)))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPwinner)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_2OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (!! ([=] (-V- OBJproc_2OPonePARAMone_nr) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_2OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) ([=] (-V- OBJproc_2ATTRneighbourR) (yesterday (-V- OBJproc_2OPonePARAMone_nr))))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) ([=] (-V- OBJproc_2OPonePARAMone_nr) (-V- OBJproc_2ATTRmax)))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_3OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_3OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_3OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_3OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_2OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))

;;proc_7SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_7OPone) (||  (-P- OBJproc_7OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_7OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_7OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_7OPtwo) (||  (-P- OBJproc_7OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_7OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_7OPwinner) (||  (-P- OBJproc_7OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_7OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_7OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_7OPsetId) (-P- OBJproc_7OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL))
;;Attribute semantics
(-> (!! (||  (-P- OBJproc_7ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (-P- OBJproc_7ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax))) ([=] (-V- OBJproc_7ATTRmax) (yesterday (-V- OBJproc_7ATTRmax))))
(-> (!! (-P- OBJproc_7ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)) ([=] (-V- OBJproc_7ATTRactive) (yesterday (-V- OBJproc_7ATTRactive))))
(-> (!! (-P- OBJproc_7ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)) ([=] (-V- OBJproc_7ATTRmynumber) (yesterday (-V- OBJproc_7ATTRmynumber))))
(-> (!! (-P- OBJproc_7ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)) ([=] (-V- OBJproc_7ATTRneighbourR) (yesterday (-V- OBJproc_7ATTRneighbourR))))

;;proc_7 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@286edac4 SEMANTICS

;;STATE MAIN
(-> (-P- BigBang) (!! (-P- $OBJproc_7_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_7_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_7_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_7_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_7_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_7_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_7_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_7_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_7_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_7_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_7_STDProcess_SM_STATEMAIN))))

;;STATE WIN
(-> (-P- BigBang) (!! (-P- $OBJproc_7_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_7_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_7_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_7_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_7_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEWIN) (-P- OBJproc_7_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_7_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_7_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_7_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_7_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_7_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_7_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_7_STDProcess_SM_STATEWIN))))

;;STATE INIT
(-> (-P- BigBang) (!! (-P- $OBJproc_7_STDProcess_SM_STATEINIT)))
(-> (-P- BigBang) (next (-P- OBJproc_7_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_7_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJproc_7_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_7_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_7_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_7_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_7_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_7_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_7_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_7_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_7_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_7_STDProcess_SM_STATEINIT))))

;;STATE LOST
(-> (-P- BigBang) (!! (-P- $OBJproc_7_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_7_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_7_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATELOST) (!! (-P- OBJproc_7_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_7_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATELOST) (-P- OBJproc_7_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_7_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_7_STDProcess_SM_STATELOST)) (next (-P- OBJproc_7_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_7_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_7_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_7_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_7_STDProcess_SM_STATELOST))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_7ATTRactive) 1) (||  ([<=] (-V- OBJproc_7ATTRneighbourR) (-V- OBJproc_7OPtwoPARAMtwo_nr)) ([<=] (-V- OBJproc_7ATTRneighbourR) (-V- OBJproc_7ATTRmax))))) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7OPtwo)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) ([=] (-V- OBJproc_7ATTRactive) 0))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_7ATTRactive) 1) (&&  ([>] (-V- OBJproc_7ATTRneighbourR) (-V- OBJproc_7OPtwoPARAMtwo_nr)) ([>] (-V- OBJproc_7ATTRneighbourR) (-V- OBJproc_7ATTRmax))))) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7OPtwo)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_7ATTRmax) (yesterday (-V- OBJproc_7ATTRneighbourR))))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPonePARAMone_nr) (yesterday (-V- OBJproc_7ATTRneighbourR))))

(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @setId.call / mynumber=<P>myId, #link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_7_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_7_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7OPsetId)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) ([=] (-V- OBJproc_7ATTRmynumber) (yesterday (-V- OBJproc_7OPsetIdPARAMmyId))))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPonePARAMone_nr) (-V- OBJproc_7ATTRmynumber)))

(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEINIT) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_7ATTRmax) (-V- OBJproc_7ATTRmynumber)))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_7ATTRactive) 0)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7OPtwo)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_7OPtwoPARAMtwo_nr))))

(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_7_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_7_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_7OPwinnerPARAMwin_nr) (-V- OBJproc_7ATTRmynumber))) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7OPwinner)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_7OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_7ATTRactive) 0)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7OPone)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPonePARAMone_nr) (yesterday (-V- OBJproc_7OPonePARAMone_nr))))

(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_7_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_7_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_7OPwinnerPARAMwin_nr) (-V- OBJproc_7ATTRmynumber)))) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7OPwinner)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_7OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_7ATTRactive) 1) (!! ([=] (-V- OBJproc_7OPonePARAMone_nr) (-V- OBJproc_7ATTRmax))))) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7OPone)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_7OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) ([=] (-V- OBJproc_7ATTRneighbourR) (yesterday (-V- OBJproc_7OPonePARAMone_nr))))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_7ATTRactive) 1) ([=] (-V- OBJproc_7OPonePARAMone_nr) (-V- OBJproc_7ATTRmax)))) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7OPone)) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_0OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_7OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_7_STDProcess_SM_STATEMAIN) (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_7_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))

;;proc_6SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_6OPone) (||  (-P- OBJproc_6OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_6OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_6OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_6OPtwo) (||  (-P- OBJproc_6OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_6OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_6OPwinner) (||  (-P- OBJproc_6OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_6OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_6OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_6OPsetId) (-P- OBJproc_6OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL))
;;Attribute semantics
(-> (!! (||  (-P- OBJproc_6ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (-P- OBJproc_6ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax))) ([=] (-V- OBJproc_6ATTRmax) (yesterday (-V- OBJproc_6ATTRmax))))
(-> (!! (-P- OBJproc_6ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)) ([=] (-V- OBJproc_6ATTRactive) (yesterday (-V- OBJproc_6ATTRactive))))
(-> (!! (-P- OBJproc_6ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)) ([=] (-V- OBJproc_6ATTRmynumber) (yesterday (-V- OBJproc_6ATTRmynumber))))
(-> (!! (-P- OBJproc_6ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)) ([=] (-V- OBJproc_6ATTRneighbourR) (yesterday (-V- OBJproc_6ATTRneighbourR))))

;;proc_6 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@286edac4 SEMANTICS

;;STATE MAIN
(-> (-P- BigBang) (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_6_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_6_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN))))

;;STATE WIN
(-> (-P- BigBang) (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_6_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_6_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_6_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEWIN) (-P- OBJproc_6_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_6_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_6_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_6_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN))))

;;STATE INIT
(-> (-P- BigBang) (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT)))
(-> (-P- BigBang) (next (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_6_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_6_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_6_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT))))

;;STATE LOST
(-> (-P- BigBang) (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_6_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_6_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATELOST) (!! (-P- OBJproc_6_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_6_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATELOST) (-P- OBJproc_6_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST)) (next (-P- OBJproc_6_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_6_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_6_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_6ATTRactive) 1) (||  ([<=] (-V- OBJproc_6ATTRneighbourR) (-V- OBJproc_6OPtwoPARAMtwo_nr)) ([<=] (-V- OBJproc_6ATTRneighbourR) (-V- OBJproc_6ATTRmax))))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPtwo)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) ([=] (-V- OBJproc_6ATTRactive) 0))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_6ATTRactive) 1) (&&  ([>] (-V- OBJproc_6ATTRneighbourR) (-V- OBJproc_6OPtwoPARAMtwo_nr)) ([>] (-V- OBJproc_6ATTRneighbourR) (-V- OBJproc_6ATTRmax))))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPtwo)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_6ATTRmax) (yesterday (-V- OBJproc_6ATTRneighbourR))))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPonePARAMone_nr) (yesterday (-V- OBJproc_6ATTRneighbourR))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @setId.call / mynumber=<P>myId, #link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_6_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_6_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6OPsetId)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) ([=] (-V- OBJproc_6ATTRmynumber) (yesterday (-V- OBJproc_6OPsetIdPARAMmyId))))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPonePARAMone_nr) (-V- OBJproc_6ATTRmynumber)))

(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_6ATTRmax) (-V- OBJproc_6ATTRmynumber)))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_6ATTRactive) 0)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPtwo)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_6OPtwoPARAMtwo_nr))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_6_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_6OPwinnerPARAMwin_nr) (-V- OBJproc_6ATTRmynumber))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPwinner)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_6OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_6ATTRactive) 0)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPone)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPonePARAMone_nr) (yesterday (-V- OBJproc_6OPonePARAMone_nr))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_6_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_6OPwinnerPARAMwin_nr) (-V- OBJproc_6ATTRmynumber)))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPwinner)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_6OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_6ATTRactive) 1) (!! ([=] (-V- OBJproc_6OPonePARAMone_nr) (-V- OBJproc_6ATTRmax))))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPone)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_6OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) ([=] (-V- OBJproc_6ATTRneighbourR) (yesterday (-V- OBJproc_6OPonePARAMone_nr))))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_6ATTRactive) 1) ([=] (-V- OBJproc_6OPonePARAMone_nr) (-V- OBJproc_6ATTRmax)))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPone)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_7OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_7OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_7OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_7OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_6OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))

;;monitorSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;monitor STD Monitor_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@29d79f57 SEMANTICS

;;STATE STATE_NO_WINNER
(-> (-P- BigBang) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (-P- BigBang) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6ZX_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER))))

;;STATE STATE_ERROR
(-> (-P- BigBang) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER) (yesterday (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR))))

;;STATE STATE_WINNER
(-> (-P- BigBang) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER) (yesterday (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6^PX_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER))))

;;TRANSITION we_have_winner.sig
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER))))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6ZX_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- we_have_winner)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))

;;TRANSITION we_have_winner.sig
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER))))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6^PX_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- we_have_winner)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_^KY^W^P6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))

;;proc_5SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_5OPone) (||  (-P- OBJproc_5OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_5OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_5OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_5OPtwo) (||  (-P- OBJproc_5OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_5OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_5OPwinner) (||  (-P- OBJproc_5OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_5OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_5OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_5OPsetId) (-P- OBJproc_5OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL))
;;Attribute semantics
(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (-P- OBJproc_5ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax))) ([=] (-V- OBJproc_5ATTRmax) (yesterday (-V- OBJproc_5ATTRmax))))
(-> (!! (-P- OBJproc_5ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)) ([=] (-V- OBJproc_5ATTRactive) (yesterday (-V- OBJproc_5ATTRactive))))
(-> (!! (-P- OBJproc_5ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)) ([=] (-V- OBJproc_5ATTRmynumber) (yesterday (-V- OBJproc_5ATTRmynumber))))
(-> (!! (-P- OBJproc_5ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)) ([=] (-V- OBJproc_5ATTRneighbourR) (yesterday (-V- OBJproc_5ATTRneighbourR))))

;;proc_5 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@286edac4 SEMANTICS

;;STATE MAIN
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_5_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN))))

;;STATE WIN
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_5_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_5_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWIN) (-P- OBJproc_5_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_5_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN))))

;;STATE INIT
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT)))
(-> (-P- BigBang) (next (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_5_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT))))

;;STATE LOST
(-> (-P- BigBang) (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_5_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_5_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATELOST) (!! (-P- OBJproc_5_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATELOST) (-P- OBJproc_5_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST)) (next (-P- OBJproc_5_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_5ATTRactive) 1) (||  ([<=] (-V- OBJproc_5ATTRneighbourR) (-V- OBJproc_5OPtwoPARAMtwo_nr)) ([<=] (-V- OBJproc_5ATTRneighbourR) (-V- OBJproc_5ATTRmax))))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPtwo)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) ([=] (-V- OBJproc_5ATTRactive) 0))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_5ATTRactive) 1) (&&  ([>] (-V- OBJproc_5ATTRneighbourR) (-V- OBJproc_5OPtwoPARAMtwo_nr)) ([>] (-V- OBJproc_5ATTRneighbourR) (-V- OBJproc_5ATTRmax))))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPtwo)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_5ATTRmax) (yesterday (-V- OBJproc_5ATTRneighbourR))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPonePARAMone_nr) (yesterday (-V- OBJproc_5ATTRneighbourR))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @setId.call / mynumber=<P>myId, #link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_5_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5OPsetId)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) ([=] (-V- OBJproc_5ATTRmynumber) (yesterday (-V- OBJproc_5OPsetIdPARAMmyId))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPonePARAMone_nr) (-V- OBJproc_5ATTRmynumber)))

(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_5ATTRmax) (-V- OBJproc_5ATTRmynumber)))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_5ATTRactive) 0)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPtwo)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_5OPtwoPARAMtwo_nr))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_5OPwinnerPARAMwin_nr) (-V- OBJproc_5ATTRmynumber))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPwinner)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_5OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_5ATTRactive) 0)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPone)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPonePARAMone_nr) (yesterday (-V- OBJproc_5OPonePARAMone_nr))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_5OPwinnerPARAMwin_nr) (-V- OBJproc_5ATTRmynumber)))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPwinner)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_5OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_5ATTRactive) 1) (!! ([=] (-V- OBJproc_5OPonePARAMone_nr) (-V- OBJproc_5ATTRmax))))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPone)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_5OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) ([=] (-V- OBJproc_5ATTRneighbourR) (yesterday (-V- OBJproc_5OPonePARAMone_nr))))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_5ATTRactive) 1) ([=] (-V- OBJproc_5OPonePARAMone_nr) (-V- OBJproc_5ATTRmax)))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPone)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_6OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_6OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_6OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_6OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_5OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_5we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_5we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))

;;proc_1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_1OPone) (||  (-P- OBJproc_1OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_1OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_1OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_1OPtwo) (||  (-P- OBJproc_1OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_1OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_1OPwinner) (||  (-P- OBJproc_1OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_1OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_1OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_1OPsetId) (-P- OBJproc_1OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL))
;;Attribute semantics
(-> (!! (||  (-P- OBJproc_1ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (-P- OBJproc_1ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax))) ([=] (-V- OBJproc_1ATTRmax) (yesterday (-V- OBJproc_1ATTRmax))))
(-> (!! (-P- OBJproc_1ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)) ([=] (-V- OBJproc_1ATTRactive) (yesterday (-V- OBJproc_1ATTRactive))))
(-> (!! (-P- OBJproc_1ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)) ([=] (-V- OBJproc_1ATTRmynumber) (yesterday (-V- OBJproc_1ATTRmynumber))))
(-> (!! (-P- OBJproc_1ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)) ([=] (-V- OBJproc_1ATTRneighbourR) (yesterday (-V- OBJproc_1ATTRneighbourR))))

;;proc_1 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@286edac4 SEMANTICS

;;STATE MAIN
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN))))

;;STATE WIN
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWIN) (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN))))

;;STATE INIT
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (-P- BigBang) (next (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT))))

;;STATE LOST
(-> (-P- BigBang) (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATELOST) (!! (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATELOST) (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)) (next (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (||  ([<=] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1OPtwoPARAMtwo_nr)) ([<=] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) ([=] (-V- OBJproc_1ATTRactive) 0))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (&&  ([>] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1OPtwoPARAMtwo_nr)) ([>] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_1ATTRmax) (yesterday (-V- OBJproc_1ATTRneighbourR))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPonePARAMone_nr) (yesterday (-V- OBJproc_1ATTRneighbourR))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @setId.call / mynumber=<P>myId, #link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1OPsetId)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) ([=] (-V- OBJproc_1ATTRmynumber) (yesterday (-V- OBJproc_1OPsetIdPARAMmyId))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPonePARAMone_nr) (-V- OBJproc_1ATTRmynumber)))

(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_1ATTRmax) (-V- OBJproc_1ATTRmynumber)))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1ATTRactive) 0)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_1OPtwoPARAMtwo_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1OPwinnerPARAMwin_nr) (-V- OBJproc_1ATTRmynumber))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPwinner)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_1OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1ATTRactive) 0)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPonePARAMone_nr) (yesterday (-V- OBJproc_1OPonePARAMone_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_1OPwinnerPARAMwin_nr) (-V- OBJproc_1ATTRmynumber)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPwinner)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_1OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (!! ([=] (-V- OBJproc_1OPonePARAMone_nr) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_1OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) ([=] (-V- OBJproc_1ATTRneighbourR) (yesterday (-V- OBJproc_1OPonePARAMone_nr))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) ([=] (-V- OBJproc_1OPonePARAMone_nr) (-V- OBJproc_1ATTRmax)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_2OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_2OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_2OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_2OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_1OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))

;;proc_0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_0OPone) (||  (-P- OBJproc_0OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_0OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_0OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_0OPtwo) (||  (-P- OBJproc_0OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_0OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_0OPwinner) (||  (-P- OBJproc_0OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_0OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (-P- OBJproc_0OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(<-> (-P- OBJproc_0OPsetId) (-P- OBJproc_0OPsetId_^KY^V^B0JX_E^E^AEG^RPRO3U0^B^G_CALL))
;;Attribute semantics
(-> (!! (||  (-P- OBJproc_0ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (-P- OBJproc_0ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax))) ([=] (-V- OBJproc_0ATTRmax) (yesterday (-V- OBJproc_0ATTRmax))))
(-> (!! (-P- OBJproc_0ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)) ([=] (-V- OBJproc_0ATTRactive) (yesterday (-V- OBJproc_0ATTRactive))))
(-> (!! (-P- OBJproc_0ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)) ([=] (-V- OBJproc_0ATTRmynumber) (yesterday (-V- OBJproc_0ATTRmynumber))))
(-> (!! (-P- OBJproc_0ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)) ([=] (-V- OBJproc_0ATTRneighbourR) (yesterday (-V- OBJproc_0ATTRneighbourR))))

;;proc_0 STD Process_SMorg.correttouml.uml.diagrams.statediagram.StateDiagram@286edac4 SEMANTICS

;;STATE MAIN
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN))))

;;STATE WIN
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWIN) (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN))))

;;STATE INIT
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (-P- BigBang) (next (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- BigBang)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT))))

;;STATE LOST
(-> (-P- BigBang) (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)))
(!! (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATELOST) (!! (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATELOST) (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)) (next (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (||  ([<=] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0OPtwoPARAMtwo_nr)) ([<=] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive)))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC6JX_E^E^AEG^RPRO3U0^B^Gactive) ([=] (-V- OBJproc_0ATTRactive) 0))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (&&  ([>] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0OPtwoPARAMtwo_nr)) ([>] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC55X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_0ATTRmax) (yesterday (-V- OBJproc_0ATTRneighbourR))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPone_^KY^WC55X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPonePARAMone_nr) (yesterday (-V- OBJproc_0ATTRneighbourR))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @setId.call / mynumber=<P>myId, #link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0OPsetId)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber)))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmynumber) ([=] (-V- OBJproc_0ATTRmynumber) (yesterday (-V- OBJproc_0OPsetIdPARAMmyId))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPone_^KY^WC45X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPonePARAMone_nr) (-V- OBJproc_0ATTRmynumber)))

(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax)))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC45X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC45X_E^E^AEG^RPRO3U0^B^Gmax) ([=] (-V- OBJproc_0ATTRmax) (-V- OBJproc_0ATTRmynumber)))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0ATTRactive) 0)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPtwo_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_0OPtwoPARAMtwo_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0OPwinnerPARAMwin_nr) (-V- OBJproc_0ATTRmynumber))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPwinner)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPwinner_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_0OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0ATTRactive) 0)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPone_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPonePARAMone_nr) (yesterday (-V- OBJproc_0OPonePARAMone_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_0OPwinnerPARAMwin_nr) (-V- OBJproc_0ATTRmynumber)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPwinner)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPwinner_^KY^WC65X_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_0OPwinnerPARAMwin_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (!! ([=] (-V- OBJproc_0OPonePARAMone_nr) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPtwo_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPtwoPARAMtwo_nr) (yesterday (-V- OBJproc_0OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR)))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0ASSIGNMENT_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^GneighbourR) ([=] (-V- OBJproc_0ATTRneighbourR) (yesterday (-V- OBJproc_0OPonePARAMone_nr))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) ([=] (-V- OBJproc_0OPonePARAMone_nr) (-V- OBJproc_0ATTRmax)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_TRIGGER))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_1OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_1OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_1OPwinner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) ([=] (-V- OBJproc_1OPwinnerPARAMwin_nr) (yesterday (-V- OBJproc_0OPonePARAMone_nr))))

(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G)) (next (-P- OBJproc_0we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL)))
(-> (-P- OBJproc_0we_have_winner_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G_CALL) (yesterday (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6ZX_E^E^AEG^RPRO3U0^B^G) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC55X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5ZX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC6^PX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5JX_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC65X_E^E^AEG^RPRO3U0^B^G)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_^KY^WC5^PX_E^E^AEG^RPRO3U0^B^G))))
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
(defvar Q1 (alw (-> (somf (-P- $OBJidGenerator_STDIdGenerator_SM_STATEend)) (somf (-P- $OBJmonitor_STDMonitor_SM_STATEstate_Winner)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- BigBang) (alwf_e (!! (-P- BigBang)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;proc_4 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_4ATTRactive) 1)([=] (-V- OBJproc_4ATTRneighbourR) 0)
;;proc_3 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_3ATTRactive) 1)([=] (-V- OBJproc_3ATTRneighbourR) 0)
;;idGenerator INITIALIZATION SEMANTICS

;;proc_2 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_2ATTRactive) 1)([=] (-V- OBJproc_2ATTRneighbourR) 0)
;;proc_7 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_7ATTRactive) 1)([=] (-V- OBJproc_7ATTRneighbourR) 0)
;;proc_6 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_6ATTRactive) 1)([=] (-V- OBJproc_6ATTRneighbourR) 0)
;;monitor INITIALIZATION SEMANTICS

;;proc_5 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_5ATTRactive) 1)([=] (-V- OBJproc_5ATTRneighbourR) 0)
;;proc_1 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_1ATTRactive) 1)([=] (-V- OBJproc_1ATTRneighbourR) 0)
;;proc_0 INITIALIZATION SEMANTICS
([=] (-V- OBJproc_0ATTRactive) 1)([=] (-V- OBJproc_0ATTRneighbourR) 0)
) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) (!!(yesterday Q1)) initAx))


(ae2bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )