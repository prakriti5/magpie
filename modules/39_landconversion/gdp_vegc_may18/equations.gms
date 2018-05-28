*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

*' @equations
*' Establishment costs apply on expansion of cropland, pasture and forestry.
*' Clearing costs apply on reduction of primary forest, secondary forest and other natural land.
*' The sum of establishment and clearing costs in the current time step 
*' is multiplied with an annuity factor to distribute these costs over time. 
q39_cost_landcon_annuity(j2,land) .. v39_cost_landcon_annuity(j2,land) =e=
	(vm_landexpansion(j2,land)*pc39_establish_costs(j2,land)
 	+ vm_landreduction(j2,land)*pc39_landclear_costs(j2,land))
 	* sum(cell(i2,j2),pm_interest(i2)/(1+pm_interest(i2)));

*' Land conversion costs in the current time step consist of 
*' the annuitized costs for land conversion in the current time step `v39_cost_landcon_annuity` 
*' and the land conversion costs from the past `pc39_cost_landcon_past`.
q39_cost_landcon(j2,land) .. vm_cost_landcon(j2,land) =e=
			v39_cost_landcon_annuity(j2,land) + pc39_cost_landcon_past(j2,land);
