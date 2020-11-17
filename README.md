# SME: BE VHDL 
Le projet consiste à développer un pilote de barre franche sur FPGA
## Binôme
- Kassandra BONHOURE 
- Sofiane AOUCI

## Structure du répertoire
### docs
On y trouve les documents liés au BE

### TP
On y trouve les premiers projets d'initiation au développement en VHDL
- Quartus 9
- Cyclone II carte DE2

### BE
On y trouve le projet du BE
- Quartus 18.1
- Cyclone IV carte DE0
- Modelsim
- Qsys

Celui-ci est structuré comme ci-dessous :
- __functions :__ toutes les fonctions et blocs de base du projet
  - _FPGA :_ C'est les blocs VHDL principaux (Diviseur, compteur, PWM, Anémomètre ... etc)
  - _SOPC :_ C'est les fonctions qui comprennent les blocs VHDL + les bus Avalon
- __test_benches :__ C'est les fonctions VHDL qui nous permettent de tester les blocs de base sur le FPGA
- __Simulation_files :__ C'est les fichiers VHDL qui nous permettent de simuler les blocs de base sur ModelSim
- __Functions_dev :__ Le répertoire contenant le projet Quartus 18.1 pour le développement des blocs de base
- __SOPC_dev :__ Le répertoire contenant le projet Quartus et NIOS pour le développement du SoC
