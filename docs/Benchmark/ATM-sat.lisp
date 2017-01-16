;  Model statistics:
;  263	:Number of UML elements
;  7	:Number of objects
;  0	:Number of activity diagrams
;  0	:Number of nodes in activity diagrams
;  24	:Number of states
;  51	:Number of transitions
;  0	:Number of lifelines in sequence diagrams
;  0	:Number of messages in sequence diagrams
;  0	:Number of parameters in sequence diagrams
;  0	:Number of time contraints in sequence diagrams
;  0	:Number of clocks
;  0	:Number of nodes in interaction overview diagrams
;  7	:Number of arithmetic variables
(asdf:operate 'asdf:load-op 'ae2bvzot)
(use-package :trio-utils)
(defvar TSPACE 100)
;; Variables:
(define-tvar OBJatmOPatm_selectAmountPARAMamount *int*)
(define-tvar OBJcontrollerOPctr_selectAmountPARAMamount *int*)
(define-tvar OBJcashdispenserOPcd_releaseMoneyPARAMamount_released *int*)
(define-tvar OBJcontrollerATTRamount_requested *int*)
(define-tvar OBJbankOPbk_executeWithdrawalPARAMamount *int*)
(define-tvar OBJconsoleOPcs_selectAmountPARAMamount *int*)
(define-tvar OBJuserATTRamount *int*)
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

;;controllerSEMANTICS
;;Object operation definitions
(<-> (-P- OBJcontrollerOPctr_notifyMoneyReleased) (-P- OBJcontrollerOPctr_notifyMoneyReleased_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJcontrollerOPctr_notifyWithdrawalAccepted) (-P- OBJcontrollerOPctr_notifyWithdrawalAccepted_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJcontrollerOPctr_selectAmount) (-P- OBJcontrollerOPctr_selectAmount_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJcontrollerOPctr_cardInserted) (-P- OBJcontrollerOPctr_cardInserted_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJcontrollerOPctr_notifyPinDeclined) (-P- OBJcontrollerOPctr_notifyPinDeclined_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJcontrollerOPctr_notifyWithdrawalDeclined) (-P- OBJcontrollerOPctr_notifyWithdrawalDeclined_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJcontrollerOPctr_notifyPinAccepted) (-P- OBJcontrollerOPctr_notifyPinAccepted_^_^UOI^GD5^PE^EK2^NZX1VREXI^W_CALL))
(<-> (-P- OBJcontrollerOPctr_verifyPin) (-P- OBJcontrollerOPctr_verifyPin_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G_CALL))
;;Attribute semantics
(-> (!! (-P- OBJcontrollerASSIGNMENT_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^Gamount_requested)) ([=] (-V- OBJcontrollerATTRamount_requested) (yesterday (-V- OBJcontrollerATTRamount_requested))))

;;controller STD StateMachine1org.correttouml.uml.diagrams.statediagram.StateDiagram@c451a4f SEMANTICS

;;STATE ejecting_card
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEejecting_card_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEejecting_card_EXIT) (-P- OBJcontroller_STDStateMachine1_TRANSITION_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card) (!! (-P- OBJcontroller_STDStateMachine1_STATEejecting_card_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card) (-P- OBJcontroller_STDStateMachine1_STATEejecting_card_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card)) (next (-P- OBJcontroller_STDStateMachine1_STATEejecting_card_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEejecting_card_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card))))

;;STATE withdrawal_accepted
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted_EXIT) (-P- OBJcontroller_STDStateMachine1_TRANSITION_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted) (!! (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted) (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted)) (next (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted))))

;;STATE pin_verification
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_EXIT) (||  (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (!! (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification)) (next (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification))))

;;STATE pin_accepted
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEpin_accepted_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEpin_accepted_EXIT) (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted) (!! (-P- OBJcontroller_STDStateMachine1_STATEpin_accepted_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted) (-P- OBJcontroller_STDStateMachine1_STATEpin_accepted_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted)) (next (-P- OBJcontroller_STDStateMachine1_STATEpin_accepted_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEpin_accepted_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted))))

;;STATE money_released
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEmoney_released_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_^F^GA^UUDTME^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEmoney_released_EXIT) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released) (!! (-P- OBJcontroller_STDStateMachine1_STATEmoney_released_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released) (-P- OBJcontroller_STDStateMachine1_STATEmoney_released_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released)) (next (-P- OBJcontroller_STDStateMachine1_STATEmoney_released_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEmoney_released_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released))))

;;STATE releasing_money
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEreleasing_money_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEreleasing_money_EXIT) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^F^GA^UUDTME^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money) (!! (-P- OBJcontroller_STDStateMachine1_STATEreleasing_money_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money) (-P- OBJcontroller_STDStateMachine1_STATEreleasing_money_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money)) (next (-P- OBJcontroller_STDStateMachine1_STATEreleasing_money_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEreleasing_money_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money))))

;;STATE card_inserted
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEcard_inserted_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_AGLMYDTGE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEcard_inserted_EXIT) (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted) (!! (-P- OBJcontroller_STDStateMachine1_STATEcard_inserted_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted) (-P- OBJcontroller_STDStateMachine1_STATEcard_inserted_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted)) (next (-P- OBJcontroller_STDStateMachine1_STATEcard_inserted_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEcard_inserted_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted))))

;;STATE withdrawal_started
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_EXIT) (||  (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (!! (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started)) (next (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started))))

;;STATE amount_selected
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEamount_selected_ENTER) (yesterday (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEamount_selected_EXIT) (-P- OBJcontroller_STDStateMachine1_TRANSITION_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected) (!! (-P- OBJcontroller_STDStateMachine1_STATEamount_selected_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected) (-P- OBJcontroller_STDStateMachine1_STATEamount_selected_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected)) (next (-P- OBJcontroller_STDStateMachine1_STATEamount_selected_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEamount_selected_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected))))

