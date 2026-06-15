# Computational Methods in Power Systems Engineering

Welcome to the repository for our research and engineering simulations conducted for the **Department of Electrical and Computer Engineering at the Aristotle University of Thessaloniki (AUTh)**. 

This repository documents the complete engineering stack, analytical calculations, and transient simulation models for power grid fault analysis, high-voltage overhead transmission line configurations, underground cable bonding topologies, and synchronous generator transient dynamics.

---

## 🛠️ Engineering Software Stack
* **Simulation Packages:** ATP/EMTP (ATPDraw 7.3), NEPLAN
* **Mathematical Modeling:** MATLAB (Symbolic Math Toolkit)
* **Automation & Visualization:** Microsoft Power Platform, Power BI

---

## 📂 Project Architecture & Repository Structure
├── Milestone_01_Short_Circuit_Analysis/
│   ├── Neplan_Models/          # .nef project files for grid topologies
│   └── Report_01_IEC60909.pdf  # Comprehensive short-circuit report
│
├── Milestone_02_Overhead_Lines_Transients/
│   ├── ATP_Models/             # .atp and .pl4 files for line switching & surges
│   ├── MATLAB_Scripts/
│   │   ├── calcABCD.m          # Hyperbolic matrix evaluation for long lines
│   │   ├── Comp_way1.m         # Symbolic admittance solution via matrix math
│   │   └── Comp_way2.m         # Alternative boundary condition solver
│   └── Report_02_Transmission.pdf
│
├── Milestone_03_Underground_Cables_Generators/
│   ├── ATP_Models/             # Cross-bonding and machine transient simulations
│   └── Report_03_Cables_Machines.pdf
└── README.md                   # Repository Documentation
## 📝 Technical Overview & Implementation Details

### Milestone 1: Short-Circuit Computations (IEC 60909)
* **Objective:** Hand calculations vs. NEPLAN validation of symmetrical and asymmetrical maximum/minimum short-circuit currents ($I_k''$, $i_p$, $I_{th}$, $I_k$) at voltage levels up to 150 kV.
* **Key Implementations:**
  * Application of generator/station correction factors ($K_S$) to synchronize analytical impedance matrices with software environments.
  * Quantitative analysis of Distributed Generation (DG) units. Modeling confirmed that active DG units systematically inflate local fault duties, while star-delta (Yd5) ungrounded transformer topologies isolate zero-sequence paths, dropping single-line-to-ground fault currents to exactly zero on ungrounded lower-voltage sub-buses.

### Milestone 2: Transient Phenomena in Overhead Transmission Lines (OHL)
* **Objective:** Steady-state and transient modeling of a 220 km high-voltage transmission system operating at 50 Hz.
* **Key Implementations:**
  * **Matrix Parameter Extraction:** Evaluation of internal vs. ground-return impedances across frequencies (50 Hz, 1.5 kHz, 10 kHz) to profile the frequency-dependent impacts of skin effect.
  * **Ferranti Effect Mitigation:** Developed analytical code using MATLAB's Symbolic Math Toolkit to compute the exact shunt reactor inductance ($L = 3.96\text{ H}$) required at the open receiving end to regulate overvoltages down to nominal ratings.
  * **Model Benchmarking:** Comparison of Lumped $\Pi$-circuits, Bergeron models, and frequency-dependent J. Marti models under line-energization conditions. Models confirmed the absolute failure of 1-$\Pi$ configurations to capture high-frequency components, and identified numerical oscillations introduced by cascaded 10-$\Pi$ models.
  * **Lightning Surges:** Simulation of lightning strokes and insulation tracking using Bewley Lattice diagrams to map propagation velocity reductions in high-frequency regimes.

### Milestone 3: Underground Cables & Synchronous Machine Dynamics
* **Objective:** Shield bonding optimization for 33 kV buried cable systems and transient stability profiling of utility-scale synchronous generators (SM 58/59 model).
* **Key Implementations:**
  * **Buried Cable Bonding Topologies:** Modeled and compared **Solid Bonding** against **Cross-Bonding** (1 vs. 2 Major Sections). Results proved that Cross-Bonding with 2 Major Sections successfully mitigates sheath circulating currents from Amperes down to Milliamperes by capturing continuous phase shifts, optimizing thermal efficiency and cable lifespan.
  * **Generator Transient Stability:** Simulated sudden load-step insertions (20 MW vs. 200 MW) and metallic short-circuits (100 ms, 1000 ms, 5000 ms) using ATPDraw. Plotted angular velocity deviations ($d\omega/dt$) and electromagnetic torque variations ($T_e$). Validated grid separation limits using the Swing Equation and the Equal Area Criterion.

---

## 👥 Authors & Group 11 Members
* **Christos Gounaris** (AEM: 10638)
* Georgios Xerogiannakis (AEM: 10871)
* Georgios Eftyhiakos (AEM: 10647)
* Ilias Lykas (AEM: 10430)
