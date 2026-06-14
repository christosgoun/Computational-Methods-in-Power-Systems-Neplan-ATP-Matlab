# Power Engineering & Grid Simulation Portfolio

Welcome to my Power Engineering portfolio. This repository aggregates advanced engineering studies, grid simulations, and infrastructure designs developed during my Integrated MEng curriculum at the Aristotle University of Thessaloniki (AUTh). 

The projects contained herein cover the entire spectrum of modern Power Systems Engineering: risk assessment, insulation coordination, short-circuit analytics, transient phenomena, and dynamic stability, utilizing industry-standard software frameworks (**NEPLAN**, **ATP/EMTP**, **Autodesk Fusion**).

---

## Portfolio Content & Project Summaries

### 1. Lightning Protection & Earthing System Design (IEC 62305)
*   **Application Structure:** A modern commercial hilltop complex in Rhodes, Greece, integrating rooftop/ground PV arrays and an EV charging hub.
*   **Methodology & Execution:**
    *   **Risk Assessment:** Evaluated multi-variable failure risks using `RAPPAL_v4` to establish a certified **LPS Class IV** baseline.
    *   **Air-Termination Field Design:** Utilized the **Rolling Sphere Method** ($R = 60\text{m}$) verified via 3D modeling in `Autodesk Fusion` to position air-termination rods on the main facility and illumination poles.
    *   **Earthing & Shielding:** Implemented a Type B foundation mesh earthing grid with copper tape ($20\text{mm} \times 2.5\text{mm}$) and engineered a coordinated Class I/II/III surge protection device (SPD) cascading scheme for AC/DC networks and MV transformers.

### 2. Short-Circuit Calculations & Grid Analytics (IEC 60909)
*   **Application Structure:** A complex transmission and distribution network (150kV/15kV/20kV/6kV) tied to a generation substation.
*   **Methodology & Execution:**
    *   **Fault Analysis:** Simulated balanced (3-phase) and unbalanced (1-phase-to-ground) short circuits in `NEPLAN` to calculate peak ($i_p$), initial ($I_k''$), and thermal equivalent ($I_{th}$) currents[cite: 2].
    *   **Distributed Generation (DG) Impact:** Evaluated how localized DG integration raises short-circuit stress and alters traditional bidirectional protection relays[cite: 2].
    *   **Zero-Sequence Verification:** Analyzed current pathways to prove how a $Yd5$ transformer connection topology traps zero-sequence components during a secondary-side ground fault[cite: 2].

### 3. Electromagnetic Transients (EMT) & Machine Stability[cite: 3, 4]
*   **Application Structure:** High-voltage long-distance overhead transmission lines (220km)[cite: 3], 33kV trefoil underground cable systems[cite: 4], and heavy industrial synchronous machines[cite: 4].
*   **Methodology & Execution:**
    *   **Overhead Line Transients:** Simulated line switching transients in `ATP/EMTP` across multiple frequency spectra (50Hz, 1.5kHz, 10kHz), comparing Lumped ($\pi$-circuits) vs. Distributed Constant (Bergeron) vs. Frequency-Dependent (JMarti) configurations[cite: 3].
    *   **Ferranti Effect Overvoltage:** Designed a 3.96 H Shunt Reactor network via MATLAB Symbolic Toolkit matrix scaling to suppress open-circuit voltage rises at the receiving terminal[cite: 3].
    *   **Insulation Coordination:** Traced double-exponential lightning surge reflections along physical conductor structures using a matching **Bewley Lattice Diagram**[cite: 3].
    *   **Cable Sheath Optimization:** Modeled underground installations to prove that a 2-major-section **Cross Bonding** profile mitigates sheath circulating currents ($mA$ bounds) compared to conventional Solid Bonding[cite: 4].
    *   **Generator Rotor Dynamics:** Tracked dynamic stability thresholds of synchronous generators (`SM 58/59` blocks) under steep load adjustments (20MW vs. 200MW) and terminal faults using the rotor swing equation[cite: 4].

---

## Technical Toolkit & Software Proficiencies
*   **Power System Simulation:** NEPLAN V10, ATP/EMTP (ATPDraw V7.3)[cite: 2, 3]
*   **Mathematical Processing:** MATLAB / Symbolic Math Toolkit[cite: 3]
*   **Standards & Compliance:** IEC 62305 (Parts 1-4), IEC 60909:2016, EN 62561[cite: 2]

---


    ├── Report_Overhead_Transients.pdf
    ├── Report_Cables_and_Generators.pdf
    └── MATLAB_Scripts/