;;STATE Idle
(-> (-P- BigBang) (!! (-P- $OBJcontroller_STDStateMachine1_STATEIdle)))
(-> (-P- BigBang) (next (-P- OBJcontroller_STDStateMachine1_STATEIdle_ENTER)))
(-> (-P- OBJcontroller_STDStateMachine1_STATEIdle_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcontroller_STDStateMachine1_TRANSITION_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJcontroller_STDStateMachine1_STATEIdle_EXIT) (-P- OBJcontroller_STDStateMachine1_TRANSITION_AGLMYDTGE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEIdle) (!! (-P- OBJcontroller_STDStateMachine1_STATEIdle_EXIT))) (next (-P- $OBJcontroller_STDStateMachine1_STATEIdle)))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEIdle) (-P- OBJcontroller_STDStateMachine1_STATEIdle_EXIT)) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEIdle))))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEIdle)) (next (-P- OBJcontroller_STDStateMachine1_STATEIdle_ENTER))) (next (-P- $OBJcontroller_STDStateMachine1_STATEIdle)))
(-> (&&  (!! (-P- $OBJcontroller_STDStateMachine1_STATEIdle)) (next (!! (-P- OBJcontroller_STDStateMachine1_STATEIdle_ENTER)))) (next (!! (-P- $OBJcontroller_STDStateMachine1_STATEIdle))))

;;TRANSITION / #controller_cashDispenser_1.cashDispenser@cd_releaseMoney(amount_requested).call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEreleasing_money_ENTER))))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G) (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcashdispenserOPcd_releaseMoney_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcashdispenserOPcd_releaseMoney_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJcashdispenserOPcd_releaseMoney_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G_CALL) ([=] (-V- OBJcashdispenserOPcd_releaseMoneyPARAMamount_released) (-V- OBJcontrollerATTRamount_requested)))


;;TRANSITION @ctr_notifyWithdrawalAccepted.call / #console_controller_1.console@cs_notifyWithdrawalAccepted.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_accepted_ENTER))))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontrollerOPctr_notifyWithdrawalAccepted)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJconsoleOPcs_notifyWithdrawalAccepted_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJconsoleOPcs_notifyWithdrawalAccepted_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION / #controller_bank_1.bank@bk_executeWithdrawal(amount_requested).call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEamount_selected_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_ENTER))))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G) (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected) (-P- OBJcontroller_STDStateMachine1_TRANSITION_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G)) (next (-P- OBJbankOPbk_executeWithdrawal_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G_CALL)))
(-> (-P- OBJbankOPbk_executeWithdrawal_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEamount_selected) (-P- OBJcontroller_STDStateMachine1_TRANSITION_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G))))
(-> (-P- OBJbankOPbk_executeWithdrawal_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G_CALL) ([=] (-V- OBJbankOPbk_executeWithdrawalPARAMamount) (-V- OBJcontrollerATTRamount_requested)))


;;TRANSITION @ctr_notifyWithdrawalDeclined.call / #console_controller_1.console@cs_notifyWithdrawalDeclined.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEwithdrawal_started_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEIdle_ENTER))))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontrollerOPctr_notifyWithdrawalDeclined)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJconsoleOPcs_notifyWithdrawalDeclined_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJconsoleOPcs_notifyWithdrawalDeclined_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEwithdrawal_started) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJcontroller_STDStateMachine1_TRANSITION_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION @ctr_selectAmount.call / amount_requested=<P>amount
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEpin_accepted_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEamount_selected_ENTER))))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted) (-P- OBJcontrollerOPctr_selectAmount)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcontrollerASSIGNMENT_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^Gamount_requested)))
(-> (-P- OBJcontrollerASSIGNMENT_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^Gamount_requested) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_accepted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJcontrollerASSIGNMENT_O^LL^_MDTHE^EKH^N^B_V^Y6^IAL^Gamount_requested) ([=] (-V- OBJcontrollerATTRamount_requested) (yesterday (-V- OBJcontrollerOPctr_selectAmountPARAMamount))))

;;TRANSITION @ctr_notifyPinAccepted.call / #console_controller_1.console@cs_notifyPinAccepted.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEpin_accepted_ENTER))))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontrollerOPctr_notifyPinAccepted)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJconsoleOPcs_notifyPinAccepted_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJconsoleOPcs_notifyPinAccepted_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION @ctr_notifyPinDeclined.call / #console_controller_1.console@cs_notifyPinDeclined.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEIdle_ENTER))))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontrollerOPctr_notifyPinDeclined)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJconsoleOPcs_notifyPinDeclined_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJconsoleOPcs_notifyPinDeclined_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEpin_verification) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJcontroller_STDStateMachine1_TRANSITION_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION @ctr_notifyMoneyReleased.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^F^GA^UUDTME^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEreleasing_money_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEmoney_released_ENTER))))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^F^GA^UUDTME^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^F^GA^UUDTME^EKH^N^B_V^Y6^IAL^G))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^F^GA^UUDTME^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^F^GA^UUDTME^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEreleasing_money) (-P- OBJcontrollerOPctr_notifyMoneyReleased)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^F^GA^UUDTME^EKH^N^B_V^Y6^IAL^G_TRIGGER))

;;TRANSITION / #console_controller_1.console@cs_notifyWithdrawalAccepted.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEejecting_card_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEIdle_ENTER))))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G) (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card) (-P- OBJcontroller_STDStateMachine1_TRANSITION_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJconsoleOPcs_notifyWithdrawalAccepted_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJconsoleOPcs_notifyWithdrawalAccepted_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEejecting_card) (-P- OBJcontroller_STDStateMachine1_TRANSITION_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G))))


;;TRANSITION @ctr_verifyPin.call / #cardReader_controller_1.cardReader@cr_verifyPin.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEcard_inserted_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEpin_verification_ENTER))))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted) (-P- OBJcontrollerOPctr_verifyPin)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcardreaderOPcr_verifyPin_F428^SDTGE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcardreaderOPcr_verifyPin_F428^SDTGE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEcard_inserted) (-P- OBJcontroller_STDStateMachine1_TRANSITION_F428^SDTGE^EKH^N^B_V^Y6^IAL^G))))


