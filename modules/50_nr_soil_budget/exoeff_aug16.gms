*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de


*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/50_nr_soil_budget/exoeff_aug16/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/50_nr_soil_budget/exoeff_aug16/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/50_nr_soil_budget/exoeff_aug16/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/50_nr_soil_budget/exoeff_aug16/equations.gms"
$Ifi "%phase%" == "presolve" $include "./modules/50_nr_soil_budget/exoeff_aug16/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/50_nr_soil_budget/exoeff_aug16/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
