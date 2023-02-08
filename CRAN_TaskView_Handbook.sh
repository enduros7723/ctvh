#!/bin/bash
#------------------------------------------
# Semi-automatic routine
# With auto-compilation
# to .fb2 or .epub file
# Used: wget & pandoc
#------------------------------------------

# CRAN Mirror --- Main channel of delivery
wget -N https://cran.r-project.org/web/views/WebTechnologies.html
wget -N https://cran.r-project.org/web/views/Distributions.html
wget -N https://cran.r-project.org/web/views/TimeSeries.html
wget -N https://cran.r-project.org/web/views/SpatioTemporal.html
wget -N https://cran.r-project.org/web/views/Econometrics.html
wget -N https://cran.r-project.org/web/views/MetaAnalysis.html
wget -N https://cran.r-project.org/web/views/GraphicalModels.html
wget -N https://cran.r-project.org/web/views/ExtremeValue.html
wget -N https://cran.r-project.org/web/views/Cluster.html
wget -N https://cran.r-project.org/web/views/SportsAnalytics.html
wget -N https://cran.r-project.org/web/views/MixedModels.html
wget -N https://cran.r-project.org/web/views/HighPerformanceComputing.html
wget -N https://cran.r-project.org/web/views/Pharmacokinetics.html
wget -N https://cran.r-project.org/web/views/Spatial.html
wget -N https://cran.r-project.org/web/views/Hydrology.html
wget -N https://cran.r-project.org/web/views/TeachingStatistics.html
wget -N https://cran.r-project.org/web/views/OfficialStatistics.html
wget -N https://cran.r-project.org/web/views/Survival.html
wget -N https://cran.r-project.org/web/views/NumericalMathematics.html
wget -N https://cran.r-project.org/web/views/MissingData.html
wget -N https://cran.r-project.org/web/views/Epidemiology.html
wget -N https://cran.r-project.org/web/views/Phylogenetics.html
wget -N https://cran.r-project.org/web/views/Agriculture.html
wget -N https://cran.r-project.org/web/views/ExperimentalDesign.html
wget -N https://cran.r-project.org/web/views/Optimization.html
wget -N https://cran.r-project.org/web/views/CausalInference.html
wget -N https://cran.r-project.org/web/views/ChemPhys.html
wget -N https://cran.r-project.org/web/views/Finance.html
wget -N https://cran.r-project.org/web/views/ReproducibleResearch.html
wget -N https://cran.r-project.org/web/views/MachineLearning.html
wget -N https://cran.r-project.org/web/views/Psychometrics.html
wget -N https://cran.r-project.org/web/views/NaturalLanguageProcessing.html
wget -N https://cran.r-project.org/web/views/Tracking.html
wget -N https://cran.r-project.org/web/views/Databases.html
wget -N https://cran.r-project.org/web/views/MedicalImaging.html
wget -N https://cran.r-project.org/web/views/Bayesian.html
wget -N https://cran.r-project.org/web/views/Environmetrics.html
wget -N https://cran.r-project.org/web/views/FunctionalData.html
wget -N https://cran.r-project.org/web/views/ModelDeployment.html
wget -N https://cran.r-project.org/web/views/ClinicalTrials.html
wget -N https://cran.r-project.org/web/views/Robust.html
wget -N https://cran.r-project.org/web/views/DifferentialEquations.html

# Use Pandoc to convert to epub from multiple html pages:
pandoc -f html -t fb2 -o CRAN_TaskView_Hanbook.fb2 (ls *.html)      # to single fb2
pandoc -f html -t epub -o CRAN_TaskView_Hanbook.epub (ls *.html)    # to single epub

# Delete unnecessary *.html files
rm *html