;;TRANSITION / #cardReader_controller_1.cardReader@cr_ejectCard.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEmoney_released_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEejecting_card_ENTER))))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G) (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcardreaderOPcr_ejectCard_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcardreaderOPcr_ejectCard_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcontroller_STDStateMachine1_STATEmoney_released) (-P- OBJcontroller_STDStateMachine1_TRANSITION_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G))))


;;TRANSITION @ctr_cardInserted.call
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_AGLMYDTGE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcontroller_STDStateMachine1_STATEIdle_EXIT) (next (-P- OBJcontroller_STDStateMachine1_STATEcard_inserted_ENTER))))
(-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEIdle) (-P- OBJcontroller_STDStateMachine1_TRANSITION_AGLMYDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_AGLMYDTGE^EKH^N^B_V^Y6^IAL^G))
(-> (-P- OBJcontroller_STDStateMachine1_TRANSITION_AGLMYDTGE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcontroller_STDStateMachine1_STATEIdle) (-P- OBJcontroller_STDStateMachine1_TRANSITION_AGLMYDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcontroller_STDStateMachine1_STATEIdle) (-P- OBJcontrollerOPctr_cardInserted)) (-P- OBJcontroller_STDStateMachine1_TRANSITION_AGLMYDTGE^EKH^N^B_V^Y6^IAL^G_TRIGGER))

;;atmSEMANTICS
;;Object operation definitions
(<-> (-P- OBJatmOPatm_notifyWithdrawalDeclined) (-P- OBJatmOPatm_notifyWithdrawalDeclined_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJatmOPatm_notifyPinDeclined) (-P- OBJatmOPatm_notifyPinDeclined_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJatmOPatm_insertCard) (-P- OBJatmOPatm_insertCard_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJatmOPatm_notifyPinAccepted) (-P- OBJatmOPatm_notifyPinAccepted_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJatmOPatm_notifyWithdrawalAccepted) (-P- OBJatmOPatm_notifyWithdrawalAccepted_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJatmOPatm_verifyPin) (-P- OBJatmOPatm_verifyPin_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJatmOPatm_selectAmount) (-P- OBJatmOPatm_selectAmount_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G_CALL))
;;Attribute semantics

;;atm STD StateMachine1org.correttouml.uml.diagrams.statediagram.StateDiagram@46f0474a SEMANTICS

;;STATE State0
(-> (-P- BigBang) (!! (-P- $OBJatm_STDStateMachine1_STATEState0)))
(-> (-P- BigBang) (next (-P- OBJatm_STDStateMachine1_STATEState0_ENTER)))
(-> (-P- OBJatm_STDStateMachine1_STATEState0_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJatm_STDStateMachine1_STATEState0_EXIT))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (!! (-P- OBJatm_STDStateMachine1_STATEState0_EXIT))) (next (-P- $OBJatm_STDStateMachine1_STATEState0)))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_STATEState0_EXIT)) (next (!! (-P- $OBJatm_STDStateMachine1_STATEState0))))
(-> (&&  (!! (-P- $OBJatm_STDStateMachine1_STATEState0)) (next (-P- OBJatm_STDStateMachine1_STATEState0_ENTER))) (next (-P- $OBJatm_STDStateMachine1_STATEState0)))
(-> (&&  (!! (-P- $OBJatm_STDStateMachine1_STATEState0)) (next (!! (-P- OBJatm_STDStateMachine1_STATEState0_ENTER)))) (next (!! (-P- $OBJatm_STDStateMachine1_STATEState0))))

;;TRANSITION @atm_insertCard.call / #aTM_cardReader_1.cardReader@cr_readCard.call
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatmOPatm_insertCard)) (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcardreaderOPcr_readCard_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcardreaderOPcr_readCard_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @atm_notifyWithdrawalDeclined.call / #user_aTM_1.user@usr_notifyWithdrawalDeclined.call
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatmOPatm_notifyWithdrawalDeclined)) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJuserOPusr_notifyWithdrawalDeclined_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJuserOPusr_notifyWithdrawalDeclined_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @atm_notifyPinDeclined.call / #user_aTM_1.user@usr_notifyPinDeclined.call
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatmOPatm_notifyPinDeclined)) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJuserOPusr_notifyPinDeclined_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJuserOPusr_notifyPinDeclined_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @atm_verifyPin.call / #aTM_console_1.console@cs_verifyPin.call
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatmOPatm_verifyPin)) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJconsoleOPcs_verifyPin_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJconsoleOPcs_verifyPin_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @atm_notifyPinAccepted.call / #user_aTM_1.user@usr_notifyPinAccepted.call
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatmOPatm_notifyPinAccepted)) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJuserOPusr_notifyPinAccepted_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJuserOPusr_notifyPinAccepted_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @atm_notifyCardEjected.call  / #user_aTM_1.user@usr_notifyCardEjected.call
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatmOPatm_notifyCardEjected)) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJuserOPusr_notifyCardEjected_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJuserOPusr_notifyCardEjected_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @atm_selectAmount.call / #aTM_console_1.console@cs_selectAmount(<P>amount).call
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatmOPatm_selectAmount)) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJconsoleOPcs_selectAmount_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJconsoleOPcs_selectAmount_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJconsoleOPcs_selectAmount_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G_CALL) ([=] (-V- OBJconsoleOPcs_selectAmountPARAMamount) (yesterday (-V- OBJatmOPatm_selectAmountPARAMamount))))

(-> (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @atm_notifyWithdrawalAccepted.call / #user_aTM_1.user@usr_notifyWithdrawalAccepted.call
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatmOPatm_notifyWithdrawalAccepted)) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJuserOPusr_notifyWithdrawalAccepted_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJuserOPusr_notifyWithdrawalAccepted_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJatm_STDStateMachine1_STATEState0) (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJatm_STDStateMachine1_TRANSITION_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJatm_STDStateMachine1_TRANSITION_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G))))

;;cashdispenserSEMANTICS
;;Object operation definitions
(<-> (-P- OBJcashdispenserOPcd_releaseMoney) (-P- OBJcashdispenserOPcd_releaseMoney_Y_^JSADTME^EKH^N^B_V^Y6^IAL^G_CALL))
;;Attribute semantics

