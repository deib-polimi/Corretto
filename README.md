CorrettoUML
===========

_CorrettoUML_ is a prototype research tool developed at Politecnico di Milano to translate UML models into the <a href="http://risorse.dei.polimi.it/TRIO/">_TRIO_<a/> temporal logic formalism which is suitable to be formally verified using the _Zot_ bounded model/satisfiability checker https://code.google.com/p/zot/. 

<img src="https://raw.githubusercontent.com/mottalrd/CorrettoUML/master/docs/images/Corretto_1.png" width="250"/> <img src="https://raw.githubusercontent.com/mottalrd/CorrettoUML/master/docs/images/Corretto_2.png" width="250"/>

Detailed description
===========

The following diagrams describe in more details how _Corretto_ works.

<img src="https://raw.githubusercontent.com/mottalrd/CorrettoUML/master/docs/images/mvf_overview.png" width="450" />

The user creates a UML models using <a href="http://www.eclipse.org/papyrus/">Papyrus</a>. Corretto supports both static and behavioral diagrams of different types. The different views communicates by means of a shared set of events enabling the possibility to define complex behaviors. Also, dedicated time concepts borrowed from <a href="http://www.omgmarte.org/">UML/MARTE</a> have been included to predicate on the time dimension of the system.  

Once the UML model is completed the user can use _Corretto_ to formally verify its correctness with two types of checks:

* Model consistency: A UML model is consistent if the different views do not contradict each other. Formally this is translated into the fact that the underlying formal model has at least one execution trace. 

* User defined properties. The user can define a property that must be true for the model using Time Property Diagrams (TPDs) included in the MADES UML profile. Time properties usually refer to the relation of different events in the system with some time constraint. A simple example is if messsage _x_ occurs now, then within 10 time instants object _y_ will be inside state _z_. TPDs are an extesion of CDs used to build temporal logic formulae in UML. 

Once the user decides to run the formal verification, the UML models are first exported in the XMI format, and then translated into their corresponding _TRIO_ metric temporal logic semantics with a suitable transformation tool. Zot is then feeded by the formal model. Zot relies on both the Satisfiability solvers (SAT) and the Satisfiability Modulo Theories solvers (SMT) to verify if the property specified by the user holds or not. If the property holds no action is required on the model and the user is just notified of the result. If the property does not hold, a counterexample is returned. Counterexamples in Zot are simple text traces representing an execution of the system that violates the property.

_Corretto_ automatically associate each element in the _ZOT_ trace to its corresponding element in the UML model. Navigating the trace resume closely the debugging paradigm of well know programming languages. This is an example:

<img src="https://raw.githubusercontent.com/mottalrd/CorrettoUML/master/docs/images/ccas_traceability.png" width="450" />

Code contributors
===========

* <a href="http://www.alfredo.motta.name">Alfredo Motta</a>

* <a href="http://deepse.dei.polimi.it/person_details.php?id=39">Mohammad Mehdi Pourhashem Kallehbasti</a>

