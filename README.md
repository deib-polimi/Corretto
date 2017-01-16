CorrettoUML
===========

_CorrettoUML_ is a prototype research tool developed at Politecnico di Milano to translate Corretto UML (C-UML) models into the <a href="http://risorse.dei.polimi.it/TRIO/">_TRIO_<a/> temporal logic formalism which is suitable to be formally verified using the <a href="https://github.com/fm-polimi/zot/">_Zot_<a/> bounded model/satisfiability checker. 

<p align="center">
<img src="https://raw.githubusercontent.com/deib-polimi/Corretto/master/docs/images/Corretto_1.png" width="250"/> <img src="https://raw.githubusercontent.com/deib-polimi/Corretto/master/docs/images/Corretto_2.png" width="250"/>
</p>

Detailed description
===========

The following figure describea in more details how _Corretto_ works.
<p align="center">
<img src="https://raw.githubusercontent.com/deib-polimi/Corretto/master/docs/images/mvf_overview1.png" width="450" />
</p>

The user creates a C-UML models using <a href="http://www.eclipse.org/papyrus/">Papyrus</a>. Corretto supports both static and behavioral diagrams of different types. The different views communicates by means of a shared set of events enabling the possibility to define complex behaviors. Also, dedicated time concepts borrowed from <a href="http://www.omgmarte.org/">UML/MARTE</a> have been included to predicate on the time dimension of the system. The <a href="https://github.com/deib-polimi/Corretto/tree/master/docs/Metamodels.pdf">C-UML Superstructure Specification</a> presents the metamodels for C-UML models.

Once the C-UML model is completed the user can use _Corretto_ to formally verify its correctness with two types of checks:

* Model consistency: A C-UML model is consistent if the different views do not contradict each other. Formally this is translated into the fact that the underlying formal model has at least one execution trace. 

* User defined properties: In C-UML, the properties to be checked are expressed through the Corretto Property Language (CPL), which is inspired by OCL and has a straightforward translation into the TRIO metric temporal logic. The properties to be checked are introduced through a special-purpose constraint associated with the main C-UML model package, which is tagged with stereotype «property» and contains a sequence of declarations in CPL.

Once the user decides to run the formal verification, the C-UML models are first exported in the XMI format, and then translated into their corresponding _TRIO_ metric temporal logic semantics with a suitable transformation tool. <a href="https://github.com/fm-polimi/zot/">Zot<a/> is then fed by the formal model. <a href="https://github.com/fm-polimi/zot/">Zot<a/> relies on both the Satisfiability solvers (SAT) and the Satisfiability Modulo Theories solvers (SMT) to verify if the property specified by the user holds or not. If the property holds no action is required on the model and the user is just notified of the result. If the property does not hold, a counterexample is returned. Counterexamples in <a href="https://github.com/fm-polimi/zot/">Zot<a/> are simple text traces representing an execution of the system that violates the property.

_Corretto_ automatically associate each element in the <a href="https://github.com/fm-polimi/zot/">_Zot_<a/> trace to its corresponding element in the C-UML model. Navigating the trace resume closely the debugging paradigm of well know programming languages. This is an example:

<p align="center">
<img src="https://raw.githubusercontent.com/deib-polimi/Corretto/master/docs/images/zotTraceability.png" width="450" />
</p>

Experimental Evaluation
===========
* <a href="https://github.com/deib-polimi/Corretto/tree/master/org.correttouml.uml2zot/testmodels/">C-UML test models.</a>
* <a href="https://github.com/deib-polimi/Corretto/tree/master/org.correttouml.uml2zot/test/org/correttouml/uml2zot/tests/scalability/">C-UML scalability test models.</a>
* <a href="https://github.com/deib-polimi/Corretto/tree/master/docs/Benchmark/">Benchmark with Zot models and verification results</a>

Code contributors
===========

* <a href="http://www.alfredo.motta.name">Alfredo Motta</a>

* <a href="http://deepse.dei.polimi.it/person_details.php?id=39">Mohammad Mehdi Pourhashem Kallehbasti</a>