;;cashdispenser STD StateMachine1org.correttouml.uml.diagrams.statediagram.StateDiagram@a028ee5 SEMANTICS

;;STATE ready
(-> (-P- BigBang) (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEready)))
(-> (-P- BigBang) (next (-P- OBJcashdispenser_STDStateMachine1_STATEready_ENTER)))
(-> (-P- OBJcashdispenser_STDStateMachine1_STATEready_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJcashdispenser_STDStateMachine1_STATEready_EXIT) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_^Y^B3^W0DTLE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEready) (!! (-P- OBJcashdispenser_STDStateMachine1_STATEready_EXIT))) (next (-P- $OBJcashdispenser_STDStateMachine1_STATEready)))
(-> (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEready) (-P- OBJcashdispenser_STDStateMachine1_STATEready_EXIT)) (next (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEready))))
(-> (&&  (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEready)) (next (-P- OBJcashdispenser_STDStateMachine1_STATEready_ENTER))) (next (-P- $OBJcashdispenser_STDStateMachine1_STATEready)))
(-> (&&  (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEready)) (next (!! (-P- OBJcashdispenser_STDStateMachine1_STATEready_ENTER)))) (next (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEready))))

;;STATE delivering_money
(-> (-P- BigBang) (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money)))
(-> (-P- OBJcashdispenser_STDStateMachine1_STATEdelivering_money_ENTER) (yesterday (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_^Y^B3^W0DTLE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcashdispenser_STDStateMachine1_STATEdelivering_money_EXIT) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money) (!! (-P- OBJcashdispenser_STDStateMachine1_STATEdelivering_money_EXIT))) (next (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money)))
(-> (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money) (-P- OBJcashdispenser_STDStateMachine1_STATEdelivering_money_EXIT)) (next (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money))))
(-> (&&  (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money)) (next (-P- OBJcashdispenser_STDStateMachine1_STATEdelivering_money_ENTER))) (next (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money)))
(-> (&&  (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money)) (next (!! (-P- OBJcashdispenser_STDStateMachine1_STATEdelivering_money_ENTER)))) (next (!! (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money))))

;;TRANSITION /#controller_cashDispenser_1.controller@ctr_notifyMoneyReleased.call
(-> (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcashdispenser_STDStateMachine1_STATEdelivering_money_EXIT) (next (-P- OBJcashdispenser_STDStateMachine1_STATEready_ENTER))))
(-> (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G) (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money))
(-> (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcontrollerOPctr_notifyMoneyReleased_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcontrollerOPctr_notifyMoneyReleased_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEdelivering_money) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_1^OP^MMDTLE^EKH^N^B_V^Y6^IAL^G))))


;;TRANSITION @cd_releaseMoney.call
(-> (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_^Y^B3^W0DTLE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcashdispenser_STDStateMachine1_STATEready_EXIT) (next (-P- OBJcashdispenser_STDStateMachine1_STATEdelivering_money_ENTER))))
(-> (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEready) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_^Y^B3^W0DTLE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_^Y^B3^W0DTLE^EKH^N^B_V^Y6^IAL^G))
(-> (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_^Y^B3^W0DTLE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEready) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_^Y^B3^W0DTLE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcashdispenser_STDStateMachine1_STATEready) (-P- OBJcashdispenserOPcd_releaseMoney)) (-P- OBJcashdispenser_STDStateMachine1_TRANSITION_^Y^B3^W0DTLE^EKH^N^B_V^Y6^IAL^G_TRIGGER))

;;userSEMANTICS
;;Object operation definitions
(<-> (-P- OBJuserOPusr_notifyPinAccepted) (-P- OBJuserOPusr_notifyPinAccepted_8^SA^I^SDS^XE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJuserOPusr_notifyPinDeclined) (-P- OBJuserOPusr_notifyPinDeclined_W^A2U4DS^XE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJuserOPusr_notifyWithdrawalDeclined) (-P- OBJuserOPusr_notifyWithdrawalDeclined_^C^Z014DTBE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJuserOPusr_notifyWithdrawalAccepted) (-P- OBJuserOPusr_notifyWithdrawalAccepted_RZ^W^MUDTBE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJuserOPusr_notifyCardEjected) (-P- OBJuserOPusr_notifyCardEjected_^XF^FVEDS9E^EKH^N^B_V^Y6^IAL^G_CALL))
;;Attribute semantics
([=] (-V- OBJuserATTRamount) (yesterday (-V- OBJuserATTRamount)))

;;user STD StateMachine1org.correttouml.uml.diagrams.statediagram.StateDiagram@2f882609 SEMANTICS

;;STATE amount_selected_waiting_for_approval
(-> (-P- BigBang) (!! (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval)))
(-> (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_ENTER) (yesterday (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_EXIT) (||  (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G)))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval) (!! (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_EXIT))) (next (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval)))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval) (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_EXIT)) (next (!! (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval))))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval)) (next (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_ENTER))) (next (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval)))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval)) (next (!! (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_ENTER)))) (next (!! (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval))))

;;STATE card_inserted_waiting_ping
(-> (-P- BigBang) (!! (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping)))
(-> (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_ENTER) (yesterday (||  (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_EXIT) (-P- OBJuser_STDStateMachine1_TRANSITION_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping) (!! (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_EXIT))) (next (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping)))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping) (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_EXIT)) (next (!! (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping))))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping)) (next (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_ENTER))) (next (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping)))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping)) (next (!! (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_ENTER)))) (next (!! (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping))))

