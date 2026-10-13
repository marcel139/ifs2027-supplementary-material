# Supplementary Material

This repository contains supplementary artefacts for the paper *Translating and Verifying RoboSim Models for the CLEARSY Safety Platform*, submitted for anonymous review.

The material supports the evaluation of a mechanised translation from RoboSim models into B0 implementations conforming to the CLEARSY Safety Platform (CSSP) programming model, together with the verification of RoboTool-generated forbidden traces using linear temporal logic (LTL) and ProB.

## 1. Case Studies

The repository contains four RoboSim case studies.

### SRanger

The main case study used for the detailed evaluation reported in the paper.

SRanger models a mobile robot that moves forward, detects obstacles, stops, turns for a clock-controlled period, and resumes movement. The model was adapted to the supported RoboSim subset, using boolean motor commands.

The supplementary artefacts include:

- The adapted RoboSim model (`SRanger.rst`).
- The specification containing 42 forbidden traces (`SRanger_forbidden_traces.rtspec`).
- The generated B implementation and supporting CSSP components.
- The generated LTL formulae (`formulas_SRanger.txt`).
- The ProB verification results at scope 10 (`SRanger_scope10.tsv`).

The paper additionally reports a seeded-fault evaluation on this model, investigating the detection capabilities and limitations of the verification approach.

### AndMachine

An additional case study exercising the translation and verification of communicating state machines, including asynchronous connections, combined event guards, and output values involving constants and literals.

The material is organised into two component-specific directories:

- `Machine_1/`
- `Machine_2/`

Each directory contains the corresponding RoboSim model and forbidden-trace specification, generated B components, LTL formulae, and ProB verification results.

A diagram of the model is provided in `AndMachine.png`.

### PoliteDelivery

An additional case study exercising features including state updates, RoboSim platform output events, and final states.

The material is organised into two component-specific directories:

- `Delivery/`
- `Movement/`

Each directory contains the corresponding RoboSim model and forbidden-trace specification, generated B components, LTL formulae, and ProB verification results.

A diagram of the model is provided in `PoliteDelivery.png`.

### SRangerPlus

An extension of SRanger introducing an additional input event and successive junctions.

The supplementary artefacts include:

- The RoboSim model (`SRanger_plus.rst`).
- The forbidden-trace specification (`SRanger_plus.rtspec`).
- The generated B implementation and supporting CSSP components.
- The generated LTL formulae (`formulas_SRanger_plus.txt`).
- A diagram of the extended model (`sranger_plus.png`).

## 2. Repository Organisation

```text
.
├── README.md
├── AndMachine/
│   ├── AndMachine.png
│   ├── Machine_1/
│   └── Machine_2/
├── PoliteDelivery/
│   ├── PoliteDelivery.png
│   ├── Delivery/
│   └── Movement/
├── SRanger/
│   └── SRanger/
└── SRangerPlus/
    └── SRangerPlus/
```

Within each component directory, the artefacts are organised into the following subdirectories:

| Directory | Contents |
|---|---|
| `RoboSim Model and Forbidden Traces/` | RoboSim source model (`.rst`) and forbidden-trace specification (`.rtspec`). |
| `Generated B Code/` | Generated B implementation and supporting components for the CSSP programming model. |
| `LTL Formulas/` | Generated LTL formulae (`.txt`) and, where included, ProB verification results (`.tsv`). |

The `Generated B Code/prob_specific/` subdirectory contains B components adapted for analysis with ProB.

## 3. Translation and Verification Artefacts

The artefacts illustrate the translation and verification workflow described in the paper:

1. **RoboSim model:** The source model specifies the cyclic behaviour of the robotic controller.
2. **Forbidden traces:** RoboTool-generated specifications describe sequences of observable events that must be excluded.
3. **Generated B code:** The translation produces B components following the CSSP programming model.
4. **LTL formulae:** Each forbidden trace is encoded into prefix-feasibility and full-trace checks.
5. **ProB results:** Where provided, TSV reports record the outcomes of the generated verification checks.

For each forbidden trace, the verification approach checks that its prefix is feasible and that the complete forbidden trace cannot occur. Structural checks complement LTL model checking by validating assumptions about the generated implementation.

## 4. Evaluation Scope

All four case studies were used to evaluate translation and verification, with successful runs reported in the paper.

The detailed experimental evaluation focuses on SRanger. It includes 42 forbidden traces, 84 baseline checks, and seeded faults designed to exercise different aspects of the generated implementation.

The other three case studies exercise additional RoboSim features and provide evidence of the applicability of the translation and verification procedure beyond the main example.

These experiments do not constitute a general proof of semantic preservation between RoboSim and B, nor do they establish scalability across arbitrary RoboSim models. The verification results are subject to the models, properties, and bounds considered in the evaluation.

## 5. Tools

The artefacts are associated with the following tools and technologies:

- **RoboSim / RoboTool:** Modelling and generation of forbidden-trace specifications.
- **B / Atelier CSSP:** Target implementation language and deployment toolchain.
- **ProB:** Animation and LTL model checking of the generated B implementations.
- **ProBoSim:** Mechanised translation and verification workflow described in the paper.

The experiments reported in the paper used ProB 1.16.0. The main SRanger verification experiments used scope 10.

## 6. Anonymous Review

This repository is provided as supplementary material for anonymous peer review. Its contents are intended to support inspection of the models, generated implementations, verification formulae, and available experimental results described in the submitted paper.
