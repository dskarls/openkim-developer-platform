#!/bin/bash

kimitems install -D  Sim_LAMMPS_MEAM_Wagner_2007_SiC__SM_264944083668_000

# for testing non-matching of special-purpose models
kimitems install -D  Sim_LAMMPS_CoreShell_MitchellFincham_1993_NaCl__SM_672022050407_000

kimitems install -D LatticeConstantCubicEnergy_diamond_C__TE_072855742236_007
kimitems install -D LatticeConstant2DHexagonalEnergy_graphene_C__TE_638394465817_002
kimitems install -D ElasticConstantsCubic_diamond_C__TE_266299090062_001
kimitems install -D CohesiveEnergyVsLatticeConstant_diamond_C__TE_609752483801_004
kimitems install -D ClusterEnergyAndForces_3atom_Si__TE_002471259796_003
kimitems install -D TriclinicPBCEnergyAndForces_bcc2atom_Si__TE_006970922000_003

# should not match with anything
kimitems install -D LatticeConstantCubicEnergy_bcc_Na__TE_750720776577_007

pipeline-database set local

pipeline-run-pair LatticeConstantCubicEnergy_diamond_C__TE_072855742236_007 Sim_LAMMPS_MEAM_Wagner_2007_SiC__SM_264944083668_000
pipeline-run-pair LatticeConstant2DHexagonalEnergy_graphene_C__TE_638394465817_002 Sim_LAMMPS_MEAM_Wagner_2007_SiC__SM_264944083668_000
pipeline-run-pair ElasticConstantsCubic_diamond_C__TE_266299090062_001 Sim_LAMMPS_MEAM_Wagner_2007_SiC__SM_264944083668_000
pipeline-run-pair CohesiveEnergyVsLatticeConstant_diamond_C__TE_609752483801_004 Sim_LAMMPS_MEAM_Wagner_2007_SiC__SM_264944083668_000
pipeline-run-pair ClusterEnergyAndForces_3atom_Si__TE_002471259796_003 Sim_LAMMPS_MEAM_Wagner_2007_SiC__SM_264944083668_000
pipeline-run-pair TriclinicPBCEnergyAndForces_bcc2atom_Si__TE_006970922000_003 Sim_LAMMPS_MEAM_Wagner_2007_SiC__SM_264944083668_000

# should not match with anything
pipeline-run-matches LatticeConstantCubicEnergy_bcc_Na__TE_750720776577_007