;;STATE account_selected
(-> (-P- BigBang) (!! (-P- $OBJuser_STDStateMachine1_STATEaccount_selected)))
(-> (-P- OBJuser_STDStateMachine1_STATEaccount_selected_ENTER) (yesterday (||  (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJuser_STDStateMachine1_STATEaccount_selected_EXIT) (||  (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G)))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEaccount_selected) (!! (-P- OBJuser_STDStateMachine1_STATEaccount_selected_EXIT))) (next (-P- $OBJuser_STDStateMachine1_STATEaccount_selected)))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEaccount_selected) (-P- OBJuser_STDStateMachine1_STATEaccount_selected_EXIT)) (next (!! (-P- $OBJuser_STDStateMachine1_STATEaccount_selected))))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEaccount_selected)) (next (-P- OBJuser_STDStateMachine1_STATEaccount_selected_ENTER))) (next (-P- $OBJuser_STDStateMachine1_STATEaccount_selected)))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEaccount_selected)) (next (!! (-P- OBJuser_STDStateMachine1_STATEaccount_selected_ENTER)))) (next (!! (-P- $OBJuser_STDStateMachine1_STATEaccount_selected))))

;;STATE idle
(-> (-P- BigBang) (!! (-P- $OBJuser_STDStateMachine1_STATEidle)))
(-> (-P- BigBang) (next (-P- OBJuser_STDStateMachine1_STATEidle_ENTER)))
(-> (-P- OBJuser_STDStateMachine1_STATEidle_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJuser_STDStateMachine1_STATEidle_EXIT) (-P- OBJuser_STDStateMachine1_TRANSITION_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEidle) (!! (-P- OBJuser_STDStateMachine1_STATEidle_EXIT))) (next (-P- $OBJuser_STDStateMachine1_STATEidle)))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEidle) (-P- OBJuser_STDStateMachine1_STATEidle_EXIT)) (next (!! (-P- $OBJuser_STDStateMachine1_STATEidle))))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEidle)) (next (-P- OBJuser_STDStateMachine1_STATEidle_ENTER))) (next (-P- $OBJuser_STDStateMachine1_STATEidle)))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEidle)) (next (!! (-P- OBJuser_STDStateMachine1_STATEidle_ENTER)))) (next (!! (-P- $OBJuser_STDStateMachine1_STATEidle))))

;;STATE pin_verification_waiting_for_answer
(-> (-P- BigBang) (!! (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer)))
(-> (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_ENTER) (yesterday (-P- OBJuser_STDStateMachine1_TRANSITION_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_EXIT) (||  (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G)))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer) (!! (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_EXIT))) (next (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer)))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer) (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_EXIT)) (next (!! (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer))))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer)) (next (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_ENTER))) (next (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer)))
(-> (&&  (!! (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer)) (next (!! (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_ENTER)))) (next (!! (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer))))

;;TRANSITION @usr_notifyWithdrawalDeclined.call
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_EXIT) (next (-P- OBJuser_STDStateMachine1_STATEaccount_selected_ENTER))))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval) (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval) (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval) (-P- OBJuserOPusr_notifyWithdrawalDeclined)) (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION / #user_aTM_1.aTM@atm_selectAmount(amount).call
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJuser_STDStateMachine1_STATEaccount_selected_EXIT) (next (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_ENTER))))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G) (-P- $OBJuser_STDStateMachine1_STATEaccount_selected))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEaccount_selected) (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJatmOPatm_selectAmount_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJatmOPatm_selectAmount_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJuser_STDStateMachine1_STATEaccount_selected) (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJatmOPatm_selectAmount_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G_CALL) ([=] (-V- OBJatmOPatm_selectAmountPARAMamount) (-V- OBJuserATTRamount)))

(-> (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION @usr_notifyWithdrawalAccepted.call
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval_EXIT) (next (-P- OBJuser_STDStateMachine1_STATEaccount_selected_ENTER))))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval) (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval) (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJuser_STDStateMachine1_STATEamount_selected_waiting_for_approval) (-P- OBJuserOPusr_notifyWithdrawalAccepted)) (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_3^IHO^GDS^IE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJuser_STDStateMachine1_TRANSITION_KH2^S^GDS^HE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION @usr_notifyPinDeclined.call
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_EXIT) (next (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_ENTER))))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer) (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer) (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer) (-P- OBJuserOPusr_notifyPinDeclined)) (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION / #user_aTM_1.aTM@atm_insertCard.call
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJuser_STDStateMachine1_STATEidle_EXIT) (next (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_ENTER))))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G) (-P- $OBJuser_STDStateMachine1_STATEidle))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEidle) (-P- OBJuser_STDStateMachine1_TRANSITION_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJatmOPatm_insertCard_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJatmOPatm_insertCard_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJuser_STDStateMachine1_STATEidle) (-P- OBJuser_STDStateMachine1_TRANSITION_N^HI5UDS^DE^EKH^N^B_V^Y6^IAL^G))))


;;TRANSITION @usr_notifyCardEjected.call
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJuser_STDStateMachine1_STATEaccount_selected_EXIT) (next (-P- OBJuser_STDStateMachine1_STATEidle_ENTER))))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEaccount_selected) (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJuser_STDStateMachine1_STATEaccount_selected) (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJuser_STDStateMachine1_STATEaccount_selected) (-P- OBJuserOPusr_notifyCardEjected)) (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_F27C0DS^HE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJuser_STDStateMachine1_TRANSITION_767T^WDS^GE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION @usr_notifyPinAccepted.call
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_EXIT) (next (-P- OBJuser_STDStateMachine1_STATEaccount_selected_ENTER))))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer) (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G) (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer) (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer) (-P- OBJuserOPusr_notifyPinAccepted)) (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_^ELHKADS^IE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJuser_STDStateMachine1_TRANSITION_^Z^S^KA^ODS^FE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION / #user_aTM_1.aTM@atm_verifyPin.call
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping_EXIT) (next (-P- OBJuser_STDStateMachine1_STATEpin_verification_waiting_for_answer_ENTER))))
(-> (-P- OBJuser_STDStateMachine1_TRANSITION_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G) (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping))
(-> (&&  (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping) (-P- OBJuser_STDStateMachine1_TRANSITION_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJatmOPatm_verifyPin_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJatmOPatm_verifyPin_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJuser_STDStateMachine1_STATEcard_inserted_waiting_ping) (-P- OBJuser_STDStateMachine1_TRANSITION_^MU6^QEDS^FE^EKH^N^B_V^Y6^IAL^G))))


