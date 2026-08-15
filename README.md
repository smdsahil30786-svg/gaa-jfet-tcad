# Silicon Gate-All-Around (GAA) JFET — TCAD Device Simulation

Nano-Electronics coursework project comparing a planar JFET (Device 1) against a
Gate-All-Around JFET (Device 2) using Synopsys Sentaurus TCAD, to evaluate the
electrostatic-control benefit of wrapping the gate around the channel.

## Files

```
tcad/njfet_structure.scm     Sentaurus Structure Editor (SDE) device geometry script:
                              silicon regions, gate/source/drain contact definitions,
                              phosphorus/boron doping profiles, mesh refinement
analysis/gm_calculation.ipynb  Post-processing notebook: computes transconductance
                              gm = dId/dVg from simulated Id-Vg sweeps at VDS = 0.5V
                              and 1V for both devices, and reports gm_max and the
                              VGS at which it occurs
plots/                       Id-Vg and Id-Vd output characteristics and device
                              structure cross-sections for both devices
docs/Project_Proposal.pptx   Original project proposal deck
```

## Notes

- `njfet_structure.scm` is a Sentaurus Structure Editor Scheme command file — open it in
  SDE (`Tools > Command file`) or run non-interactively via `sde` to regenerate the mesh
  (`sdemodel_msh.tdr`) and hand off to Sentaurus Device for the electrical simulation.
- `gm_calculation.ipynb` was run in Google Colab and reads exported Id-Vg CSVs from a
  Drive path (`/content/drive/MyDrive/tcad/...`). To reproduce standalone, export the
  Sentaurus Id-Vg sweep results to CSV and point the notebook at local paths.
- Any transconductance/gain numbers quoted elsewhere (resume, portfolio) should trace
  back to this notebook's printed `gm_max` output — update both together if the
  simulation is rerun.