;;bankSEMANTICS
;;Object operation definitions
(<-> (-P- OBJbankOPbk_executeWithdrawal) (-P- OBJbankOPbk_executeWithdrawal_0^A^DRMD2OE^EKDL^B^A^JG^YL_P^G_CALL))
;;Attribute semantics

;;bank STD StateMachine1org.correttouml.uml.diagrams.statediagram.StateDiagram@2b06fd16 SEMANTICS

;;STATE State1
(-> (-P- BigBang) (!! (-P- $OBJbank_STDStateMachine1_STATEState1)))
(-> (-P- OBJbank_STDStateMachine1_STATEState1_ENTER) (yesterday (-P- OBJbank_STDStateMachine1_TRANSITION_^Y6_LMDTKE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJbank_STDStateMachine1_STATEState1_EXIT) (||  (-P- OBJbank_STDStateMachine1_TRANSITION_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G) (-P- OBJbank_STDStateMachine1_TRANSITION_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G)))
(-> (&&  (-P- $OBJbank_STDStateMachine1_STATEState1) (!! (-P- OBJbank_STDStateMachine1_STATEState1_EXIT))) (next (-P- $OBJbank_STDStateMachine1_STATEState1)))
(-> (&&  (-P- $OBJbank_STDStateMachine1_STATEState1) (-P- OBJbank_STDStateMachine1_STATEState1_EXIT)) (next (!! (-P- $OBJbank_STDStateMachine1_STATEState1))))
(-> (&&  (!! (-P- $OBJbank_STDStateMachine1_STATEState1)) (next (-P- OBJbank_STDStateMachine1_STATEState1_ENTER))) (next (-P- $OBJbank_STDStateMachine1_STATEState1)))
(-> (&&  (!! (-P- $OBJbank_STDStateMachine1_STATEState1)) (next (!! (-P- OBJbank_STDStateMachine1_STATEState1_ENTER)))) (next (!! (-P- $OBJbank_STDStateMachine1_STATEState1))))

;;STATE State0
(-> (-P- BigBang) (!! (-P- $OBJbank_STDStateMachine1_STATEState0)))
(-> (-P- BigBang) (next (-P- OBJbank_STDStateMachine1_STATEState0_ENTER)))
(-> (-P- OBJbank_STDStateMachine1_STATEState0_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJbank_STDStateMachine1_TRANSITION_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G) (-P- OBJbank_STDStateMachine1_TRANSITION_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJbank_STDStateMachine1_STATEState0_EXIT) (-P- OBJbank_STDStateMachine1_TRANSITION_^Y6_LMDTKE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJbank_STDStateMachine1_STATEState0) (!! (-P- OBJbank_STDStateMachine1_STATEState0_EXIT))) (next (-P- $OBJbank_STDStateMachine1_STATEState0)))
(-> (&&  (-P- $OBJbank_STDStateMachine1_STATEState0) (-P- OBJbank_STDStateMachine1_STATEState0_EXIT)) (next (!! (-P- $OBJbank_STDStateMachine1_STATEState0))))
(-> (&&  (!! (-P- $OBJbank_STDStateMachine1_STATEState0)) (next (-P- OBJbank_STDStateMachine1_STATEState0_ENTER))) (next (-P- $OBJbank_STDStateMachine1_STATEState0)))
(-> (&&  (!! (-P- $OBJbank_STDStateMachine1_STATEState0)) (next (!! (-P- OBJbank_STDStateMachine1_STATEState0_ENTER)))) (next (!! (-P- $OBJbank_STDStateMachine1_STATEState0))))

;;TRANSITION @bk_executeWithdrawal.call
(-> (-P- OBJbank_STDStateMachine1_TRANSITION_^Y6_LMDTKE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJbank_STDStateMachine1_STATEState0_EXIT) (next (-P- OBJbank_STDStateMachine1_STATEState1_ENTER))))
(-> (&&  (-P- $OBJbank_STDStateMachine1_STATEState0) (-P- OBJbank_STDStateMachine1_TRANSITION_^Y6_LMDTKE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (-P- OBJbank_STDStateMachine1_TRANSITION_^Y6_LMDTKE^EKH^N^B_V^Y6^IAL^G))
(-> (-P- OBJbank_STDStateMachine1_TRANSITION_^Y6_LMDTKE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJbank_STDStateMachine1_STATEState0) (-P- OBJbank_STDStateMachine1_TRANSITION_^Y6_LMDTKE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJbank_STDStateMachine1_STATEState0) (-P- OBJbankOPbk_executeWithdrawal)) (-P- OBJbank_STDStateMachine1_TRANSITION_^Y6_LMDTKE^EKH^N^B_V^Y6^IAL^G_TRIGGER))

;;TRANSITION / #controller_bank_1.controller@ctr_notifyWithdrawalDeclined.call
(-> (-P- OBJbank_STDStateMachine1_TRANSITION_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJbank_STDStateMachine1_STATEState1_EXIT) (next (-P- OBJbank_STDStateMachine1_STATEState0_ENTER))))
(-> (-P- OBJbank_STDStateMachine1_TRANSITION_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G) (-P- $OBJbank_STDStateMachine1_STATEState1))
(-> (&&  (-P- $OBJbank_STDStateMachine1_STATEState1) (-P- OBJbank_STDStateMachine1_TRANSITION_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcontrollerOPctr_notifyWithdrawalDeclined_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcontrollerOPctr_notifyWithdrawalDeclined_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJbank_STDStateMachine1_STATEState1) (-P- OBJbank_STDStateMachine1_TRANSITION_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJbank_STDStateMachine1_TRANSITION_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJbank_STDStateMachine1_TRANSITION_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION / #controller_bank_1.controller@ctr_notifyWithdrawalAccepted.call
(-> (-P- OBJbank_STDStateMachine1_TRANSITION_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJbank_STDStateMachine1_STATEState1_EXIT) (next (-P- OBJbank_STDStateMachine1_STATEState0_ENTER))))
(-> (-P- OBJbank_STDStateMachine1_TRANSITION_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G) (-P- $OBJbank_STDStateMachine1_STATEState1))
(-> (&&  (-P- $OBJbank_STDStateMachine1_STATEState1) (-P- OBJbank_STDStateMachine1_TRANSITION_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcontrollerOPctr_notifyWithdrawalAccepted_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcontrollerOPctr_notifyWithdrawalAccepted_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJbank_STDStateMachine1_STATEState1) (-P- OBJbank_STDStateMachine1_TRANSITION_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJbank_STDStateMachine1_TRANSITION_4O^S^G^GDTKE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJbank_STDStateMachine1_TRANSITION_9^J^T^DYDTKE^EKH^N^B_V^Y6^IAL^G)))

;;cardreaderSEMANTICS
;;Object operation definitions
(<-> (-P- OBJcardreaderOPcr_verifyPin) (-P- OBJcardreaderOPcr_verifyPin_F428^SDTGE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJcardreaderOPcr_readCard) (-P- OBJcardreaderOPcr_readCard_^QWKCMDS^WE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJcardreaderOPcr_ejectCard) (-P- OBJcardreaderOPcr_ejectCard_^O^CK^XADTME^EKH^N^B_V^Y6^IAL^G_CALL))
;;Attribute semantics

;;cardreader STD StateMachine1org.correttouml.uml.diagrams.statediagram.StateDiagram@27144c1b SEMANTICS

;;STATE verifying_pin
(-> (-P- BigBang) (!! (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin)))
(-> (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_ENTER) (yesterday (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_EXIT) (||  (-P- OBJcardreader_STDStateMachine1_TRANSITION_^_^UOI^GD5^PE^EK2^NZX1VREXI^W) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G)))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin) (!! (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_EXIT))) (next (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin)))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin) (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_EXIT)) (next (!! (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin))))
(-> (&&  (!! (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin)) (next (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_ENTER))) (next (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin)))
(-> (&&  (!! (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin)) (next (!! (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_ENTER)))) (next (!! (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin))))

;;STATE card_inserted
(-> (-P- BigBang) (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted)))
(-> (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_ENTER) (yesterday (||  (-P- OBJcardreader_STDStateMachine1_TRANSITION_^_^UOI^GD5^PE^EK2^NZX1VREXI^W) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_EXIT) (||  (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G)))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted) (!! (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_EXIT))) (next (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted)))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted) (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_EXIT)) (next (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted))))
(-> (&&  (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted)) (next (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_ENTER))) (next (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted)))
(-> (&&  (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted)) (next (!! (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_ENTER)))) (next (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted))))

;;STATE card_not_inserted
(-> (-P- BigBang) (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted)))
(-> (-P- BigBang) (next (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_ENTER)))
(-> (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_ENTER) (yesterday (||  (-P- BigBang) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_EXIT) (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted) (!! (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_EXIT))) (next (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted)))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted) (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_EXIT)) (next (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted))))
(-> (&&  (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted)) (next (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_ENTER))) (next (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted)))
(-> (&&  (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted)) (next (!! (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_ENTER)))) (next (!! (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted))))

;;TRANSITION / #cardReader_controller_1.controller@ctr_notifyPinAccepted.call
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^_^UOI^GD5^PE^EK2^NZX1VREXI^W) (&&  (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_EXIT) (next (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_ENTER))))
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^_^UOI^GD5^PE^EK2^NZX1VREXI^W) (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^_^UOI^GD5^PE^EK2^NZX1VREXI^W)) (next (-P- OBJcontrollerOPctr_notifyPinAccepted_^_^UOI^GD5^PE^EK2^NZX1VREXI^W_CALL)))
(-> (-P- OBJcontrollerOPctr_notifyPinAccepted_^_^UOI^GD5^PE^EK2^NZX1VREXI^W_CALL) (yesterday (&&  (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^_^UOI^GD5^PE^EK2^NZX1VREXI^W))))

(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^_^UOI^GD5^PE^EK2^NZX1VREXI^W) (!! (-P- OBJcardreader_STDStateMachine1_TRANSITION_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION / #cardReader_controller_1.controller@ctr_notifyPinDeclined.call
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_EXIT) (next (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_ENTER))))
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G) (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcontrollerOPctr_notifyPinDeclined_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcontrollerOPctr_notifyPinDeclined_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcardreader_STDStateMachine1_STATEverifying_pin) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^GU52UDTJE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJcardreader_STDStateMachine1_TRANSITION_^_^UOI^GD5^PE^EK2^NZX1VREXI^W)))

;;TRANSITION @cr_ejectCard.call
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_EXIT) (next (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_ENTER))))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted) (-P- OBJcardreaderOPcr_ejectCard)) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION @cr_verifyPin.call 
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_EXIT) (next (-P- OBJcardreader_STDStateMachine1_STATEverifying_pin_ENTER))))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_inserted) (-P- OBJcardreaderOPcr_verifyPin)) (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_^A^QLIIDTJE^EKH^N^B_V^Y6^IAL^G) (!! (-P- OBJcardreader_STDStateMachine1_TRANSITION_^QGY^_^GDTJE^EKH^N^B_V^Y6^IAL^G)))

;;TRANSITION @cr_readCard.call / #cardReader_controller_1.controller@ctr_cardInserted.call
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- OBJcardreader_STDStateMachine1_STATEcard_not_inserted_EXIT) (next (-P- OBJcardreader_STDStateMachine1_STATEcard_inserted_ENTER))))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted) (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G))
(-> (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted) (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted) (-P- OBJcardreaderOPcr_readCard)) (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted) (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcontrollerOPctr_cardInserted_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcontrollerOPctr_cardInserted_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJcardreader_STDStateMachine1_STATEcard_not_inserted) (-P- OBJcardreader_STDStateMachine1_TRANSITION_MO^ACIDTJE^EKH^N^B_V^Y6^IAL^G))))


;;consoleSEMANTICS
;;Object operation definitions
(<-> (-P- OBJconsoleOPcs_notifyWithdrawalDeclined) (-P- OBJconsoleOPcs_notifyWithdrawalDeclined_^CZP^J8DTHE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJconsoleOPcs_notifyWithdrawalAccepted) (||  (-P- OBJconsoleOPcs_notifyWithdrawalAccepted_^R^E9^L4DTHE^EKH^N^B_V^Y6^IAL^G_CALL) (-P- OBJconsoleOPcs_notifyWithdrawalAccepted_0Y^W^E0DTME^EKH^N^B_V^Y6^IAL^G_CALL)))
(<-> (-P- OBJconsoleOPcs_selectAmount) (-P- OBJconsoleOPcs_selectAmount_AJ_^H8DS^XE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJconsoleOPcs_verifyPin) (-P- OBJconsoleOPcs_verifyPin_^XNF^D^WDS^WE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJconsoleOPcs_notifyPinDeclined) (-P- OBJconsoleOPcs_notifyPinDeclined_^NMT6YDTGE^EKH^N^B_V^Y6^IAL^G_CALL))
(<-> (-P- OBJconsoleOPcs_notifyPinAccepted) (-P- OBJconsoleOPcs_notifyPinAccepted_R^Q^SMADTGE^EKH^N^B_V^Y6^IAL^G_CALL))
;;Attribute semantics

;;console STD StateMachine1org.correttouml.uml.diagrams.statediagram.StateDiagram@5ef1946a SEMANTICS

;;STATE State0
(-> (-P- BigBang) (!! (-P- $OBJconsole_STDStateMachine1_STATEState0)))
(-> (-P- BigBang) (next (-P- OBJconsole_STDStateMachine1_STATEState0_ENTER)))
(-> (-P- OBJconsole_STDStateMachine1_STATEState0_ENTER) (yesterday (-P- BigBang)))
(!! (-P- OBJconsole_STDStateMachine1_STATEState0_EXIT))
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (!! (-P- OBJconsole_STDStateMachine1_STATEState0_EXIT))) (next (-P- $OBJconsole_STDStateMachine1_STATEState0)))
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_STATEState0_EXIT)) (next (!! (-P- $OBJconsole_STDStateMachine1_STATEState0))))
(-> (&&  (!! (-P- $OBJconsole_STDStateMachine1_STATEState0)) (next (-P- OBJconsole_STDStateMachine1_STATEState0_ENTER))) (next (-P- $OBJconsole_STDStateMachine1_STATEState0)))
(-> (&&  (!! (-P- $OBJconsole_STDStateMachine1_STATEState0)) (next (!! (-P- OBJconsole_STDStateMachine1_STATEState0_ENTER)))) (next (!! (-P- $OBJconsole_STDStateMachine1_STATEState0))))

;;TRANSITION @cs_notifyWithdrawalAccepted.call / #aTM_console_1.aTM@atm_notifyWithdrawalAccepted.call
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsoleOPcs_notifyWithdrawalAccepted)) (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJatmOPatm_notifyWithdrawalAccepted_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJatmOPatm_notifyWithdrawalAccepted_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @cs_notifyWithdrawalDeclined.call / #aTM_console_1.aTM@atm_notifyWithdrawalDeclined.call
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsoleOPcs_notifyWithdrawalDeclined)) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJatmOPatm_notifyWithdrawalDeclined_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJatmOPatm_notifyWithdrawalDeclined_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @cs_notifyPinDeclined.call / #aTM_console_1.aTM@atm_notifyPinDeclined.call
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsoleOPcs_notifyPinDeclined)) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJatmOPatm_notifyPinDeclined_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJatmOPatm_notifyPinDeclined_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @cs_selectAmount.call / #console_controller_1.controller@ctr_selectAmount(<P>amount).call
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsoleOPcs_selectAmount)) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcontrollerOPctr_selectAmount_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcontrollerOPctr_selectAmount_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G))))
(-> (-P- OBJcontrollerOPctr_selectAmount_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G_CALL) ([=] (-V- OBJcontrollerOPctr_selectAmountPARAMamount) (yesterday (-V- OBJconsoleOPcs_selectAmountPARAMamount))))

(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @cs_notifyPinAccepted.call / #aTM_console_1.aTM@atm_notifyPinAccepted.call
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsoleOPcs_notifyPinAccepted)) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJatmOPatm_notifyPinAccepted_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJatmOPatm_notifyPinAccepted_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G))))

;;TRANSITION @cs_verifyPin.call / #console_controller_1.controller@ctr_verifyPin.call
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G_TRIGGER)) (||  (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G)))
(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G) (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G_TRIGGER)))
(<-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsoleOPcs_verifyPin)) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G_TRIGGER))
(-> (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G)) (next (-P- OBJcontrollerOPctr_verifyPin_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G_CALL)))
(-> (-P- OBJcontrollerOPctr_verifyPin_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G_CALL) (yesterday (&&  (-P- $OBJconsole_STDStateMachine1_STATEState0) (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G))))

(-> (-P- OBJconsole_STDStateMachine1_TRANSITION_9T^R^_ADTCE^EKH^N^B_V^Y6^IAL^G) (&&  (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_3_^T^T^GDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_C85^Z0DTEE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^WDQ0UDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_ZR^ZO^SDTDE^EKH^N^B_V^Y6^IAL^G)) (!! (-P- OBJconsole_STDStateMachine1_TRANSITION_^J^LG^Q^GDTDE^EKH^N^B_V^Y6^IAL^G))))
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- BigBang) (alwf_e (!! (-P- BigBang)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;controller INITIALIZATION SEMANTICS
([=] (-V- OBJcontrollerATTRamount_requested) 0)
;;atm INITIALIZATION SEMANTICS

;;cashdispenser INITIALIZATION SEMANTICS

;;user INITIALIZATION SEMANTICS
([=] (-V- OBJuserATTRamount) 50)
;;bank INITIALIZATION SEMANTICS

;;cardreader INITIALIZATION SEMANTICS

;;console INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) initAx))


(ae2bvzot:zot TSPACE (&& the_system) :smt-solver :z3 )