$ONEOLCOM
$EOLCOM #
;
OPTION SYSOUT=OFF, SOLPRINT=OFF, LIMROW=0, LIMCOL=0, DECIMALS=6;


# ----------------------------------------------------------------------------------------------------
#  Define function: SolveEmptyNLP
# ----------------------------------------------------------------------------------------------------

sets
	alias_set
	alias_map2
	t
	n
	s
	a
	taxTypes
;

alias(n,nn,nnn);
alias(s,ss);

sets
	alias_[alias_set,alias_map2]
	t0[t]
	tE[t]
	t2E[t]
	tx0[t]
	txE[t]
	tx2E[t]
	tx0E[t]
	tx02E[t]
	map_smallGR_G[s,n,nn]
	map_spinp_smallGR_G[s,n,nn]
	map_spout_smallGR_G[s,n,nn]
	knout_smallGR_G[s,n]
	kninp_smallGR_G[s,n]
	spout_smallGR_G[s,n]
	spinp_smallGR_G[s,n]
	input_smallGR_G[s,n]
	output_smallGR_G[s,n]
	int_smallGR_G[s,n]
	map_gc[s,n,nn]
	knot_gc[s,n]
	branch_gc[s,n]
	knot_o_gc[s,n]
	knot_no_gc[s,n]
	branch2o_gc[s,n]
	branch2no_gc[s,n]
	endo_mu_smallGR_G[s,n,nn]
	input_n_smallGR_G[n]
	s_smallGR_G[s]
	labor[s,n]
	d_TotalTax[s]
	map_smallGR_HH[s,n,nn]
	map_spinp_smallGR_HH[s,n,nn]
	map_spout_smallGR_HH[s,n,nn]
	knout_smallGR_HH[s,n]
	kninp_smallGR_HH[s,n]
	spout_smallGR_HH[s,n]
	spinp_smallGR_HH[s,n]
	input_smallGR_HH[s,n]
	output_smallGR_HH[s,n]
	int_smallGR_HH[s,n]
	map_smallGR_HH_ces[s,n,nn]
	knot_smallGR_HH_ces[s,n]
	branch_smallGR_HH_ces[s,n]
	knot_o_smallGR_HH_ces[s,n]
	knot_no_smallGR_HH_ces[s,n]
	branch2o_smallGR_HH_ces[s,n]
	branch2no_smallGR_HH_ces[s,n]
	endo_mu_smallGR_HH[s,n,nn]
	L2C_smallGR_HH[s,n,nn]
	labor_smallGR_HH[s,n]
	output_n_smallGR_HH[n]
	input_n_smallGR_HH[n]
	s_smallGR_HH[s]
	s_p[s]
	n_p[n]
	n_F[n]
	s_HH[s]
	s_G[s]
	s_i[s]
	s_f[s]
	dur2inv[s,n,nn]
	dur_p[s,n]
	inv_p[s,n]
	nEqui[n]
	d_qS[s,n]
	d_qD[s,n]
	d_qSEqui[s,n]
	d_pEqui[n]
	dom2for[n,nn]
	dExport[s,n]
	dImport[s,n,nn]
	dImport_dom[s,n]
	dImport_for[s,n]
	s_itory[s]
	d_itory[s,n]
	map_smallGR_I[s,n,nn]
	map_spinp_smallGR_I[s,n,nn]
	map_spout_smallGR_I[s,n,nn]
	knout_smallGR_I[s,n]
	kninp_smallGR_I[s,n]
	spout_smallGR_I[s,n]
	spinp_smallGR_I[s,n]
	input_smallGR_I[s,n]
	output_smallGR_I[s,n]
	int_smallGR_I[s,n]
	map_smallGR_I_ces[s,n,nn]
	knot_smallGR_I_ces[s,n]
	branch_smallGR_I_ces[s,n]
	knot_o_smallGR_I_ces[s,n]
	knot_no_smallGR_I_ces[s,n]
	branch2o_smallGR_I_ces[s,n]
	branch2no_smallGR_I_ces[s,n]
	exomu_smallGR_I[s,n,nn]
	endo_qD_smallGR_I[s,n]
	endo_qS_smallGR_I[s,n]
	endo_pS_smallGR_I[s,n]
	dur_smallGR_I[s,n]
	inv_smallGR_I[s,n]
	input_n[n]
	output_n_smallGR_I[n]
	input_n_smallGR_I[n]
	s_smallGR_I[s]
	map_smallGR_P[s,n,nn]
	map_spinp_smallGR_P[s,n,nn]
	map_spout_smallGR_P[s,n,nn]
	knout_smallGR_P[s,n]
	kninp_smallGR_P[s,n]
	spout_smallGR_P[s,n]
	spinp_smallGR_P[s,n]
	input_smallGR_P[s,n]
	output_smallGR_P[s,n]
	int_smallGR_P[s,n]
	map_smallGR_P_ces[s,n,nn]
	knot_smallGR_P_ces[s,n]
	branch_smallGR_P_ces[s,n]
	knot_o_smallGR_P_ces[s,n]
	knot_no_smallGR_P_ces[s,n]
	branch2o_smallGR_P_ces[s,n]
	branch2no_smallGR_P_ces[s,n]
	endo_mu_smallGR_P[s,n,nn]
	endo_qD_smallGR_P[s,n]
	dur_smallGR_P[s,n]
	inv_smallGR_P[s,n]
	output_n_smallGR_P[n]
	input_n_smallGR_P[n]
	s_smallGR_P[s]
	sfor_ndom_smallGR_Tr[s,n]
	nOut_smallGR_Tr[n]
	s_smallGR_Tr[s]
;
$GDXIN %rname%
$onMulti
$load alias_set
$load alias_map2
$load t
$load n
$load s
$load a
$load taxTypes
$load alias_
$load t0
$load tE
$load t2E
$load tx0
$load txE
$load tx2E
$load tx0E
$load tx02E
$load map_smallGR_G
$load map_spinp_smallGR_G
$load map_spout_smallGR_G
$load knout_smallGR_G
$load kninp_smallGR_G
$load spout_smallGR_G
$load spinp_smallGR_G
$load input_smallGR_G
$load output_smallGR_G
$load int_smallGR_G
$load map_gc
$load knot_gc
$load branch_gc
$load knot_o_gc
$load knot_no_gc
$load branch2o_gc
$load branch2no_gc
$load endo_mu_smallGR_G
$load input_n_smallGR_G
$load s_smallGR_G
$load labor
$load d_TotalTax
$load map_smallGR_HH
$load map_spinp_smallGR_HH
$load map_spout_smallGR_HH
$load knout_smallGR_HH
$load kninp_smallGR_HH
$load spout_smallGR_HH
$load spinp_smallGR_HH
$load input_smallGR_HH
$load output_smallGR_HH
$load int_smallGR_HH
$load map_smallGR_HH_ces
$load knot_smallGR_HH_ces
$load branch_smallGR_HH_ces
$load knot_o_smallGR_HH_ces
$load knot_no_smallGR_HH_ces
$load branch2o_smallGR_HH_ces
$load branch2no_smallGR_HH_ces
$load endo_mu_smallGR_HH
$load L2C_smallGR_HH
$load labor_smallGR_HH
$load output_n_smallGR_HH
$load input_n_smallGR_HH
$load s_smallGR_HH
$load s_p
$load n_p
$load n_F
$load s_HH
$load s_G
$load s_i
$load s_f
$load dur2inv
$load dur_p
$load inv_p
$load nEqui
$load d_qS
$load d_qD
$load d_qSEqui
$load d_pEqui
$load dom2for
$load dExport
$load dImport
$load dImport_dom
$load dImport_for
$load s_itory
$load d_itory
$load map_smallGR_I
$load map_spinp_smallGR_I
$load map_spout_smallGR_I
$load knout_smallGR_I
$load kninp_smallGR_I
$load spout_smallGR_I
$load spinp_smallGR_I
$load input_smallGR_I
$load output_smallGR_I
$load int_smallGR_I
$load map_smallGR_I_ces
$load knot_smallGR_I_ces
$load branch_smallGR_I_ces
$load knot_o_smallGR_I_ces
$load knot_no_smallGR_I_ces
$load branch2o_smallGR_I_ces
$load branch2no_smallGR_I_ces
$load exomu_smallGR_I
$load endo_qD_smallGR_I
$load endo_qS_smallGR_I
$load endo_pS_smallGR_I
$load dur_smallGR_I
$load inv_smallGR_I
$load input_n
$load output_n_smallGR_I
$load input_n_smallGR_I
$load s_smallGR_I
$load map_smallGR_P
$load map_spinp_smallGR_P
$load map_spout_smallGR_P
$load knout_smallGR_P
$load kninp_smallGR_P
$load spout_smallGR_P
$load spinp_smallGR_P
$load input_smallGR_P
$load output_smallGR_P
$load int_smallGR_P
$load map_smallGR_P_ces
$load knot_smallGR_P_ces
$load branch_smallGR_P_ces
$load knot_o_smallGR_P_ces
$load knot_no_smallGR_P_ces
$load branch2o_smallGR_P_ces
$load branch2no_smallGR_P_ces
$load endo_mu_smallGR_P
$load endo_qD_smallGR_P
$load dur_smallGR_P
$load inv_smallGR_P
$load output_n_smallGR_P
$load input_n_smallGR_P
$load s_smallGR_P
$load sfor_ndom_smallGR_Tr
$load nOut_smallGR_Tr
$load s_smallGR_Tr
$GDXIN
$offMulti;

parameters
	R_LR
	g_LR
	infl_LR
	jG_budget
	qnorm_inp[t,s,n]
	qnorm_out[t,s,n]
	inventoryAR[s,n]
;
$GDXIN %rname%
$onMulti
$load R_LR
$load g_LR
$load infl_LR
$load jG_budget
$load qnorm_inp
$load qnorm_out
$load inventoryAR
$GDXIN
$offMulti;

variables
	pD[t,s,n]
	qD[t,s,n]
	qiv_inp[t,s,n]
	sp[t,s]
	TotalTax[t,s]
	vAssets[t,s,a]
	mu[s,n,nn]
	tauG_calib
	tauD[t,s,n]
	sigma[s,n]
	Rrate[t]
	iRate[t]
	p[t,n]
	tauD0[t,s,n]
	tauS[t,s,n]
	qS[t,s,n]
	qiv_out[t,s,n]
	pS[t,s,n]
	eta[s,n]
	crra[s,n]
	h_tvc[s]
	frisch[s,n]
	tauLump[t,s]
	Lscale[s,n]
	disc[s]
	vTax[t,s,taxTypes]
	vD[t,s,n]
	vD_inv[t,s,n]
	vD_dur[t,s,n]
	vD_depr[t,s,n]
	rDepr[t,s,n]
	vS[t,s,n]
	pD_dur[t,s,n]
	outShare[t,s,n]
	ic[t,s]
	markup[s]
	icpar[s,n]
	K_tvc[s,n]
	Fscale[s,n]
;
$GDXIN %rname%
$onMulti
$load pD
$load qD
$load qiv_inp
$load sp
$load TotalTax
$load vAssets
$load mu
$load tauG_calib
$load tauD
$load sigma
$load Rrate
$load iRate
$load p
$load tauD0
$load tauS
$load qS
$load qiv_out
$load pS
$load eta
$load crra
$load h_tvc
$load frisch
$load tauLump
$load Lscale
$load disc
$load vTax
$load vD
$load vD_inv
$load vD_dur
$load vD_depr
$load rDepr
$load vS
$load pD_dur
$load outShare
$load ic
$load markup
$load icpar
$load K_tvc
$load Fscale
$GDXIN
$offMulti;




# ------------------------------------------------B_gc------------------------------------------------
#  Initialize B_gc equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_zp_gc[t,s,n];
E_zp_gc[t,s,n]$(knot_gc[s,n] and txe[t]).. 	pD[t,s,n]*qD[t,s,n]  =E=  sum(nn$(map_gc[s,n,nn]), qD[t,s,nn]*pD[t,s,nn]);
EQUATION E_q_gc[t,s,n];
E_q_gc[t,s,n]$(branch_gc[s,n] and txe[t]).. 	qD[t,s,n]  =E=  sum(nn$(map_gc[s,nn,n]), mu[s,nn,n] * (pD[t,s,nn]/pD[t,s,n])**(sigma[s,nn]) * qD[t,s,nn]);

# ----------------------------------------------------------------------------------------------------
#  Define B_gc model
# ----------------------------------------------------------------------------------------------------
Model B_gc /
E_zp_gc, E_q_gc
/;




# -----------------------------------------B_smallGR_G_dynamic----------------------------------------
#  Initialize B_smallGR_G_dynamic equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_lom_smallGR_G_dynamic[t,s];
E_lom_smallGR_G_dynamic[t,s]$(s_smallgr_g[s] and txe[t]).. 				vAssets[t+1,s,'total']	 =E=  (vAssets[t,s,'total']*iRate[t]+sp[t,s])/((1+g_LR)*(1+infl_LR));
EQUATION E_pwInp_smallGR_G_dynamic[t,s,n];
E_pwInp_smallGR_G_dynamic[t,s,n]$(input_smallgr_g[s,n] and txe[t]).. 				pD[t,s,n]		 =E=  p[t,n]+tauD[t,s,n];
EQUATION E_TaxRev_smallGR_G_dynamic[t,s];
E_TaxRev_smallGR_G_dynamic[t,s]$(s_smallgr_g[s] and txe[t]).. 					TotalTax[t,s]	 =E=  sum(n$(input_smallGR_G[s,n]), tauD[t,s,n] * qD[t,s,n]);
EQUATION E_sp_smallGR_G_dynamic[t,s];
E_sp_smallGR_G_dynamic[t,s]$(s_smallgr_g[s] and txe[t]).. 						sp[t,s]			 =E=  sum(ss$(d_TotalTax[ss]), TotalTax[t,ss])- sum(n$(input_smallGR_G[s,n]), pD[t,s,n]*qD[t,s,n])+jG_budget;

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_G_dynamic model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_G_dynamic /
E_lom_smallGR_G_dynamic, E_pwInp_smallGR_G_dynamic, E_TaxRev_smallGR_G_dynamic, E_sp_smallGR_G_dynamic
/;




# -------------------------------------------B_smallGR_G_bb-------------------------------------------
#  Initialize B_smallGR_G_bb equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_bb_smallGR_G_bb[t,s];
E_bb_smallGR_G_bb[t,s]$(s_smallgr_g[s] and tx0e[t])..  sp[t,s]  =E=  0;

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_G_bb model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_G_bb /
E_bb_smallGR_G_bb
/;




# ------------------------------------------B_smallGR_G_calib-----------------------------------------
#  Initialize B_smallGR_G_calib equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_flatCalib_smallGR_G_calib[t,s,n];
E_flatCalib_smallGR_G_calib[t,s,n]$(input_smallgr_g[s,n] and txe[t]).. 		tauD[t,s,n]	 =E=  tauD0[t,s,n]*tauG_calib;

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_G_calib model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_G_calib /
E_flatCalib_smallGR_G_calib
/;




# ------------------------------------------B_smallGR_HH_ces------------------------------------------
#  Initialize B_smallGR_HH_ces equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_zp_smallGR_HH_ces[t,s,n];
E_zp_smallGR_HH_ces[t,s,n]$(knot_smallgr_hh_ces[s,n] and txe[t]).. 	pD[t,s,n]*qD[t,s,n]  =E=  sum(nn$(map_smallGR_HH_ces[s,n,nn]), qD[t,s,nn]*pD[t,s,nn]);
EQUATION E_q_smallGR_HH_ces[t,s,n];
E_q_smallGR_HH_ces[t,s,n]$(branch_smallgr_hh_ces[s,n] and txe[t]).. 	qD[t,s,n]  =E=  sum(nn$(map_smallGR_HH_ces[s,nn,n]), mu[s,nn,n] * (pD[t,s,nn]/pD[t,s,n])**(sigma[s,nn]) * qD[t,s,nn]);

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_HH_ces model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_HH_ces /
E_zp_smallGR_HH_ces, E_q_smallGR_HH_ces
/;




# -----------------------------------------B_smallGR_HH_labor-----------------------------------------
#  Initialize B_smallGR_HH_labor equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_labor_smallGR_HH_labor[t,s,n];
E_labor_smallGR_HH_labor[t,s,n]$(labor_smallgr_hh[s,n] and txe[t]).. 	qS[t,s,n]	 =E= 	Lscale[s,n] * ( sum(nn$(L2C_smallGR_HH[s,n,nn]), pS[t,s,n]/(pD[t,s,nn]*(qD[t,s,nn]**(crra[s,nn]))))**(frisch[s,n]));

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_HH_labor model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_HH_labor /
E_labor_smallGR_HH_labor
/;




# ----------------------------------------B_smallGR_HH_dynamic----------------------------------------
#  Initialize B_smallGR_HH_dynamic equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_lom_smallGR_HH_dynamic[t,s];
E_lom_smallGR_HH_dynamic[t,s]$(s_smallgr_hh[s] and txe[t]).. 				vAssets[t+1,s,'total']	 =E=  (vAssets[t,s,'total']*iRate[t]+sp[t,s])/((1+g_LR)*(1+infl_LR));
EQUATION E_euler_smallGR_HH_dynamic[t,s,n];
E_euler_smallGR_HH_dynamic[t,s,n]$(output_smallgr_hh[s,n] and tx0e[t]).. 	qD[t,s,n]				 =E=  qD[t-1,s,n]*(disc[s]*Rrate[t]*pD[t-1,s,n]/pD[t,s,n])**(1/crra[s,n]);
EQUATION E_tvc_smallGR_HH_dynamic[t,s];
E_tvc_smallGR_HH_dynamic[t,s]$(s_smallgr_hh[s] and te[t]).. 				vAssets[t,s,'total']	 =E=  (1+h_tvc[s])*vAssets[t-1,s,'total'];

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_HH_dynamic model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_HH_dynamic /
E_lom_smallGR_HH_dynamic, E_euler_smallGR_HH_dynamic, E_tvc_smallGR_HH_dynamic
/;




# -------------------------------------------B_smallGR_HH_pw------------------------------------------
#  Initialize B_smallGR_HH_pw equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_pwOut_smallGR_HH_pw[t,s,n];
E_pwOut_smallGR_HH_pw[t,s,n]$(labor_smallgr_hh[s,n] and txe[t]).. 	pS[t,s,n] 		 =E=  p[t,n]-tauS[t,s,n];
EQUATION E_pwInp_smallGR_HH_pw[t,s,n];
E_pwInp_smallGR_HH_pw[t,s,n]$(input_smallgr_hh[s,n] and txe[t]).. 	pD[t,s,n]		 =E=  p[t,n]+tauD[t,s,n];
EQUATION E_TaxRev_smallGR_HH_pw[t,s];
E_TaxRev_smallGR_HH_pw[t,s]$(s_smallgr_hh[s] and txe[t]).. 		TotalTax[t,s]	 =E=  tauLump[t,s]+sum(n$(input_smallGR_HH[s,n]), tauD[t,s,n] * qD[t,s,n])+sum(n$(labor_smallGR_HH[s,n]), tauS[t,s,n]*qS[t,s,n]);
EQUATION E_sp_smallGR_HH_pw[t,s];
E_sp_smallGR_HH_pw[t,s]$(s_smallgr_hh[s] and txe[t]).. 			sp[t,s]			 =E=  sum(n$(labor_smallGR_HH[s,n]), pS[t,s,n]*qS[t,s,n]) - sum(n$(input_smallGR_HH[s,n]), pD[t,s,n]*qD[t,s,n])-tauLump[t,s];

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_HH_pw model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_HH_pw /
E_pwOut_smallGR_HH_pw, E_pwInp_smallGR_HH_pw, E_TaxRev_smallGR_HH_pw, E_sp_smallGR_HH_pw
/;




# -------------------------------------------B_smallGR_itory------------------------------------------
#  Initialize B_smallGR_itory equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_smallGR_itory[t,s,n];
E_smallGR_itory[t,s,n]$(d_itory[s,n] and tx0e[t]).. 	qD[t,s,n]  =E=  inventoryAR[s,n] * qD[t-1,s,n];

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_itory model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_itory /
E_smallGR_itory
/;




# -------------------------------------------B_smallGR_I_ces------------------------------------------
#  Initialize B_smallGR_I_ces equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_zp_out_smallGR_I_ces[t,s,n];
E_zp_out_smallGR_I_ces[t,s,n]$(knot_o_smallgr_i_ces[s,n] and txe[t]).. 	pS[t,s,n]*qS[t,s,n]  =E=  sum(nn$(map_smallGR_I_ces[s,n,nn]), qD[t,s,nn]*pD[t,s,nn]);
EQUATION E_zp_nout_smallGR_I_ces[t,s,n];
E_zp_nout_smallGR_I_ces[t,s,n]$(knot_no_smallgr_i_ces[s,n] and txe[t]).. 	pD[t,s,n]*qD[t,s,n]  =E=  sum(nn$(map_smallGR_I_ces[s,n,nn]), qD[t,s,nn]*pD[t,s,nn]);
EQUATION E_q_out_smallGR_I_ces[t,s,n];
E_q_out_smallGR_I_ces[t,s,n]$(branch2o_smallgr_i_ces[s,n] and txe[t]).. 	qD[t,s,n]  =E=  sum(nn$(map_smallGR_I_ces[s,nn,n]), mu[s,nn,n] * (pS[t,s,nn]/pD[t,s,n])**(sigma[s,nn]) * qS[t,s,nn]);
EQUATION E_q_nout_smallGR_I_ces[t,s,n];
E_q_nout_smallGR_I_ces[t,s,n]$(branch2no_smallgr_i_ces[s,n] and txe[t]).. 	qD[t,s,n]  =E=  sum(nn$(map_smallGR_I_ces[s,nn,n]), mu[s,nn,n] * (pD[t,s,nn]/pD[t,s,n])**(sigma[s,nn]) * qD[t,s,nn]);

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_I_ces model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_I_ces /
E_zp_out_smallGR_I_ces, E_zp_nout_smallGR_I_ces, E_q_out_smallGR_I_ces, E_q_nout_smallGR_I_ces
/;




# -------------------------------------------B_smallGR_I_IC-------------------------------------------
#  Initialize B_smallGR_I_IC equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_lom_smallGR_I_IC[t,s,n];
E_lom_smallGR_I_IC[t,s,n]$(dur_smallgr_i[s,n] and txe[t]).. 		qD[t+1,s,n]	 =E=  (qD[t,s,n]*(1-rDepr[t,s,n])+sum(nn$(dur2inv[s,n,nn]), qD[t,s,nn]))/(1+g_LR);
EQUATION E_pk_smallGR_I_IC[t,s,n];
E_pk_smallGR_I_IC[t,s,n]$(dur_smallgr_i[s,n] and tx02e[t]).. 	pD[t,s,n]	 =E=  sqrt(sqr(sum(nn$(dur2inv[s,n,nn]), Rrate[t]*pD[t-1,s,nn]*(1+icpar[s,n]*(qD[t-1,s,nn]/qD[t-1,s,n]-(rDepr[t-1,s,n]+g_LR)))/(1+infl_LR)+pD[t,s,nn]*(icpar[s,n]*0.5*(sqr(rDepr[t,s,n]+g_LR)-sqr(qD[t,s,nn]/qD[t,s,n]))-(1-rDepr[t,s,n])*(1+icpar[s,n]*(qD[t,s,nn]/qD[t,s,n]-(rDepr[t,s,n]+g_LR)))))));
EQUATION E_pkT_smallGR_I_IC[t,s,n];
E_pkT_smallGR_I_IC[t,s,n]$(dur_smallgr_i[s,n] and t2e[t]).. 		pD[t,s,n]	 =E=  sum(nn$(dur2inv[s,n,nn]), Rrate[t]*pD[t-1,s,nn] * (1+icpar[s,n]*(qD[t-1,s,nn]/qD[t-1,s,n]-(rDepr[t-1,s,n]+g_LR)))/(1+infl_LR) + (rDepr[t,s,n]-1)*pD[t,s,nn]);
EQUATION E_Ktvc_smallGR_I_IC[t,s,n];
E_Ktvc_smallGR_I_IC[t,s,n]$(dur_smallgr_i[s,n] and te[t]).. 		qD[t,s,n]	 =E=  (1+K_tvc[s,n])*qD[t-1,s,n];
EQUATION E_instcost_smallGR_I_IC[t,s];
E_instcost_smallGR_I_IC[t,s]$(s_smallgr_i[s] and txe[t]).. 		ic[t,s] 	 =E=  sum([n,nn]$(dur2inv[s,n,nn]), pD[t,s,nn] * icpar[s,n]*0.5*qD[t,s,n]*sqr(qD[t,s,nn]/qD[t,s,n]-(rDepr[t,s,n]+g_LR)));

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_I_IC model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_I_IC /
E_lom_smallGR_I_IC, E_pk_smallGR_I_IC, E_pkT_smallGR_I_IC, E_Ktvc_smallGR_I_IC, E_instcost_smallGR_I_IC
/;




# -----------------------------------------B_smallGR_I_pWedge-----------------------------------------
#  Initialize B_smallGR_I_pWedge equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_pwInp_smallGR_I_pWedge[t,s,n];
E_pwInp_smallGR_I_pWedge[t,s,n]$(input_smallgr_i[s,n] and txe[t]).. 			pD[t,s,n]		 =E=  p[t,n]+tauD[t,s,n];
EQUATION E_pwOut_smallGR_I_pWedge[t,s,n];
E_pwOut_smallGR_I_pWedge[t,s,n]$(output_smallgr_i[s,n] and txe[t]).. 		p[t,n] 			 =E=  (1+markup[s])*(pS[t,s,n]+tauS[t,s,n]+(outShare[t,s,n]/qS[t,s,n])*(ic[t,s]+tauLump[t,s]));
EQUATION E_outShare_smallGR_I_pWedge[t,s,n];
E_outShare_smallGR_I_pWedge[t,s,n]$(output_smallgr_i[s,n] and txe[t]).. 		outShare[t,s,n]  =E=  qS[t,s,n]*pS[t,s,n]/(sum(nn$(output_smallGR_I[s,nn]), qS[t,s,nn]*pS[t,s,nn]));
EQUATION E_TaxRev_smallGR_I_pWedge[t,s];
E_TaxRev_smallGR_I_pWedge[t,s]$(s_smallgr_i[s] and txe[t]).. 				TotalTax[t,s]	 =E=  tauLump[t,s]+sum(n$(input_smallGR_I[s,n]), tauD[t,s,n] * qD[t,s,n])+sum(n$(output_smallGR_I[s,n]), tauS[t,s,n]*qS[t,s,n]);

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_I_pWedge model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_I_pWedge /
E_pwInp_smallGR_I_pWedge, E_pwOut_smallGR_I_pWedge, E_outShare_smallGR_I_pWedge, E_TaxRev_smallGR_I_pWedge
/;




# -------------------------------------------B_smallGR_P_ces------------------------------------------
#  Initialize B_smallGR_P_ces equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_zp_out_smallGR_P_ces[t,s,n];
E_zp_out_smallGR_P_ces[t,s,n]$(knot_o_smallgr_p_ces[s,n] and txe[t]).. 	pS[t,s,n]*qS[t,s,n]  =E=  sum(nn$(map_smallGR_P_ces[s,n,nn]), qD[t,s,nn]*pD[t,s,nn]);
EQUATION E_zp_nout_smallGR_P_ces[t,s,n];
E_zp_nout_smallGR_P_ces[t,s,n]$(knot_no_smallgr_p_ces[s,n] and txe[t]).. 	pD[t,s,n]*qD[t,s,n]  =E=  sum(nn$(map_smallGR_P_ces[s,n,nn]), qD[t,s,nn]*pD[t,s,nn]);
EQUATION E_q_out_smallGR_P_ces[t,s,n];
E_q_out_smallGR_P_ces[t,s,n]$(branch2o_smallgr_p_ces[s,n] and txe[t]).. 	qD[t,s,n]  =E=  sum(nn$(map_smallGR_P_ces[s,nn,n]), mu[s,nn,n] * (pS[t,s,nn]/pD[t,s,n])**(sigma[s,nn]) * qS[t,s,nn]);
EQUATION E_q_nout_smallGR_P_ces[t,s,n];
E_q_nout_smallGR_P_ces[t,s,n]$(branch2no_smallgr_p_ces[s,n] and txe[t]).. 	qD[t,s,n]  =E=  sum(nn$(map_smallGR_P_ces[s,nn,n]), mu[s,nn,n] * (pD[t,s,nn]/pD[t,s,n])**(sigma[s,nn]) * qD[t,s,nn]);

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_P_ces model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_P_ces /
E_zp_out_smallGR_P_ces, E_zp_nout_smallGR_P_ces, E_q_out_smallGR_P_ces, E_q_nout_smallGR_P_ces
/;




# -------------------------------------------B_smallGR_P_IC-------------------------------------------
#  Initialize B_smallGR_P_IC equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_lom_smallGR_P_IC[t,s,n];
E_lom_smallGR_P_IC[t,s,n]$(dur_smallgr_p[s,n] and txe[t]).. 		qD[t+1,s,n]	 =E=  (qD[t,s,n]*(1-rDepr[t,s,n])+sum(nn$(dur2inv[s,n,nn]), qD[t,s,nn]))/(1+g_LR);
EQUATION E_pk_smallGR_P_IC[t,s,n];
E_pk_smallGR_P_IC[t,s,n]$(dur_smallgr_p[s,n] and tx02e[t]).. 	pD[t,s,n]	 =E=  sqrt(sqr(sum(nn$(dur2inv[s,n,nn]), Rrate[t]*pD[t-1,s,nn]*(1+icpar[s,n]*(qD[t-1,s,nn]/qD[t-1,s,n]-(rDepr[t-1,s,n]+g_LR)))/(1+infl_LR)+pD[t,s,nn]*(icpar[s,n]*0.5*(sqr(rDepr[t,s,n]+g_LR)-sqr(qD[t,s,nn]/qD[t,s,n]))-(1-rDepr[t,s,n])*(1+icpar[s,n]*(qD[t,s,nn]/qD[t,s,n]-(rDepr[t,s,n]+g_LR)))))));
EQUATION E_pkT_smallGR_P_IC[t,s,n];
E_pkT_smallGR_P_IC[t,s,n]$(dur_smallgr_p[s,n] and t2e[t]).. 		pD[t,s,n]	 =E=  sum(nn$(dur2inv[s,n,nn]), Rrate[t]*pD[t-1,s,nn] * (1+icpar[s,n]*(qD[t-1,s,nn]/qD[t-1,s,n]-(rDepr[t-1,s,n]+g_LR)))/(1+infl_LR) + (rDepr[t,s,n]-1)*pD[t,s,nn]);
EQUATION E_Ktvc_smallGR_P_IC[t,s,n];
E_Ktvc_smallGR_P_IC[t,s,n]$(dur_smallgr_p[s,n] and te[t]).. 		qD[t,s,n]	 =E=  (1+K_tvc[s,n])*qD[t-1,s,n];
EQUATION E_instcost_smallGR_P_IC[t,s];
E_instcost_smallGR_P_IC[t,s]$(s_smallgr_p[s] and txe[t]).. 		ic[t,s] 	 =E=  sum([n,nn]$(dur2inv[s,n,nn]), pD[t,s,nn] * icpar[s,n]*0.5*qD[t,s,n]*sqr(qD[t,s,nn]/qD[t,s,n]-(rDepr[t,s,n]+g_LR)));

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_P_IC model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_P_IC /
E_lom_smallGR_P_IC, E_pk_smallGR_P_IC, E_pkT_smallGR_P_IC, E_Ktvc_smallGR_P_IC, E_instcost_smallGR_P_IC
/;




# -----------------------------------------B_smallGR_P_pWedge-----------------------------------------
#  Initialize B_smallGR_P_pWedge equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_pwInp_smallGR_P_pWedge[t,s,n];
E_pwInp_smallGR_P_pWedge[t,s,n]$(input_smallgr_p[s,n] and txe[t]).. 			pD[t,s,n]		 =E=  p[t,n]+tauD[t,s,n];
EQUATION E_pwOut_smallGR_P_pWedge[t,s,n];
E_pwOut_smallGR_P_pWedge[t,s,n]$(output_smallgr_p[s,n] and txe[t]).. 		p[t,n] 			 =E=  (1+markup[s])*(pS[t,s,n]+tauS[t,s,n]+(outShare[t,s,n]/qS[t,s,n])*(ic[t,s]+tauLump[t,s]));
EQUATION E_outShare_smallGR_P_pWedge[t,s,n];
E_outShare_smallGR_P_pWedge[t,s,n]$(output_smallgr_p[s,n] and txe[t]).. 		outShare[t,s,n]  =E=  qS[t,s,n]*pS[t,s,n]/(sum(nn$(output_smallGR_P[s,nn]), qS[t,s,nn]*pS[t,s,nn]));
EQUATION E_TaxRev_smallGR_P_pWedge[t,s];
E_TaxRev_smallGR_P_pWedge[t,s]$(s_smallgr_p[s] and txe[t]).. 				TotalTax[t,s]	 =E=  tauLump[t,s]+sum(n$(input_smallGR_P[s,n]), tauD[t,s,n] * qD[t,s,n])+sum(n$(output_smallGR_P[s,n]), tauS[t,s,n]*qS[t,s,n]);

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_P_pWedge model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_P_pWedge /
E_pwInp_smallGR_P_pWedge, E_pwOut_smallGR_P_pWedge, E_outShare_smallGR_P_pWedge, E_TaxRev_smallGR_P_pWedge
/;




# --------------------------------------------B_smallGR_Tr--------------------------------------------
#  Initialize B_smallGR_Tr equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_armington_smallGR_Tr[t,s,n];
E_armington_smallGR_Tr[t,s,n]$(sfor_ndom_smallgr_tr[s,n] and txe[t]).. 	qD[t,s,n]		 =E=  sum(nn$(dom2for[n,nn]), Fscale[s,n] * (p[t,nn]/pD[t,s,n]))**(sigma[s,n]);
EQUATION E_pwInp_smallGR_Tr[t,s,n];
E_pwInp_smallGR_Tr[t,s,n]$(sfor_ndom_smallgr_tr[s,n] and txe[t]).. 		pD[t,s,n]		 =E=  p[t,n] + tauD[t,s,n];
EQUATION E_TaxRev_smallGR_Tr[t,s];
E_TaxRev_smallGR_Tr[t,s]$(s_smallgr_tr[s] and txe[t]).. 					TotalTax[t,s]	 =E=  tauLump[t,s]+sum(n$(sfor_ndom_smallGR_Tr[s,n]), tauD[t,s,n]*qD[t,s,n]);

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_Tr model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_Tr /
E_armington_smallGR_Tr, E_pwInp_smallGR_Tr, E_TaxRev_smallGR_Tr
/;




# ---------------------------------------B_smallGR_equi_baseline--------------------------------------
#  Initialize B_smallGR_equi_baseline equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_equi_smallGR_equi[t,n];
E_equi_smallGR_equi[t,n]$(nequi[n] and txe[t]).. 	 sum(s$(d_qS[s,n]), qS[t,s,n])  =E=  sum(s$(d_qD[s,n]), qD[t,s,n]);

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_equi_baseline model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_equi_baseline /
E_equi_smallGR_equi
/;


# -------------------------------------B_smallGR_equi_calibration-------------------------------------
#  Initialize B_smallGR_equi_calibration equation block
# ----------------------------------------------------------------------------------------------------
EQUATION E_equi_smallGR_equi_tx0E[t,n];
E_equi_smallGR_equi_tx0E[t,n]$(nequi[n] and tx0e[t]).. 	 sum(s$(d_qS[s,n]), qS[t,s,n])  =E=  sum(s$(d_qD[s,n]), qD[t,s,n]);

# ----------------------------------------------------------------------------------------------------
#  Define B_smallGR_equi_calibration model
# ----------------------------------------------------------------------------------------------------
Model B_smallGR_equi_calibration /
E_equi_smallGR_equi_tx0E
/;


sigma.fx[s,n]$((kninp_smallGR_G[s,n] or kninp_smallGR_HH[s,n] or kninp_smallGR_I[s,n] or kninp_smallGR_P[s,n] or sfor_ndom_smallGR_Tr[s,n])) = sigma.l[s,n];
mu.fx[s,n,nn]$(((map_smallGR_G[s,n,nn] and ( not (endo_mu_smallGR_G[s,n,nn]))) or endo_mu_smallGR_G[s,n,nn] or (map_smallGR_HH[s,n,nn] and ( not (endo_mu_smallGR_HH[s,n,nn]))) or endo_mu_smallGR_HH[s,n,nn] or exomu_smallGR_I[s,n,nn] or (map_smallGR_I[s,n,nn] and ( not (exomu_smallGR_I[s,n,nn]))) or (map_smallGR_P[s,n,nn] and ( not (endo_mu_smallGR_P[s,n,nn]))) or endo_mu_smallGR_P[s,n,nn])) = mu.l[s,n,nn];
Rrate.fx[t] = Rrate.l[t];
iRate.fx[t] = iRate.l[t];
vAssets.fx[t,s,a]$(((s_smallGR_G[s] and t0[t]) or (s_smallGR_HH[s] and t0[t]))) = vAssets.l[t,s,a];
p.fx[t,n]$((input_n_smallGR_G[n] or (output_n_smallGR_HH[n] or input_n_smallGR_HH[n]) or (input_n_smallGR_I[n] and ( not (output_n_smallGR_I[n]))) or (input_n_smallGR_P[n] and ( not (output_n_smallGR_P[n]))) or nOut_smallGR_Tr[n])) = p.l[t,n];
TotalTax.fx[t,s]$((d_TotalTax[s] and ( not (s_smallGR_G[s])))) = TotalTax.l[t,s];
qD.fx[t,s,n]$((output_smallGR_G[s,n] or (t0[t] and d_itory[s,n]) or (dur_smallGR_I[s,n] and t0[t]) or (dur_smallGR_P[s,n] and t0[t]))) = qD.l[t,s,n];
tauD0.fx[t,s,n]$(input_smallGR_G[s,n]) = tauD0.l[t,s,n];
tauG_calib.fx = tauG_calib.l;
tauD.fx[t,s,n]$((input_smallGR_G[s,n] or input_smallGR_HH[s,n] or input_smallGR_I[s,n] or input_smallGR_P[s,n] or sfor_ndom_smallGR_Tr[s,n])) = tauD.l[t,s,n];
eta.fx[s,n]$((knout_smallGR_HH[s,n] or knout_smallGR_I[s,n] or knout_smallGR_P[s,n])) = eta.l[s,n];
crra.fx[s,n]$(output_smallGR_HH[s,n]) = crra.l[s,n];
h_tvc.fx[s]$(s_smallGR_HH[s]) = h_tvc.l[s];
frisch.fx[s,n]$(labor_smallGR_HH[s,n]) = frisch.l[s,n];
tauS.fx[t,s,n]$((labor_smallGR_HH[s,n] or output_smallGR_I[s,n] or output_smallGR_P[s,n])) = tauS.l[t,s,n];
tauLump.fx[t,s]$(((s_smallGR_HH[s] and tx0E[t]) or (s_smallGR_HH[s] and t0[t]) or (s_smallGR_I[s] and tx0E[t]) or (s_smallGR_I[s] and t0[t]) or (s_smallGR_P[s] and tx0E[t]) or (s_smallGR_P[s] and t0[t]) or (s_smallGR_Tr[s] and tx0E[t]) or (s_smallGR_Tr[s] and t0[t]))) = tauLump.l[t,s];
Lscale.fx[s,n]$(labor_smallGR_HH[s,n]) = Lscale.l[s,n];
disc.fx[s]$(s_smallGR_HH[s]) = disc.l[s];
qS.fx[t,s,n]$(((output_smallGR_I[s,n] and ( not ((endo_qS_smallGR_I[s,n] and t0[t])))) or (endo_qS_smallGR_I[s,n] and t0[t]) or output_smallGR_P[s,n])) = qS.l[t,s,n];
markup.fx[s]$((s_smallGR_I[s] or s_smallGR_P[s])) = markup.l[s];
rDepr.fx[t,s,n]$((dur_smallGR_I[s,n] or dur_smallGR_P[s,n])) = rDepr.l[t,s,n];
icpar.fx[s,n]$((dur_smallGR_I[s,n] or dur_smallGR_P[s,n])) = icpar.l[s,n];
K_tvc.fx[s,n]$((dur_smallGR_I[s,n] or dur_smallGR_P[s,n])) = K_tvc.l[s,n];
Fscale.fx[s,n]$(sfor_ndom_smallGR_Tr[s,n]) = Fscale.l[s,n];
pD.lo[t,s,n]$(((int_smallGR_G[s,n] or input_smallGR_G[s,n] or output_smallGR_G[s,n]) or ((int_smallGR_HH[s,n] or input_smallGR_HH[s,n]) or (output_smallGR_HH[s,n] and tx0E[t])) or (output_smallGR_HH[s,n] and t0[t]) or (int_smallGR_I[s,n] or input_smallGR_I[s,n]) or (dur_smallGR_I[s,n] and txE[t]) or (int_smallGR_P[s,n] or input_smallGR_P[s,n]) or (dur_smallGR_P[s,n] and txE[t]) or sfor_ndom_smallGR_Tr[s,n])) = -inf;
pD.up[t,s,n]$(((int_smallGR_G[s,n] or input_smallGR_G[s,n] or output_smallGR_G[s,n]) or ((int_smallGR_HH[s,n] or input_smallGR_HH[s,n]) or (output_smallGR_HH[s,n] and tx0E[t])) or (output_smallGR_HH[s,n] and t0[t]) or (int_smallGR_I[s,n] or input_smallGR_I[s,n]) or (dur_smallGR_I[s,n] and txE[t]) or (int_smallGR_P[s,n] or input_smallGR_P[s,n]) or (dur_smallGR_P[s,n] and txE[t]) or sfor_ndom_smallGR_Tr[s,n])) = inf;
qD.lo[t,s,n]$((((input_smallGR_G[s,n] and tx0E[t]) or int_smallGR_G[s,n]) or (input_smallGR_G[s,n] and t0[t]) or ((input_smallGR_HH[s,n] and tx0E[t]) or (int_smallGR_HH[s,n] or output_smallGR_HH[s,n])) or (input_smallGR_HH[s,n] and t0[t]) or (tx0E[t] and d_itory[s,n]) or (((int_smallGR_I[s,n] or input_smallGR_I[s,n]) and tx0[t]) or (endo_qD_smallGR_I[s,n] and t0[t])) or (((int_smallGR_I[s,n] or input_smallGR_I[s,n]) and t0[t]) and ( not ((endo_qD_smallGR_I[s,n] and t0[t])))) or (dur_smallGR_I[s,n] and tx0[t]) or (int_smallGR_P[s,n] or (input_smallGR_P[s,n] and tx0[t]) or (endo_qD_smallGR_P[s,n] and t0[t])) or ((input_smallGR_P[s,n] and t0[t]) and ( not ((endo_qD_smallGR_P[s,n] and t0[t])))) or (dur_smallGR_P[s,n] and tx0[t]) or (sfor_ndom_smallGR_Tr[s,n] and tx0E[t]) or (sfor_ndom_smallGR_Tr[s,n] and t0[t]))) = -inf;
qD.up[t,s,n]$((((input_smallGR_G[s,n] and tx0E[t]) or int_smallGR_G[s,n]) or (input_smallGR_G[s,n] and t0[t]) or ((input_smallGR_HH[s,n] and tx0E[t]) or (int_smallGR_HH[s,n] or output_smallGR_HH[s,n])) or (input_smallGR_HH[s,n] and t0[t]) or (tx0E[t] and d_itory[s,n]) or (((int_smallGR_I[s,n] or input_smallGR_I[s,n]) and tx0[t]) or (endo_qD_smallGR_I[s,n] and t0[t])) or (((int_smallGR_I[s,n] or input_smallGR_I[s,n]) and t0[t]) and ( not ((endo_qD_smallGR_I[s,n] and t0[t])))) or (dur_smallGR_I[s,n] and tx0[t]) or (int_smallGR_P[s,n] or (input_smallGR_P[s,n] and tx0[t]) or (endo_qD_smallGR_P[s,n] and t0[t])) or ((input_smallGR_P[s,n] and t0[t]) and ( not ((endo_qD_smallGR_P[s,n] and t0[t])))) or (dur_smallGR_P[s,n] and tx0[t]) or (sfor_ndom_smallGR_Tr[s,n] and tx0E[t]) or (sfor_ndom_smallGR_Tr[s,n] and t0[t]))) = inf;
qiv_inp.lo[t,s,n]$((spinp_smallGR_G[s,n] or spinp_smallGR_HH[s,n] or spinp_smallGR_I[s,n] or spinp_smallGR_P[s,n])) = -inf;
qiv_inp.up[t,s,n]$((spinp_smallGR_G[s,n] or spinp_smallGR_HH[s,n] or spinp_smallGR_I[s,n] or spinp_smallGR_P[s,n])) = inf;
sp.lo[t,s]$((s_smallGR_G[s] or s_smallGR_HH[s])) = -inf;
sp.up[t,s]$((s_smallGR_G[s] or s_smallGR_HH[s])) = inf;
TotalTax.lo[t,s]$(((s_smallGR_G[s] and tx0E[t]) or (s_smallGR_G[s] and t0[t]) or (s_smallGR_HH[s] and tx0E[t]) or (s_smallGR_HH[s] and t0[t]) or (s_smallGR_I[s] and tx0E[t]) or (s_smallGR_I[s] and t0[t]) or (s_smallGR_P[s] and tx0E[t]) or (s_smallGR_P[s] and t0[t]) or (s_smallGR_Tr[s] and tx0E[t]) or (s_smallGR_Tr[s] and t0[t]))) = -inf;
TotalTax.up[t,s]$(((s_smallGR_G[s] and tx0E[t]) or (s_smallGR_G[s] and t0[t]) or (s_smallGR_HH[s] and tx0E[t]) or (s_smallGR_HH[s] and t0[t]) or (s_smallGR_I[s] and tx0E[t]) or (s_smallGR_I[s] and t0[t]) or (s_smallGR_P[s] and tx0E[t]) or (s_smallGR_P[s] and t0[t]) or (s_smallGR_Tr[s] and tx0E[t]) or (s_smallGR_Tr[s] and t0[t]))) = inf;
vAssets.lo[t,s,a]$(((s_smallGR_G[s] and tx0[t]) or (s_smallGR_HH[s] and tx0[t]))) = -inf;
vAssets.up[t,s,a]$(((s_smallGR_G[s] and tx0[t]) or (s_smallGR_HH[s] and tx0[t]))) = inf;
tauS.lo[t,s,n]$((labor[s,n] and tx0E[t])) = -inf;
tauS.up[t,s,n]$((labor[s,n] and tx0E[t])) = inf;
qS.lo[t,s,n]$(((labor_smallGR_HH[s,n] and tx0E[t]) or (labor_smallGR_HH[s,n] and t0[t]) or (d_qSEqui[s,n] and tx0E[t]) or (d_qSEqui[s,n] and t0[t]))) = -inf;
qS.up[t,s,n]$(((labor_smallGR_HH[s,n] and tx0E[t]) or (labor_smallGR_HH[s,n] and t0[t]) or (d_qSEqui[s,n] and tx0E[t]) or (d_qSEqui[s,n] and t0[t]))) = inf;
qiv_out.lo[t,s,n]$((spout_smallGR_HH[s,n] or spout_smallGR_I[s,n] or spout_smallGR_P[s,n])) = -inf;
qiv_out.up[t,s,n]$((spout_smallGR_HH[s,n] or spout_smallGR_I[s,n] or spout_smallGR_P[s,n])) = inf;
pS.lo[t,s,n]$((labor_smallGR_HH[s,n] or output_smallGR_I[s,n] or output_smallGR_P[s,n])) = -inf;
pS.up[t,s,n]$((labor_smallGR_HH[s,n] or output_smallGR_I[s,n] or output_smallGR_P[s,n])) = inf;
p.lo[t,n]$(((output_n_smallGR_I[n] and tx0[t]) or (output_n_smallGR_I[n] and t0[t]) or (output_n_smallGR_P[n] and tx0[t]) or (output_n_smallGR_P[n] and t0[t]) or (d_pEqui[n] and tx0E[t]) or (d_pEqui[n] and t0[t]))) = -inf;
p.up[t,n]$(((output_n_smallGR_I[n] and tx0[t]) or (output_n_smallGR_I[n] and t0[t]) or (output_n_smallGR_P[n] and tx0[t]) or (output_n_smallGR_P[n] and t0[t]) or (d_pEqui[n] and tx0E[t]) or (d_pEqui[n] and t0[t]))) = inf;
outShare.lo[t,s,n]$((output_smallGR_I[s,n] or output_smallGR_P[s,n])) = -inf;
outShare.up[t,s,n]$((output_smallGR_I[s,n] or output_smallGR_P[s,n])) = inf;
ic.lo[t,s]$(((s_smallGR_I[s] and txE[t]) or (s_smallGR_P[s] and txE[t]))) = -inf;
ic.up[t,s]$(((s_smallGR_I[s] and txE[t]) or (s_smallGR_P[s] and txE[t]))) = inf;

# ----------------------------------------------------------------------------------------------------
#  Define smallGR_GE_B model
# ----------------------------------------------------------------------------------------------------
Model smallGR_GE_B /
E_zp_gc, E_q_gc, E_lom_smallGR_G_dynamic, E_pwInp_smallGR_G_dynamic, E_TaxRev_smallGR_G_dynamic, E_sp_smallGR_G_dynamic, E_bb_smallGR_G_bb, E_zp_smallGR_HH_ces, E_q_smallGR_HH_ces, E_labor_smallGR_HH_labor, E_lom_smallGR_HH_dynamic, E_euler_smallGR_HH_dynamic, E_tvc_smallGR_HH_dynamic, E_pwOut_smallGR_HH_pw, E_pwInp_smallGR_HH_pw, E_TaxRev_smallGR_HH_pw, E_sp_smallGR_HH_pw, E_smallGR_itory, E_zp_out_smallGR_I_ces, E_zp_nout_smallGR_I_ces, E_q_out_smallGR_I_ces, E_q_nout_smallGR_I_ces, E_lom_smallGR_I_IC, E_pk_smallGR_I_IC, E_pkT_smallGR_I_IC, E_Ktvc_smallGR_I_IC, E_instcost_smallGR_I_IC, E_pwInp_smallGR_I_pWedge, E_pwOut_smallGR_I_pWedge, E_outShare_smallGR_I_pWedge, E_TaxRev_smallGR_I_pWedge, E_zp_out_smallGR_P_ces, E_zp_nout_smallGR_P_ces, E_q_out_smallGR_P_ces, E_q_nout_smallGR_P_ces, E_lom_smallGR_P_IC, E_pk_smallGR_P_IC, E_pkT_smallGR_P_IC, E_Ktvc_smallGR_P_IC, E_instcost_smallGR_P_IC, E_pwInp_smallGR_P_pWedge, E_pwOut_smallGR_P_pWedge, E_outShare_smallGR_P_pWedge, E_TaxRev_smallGR_P_pWedge, E_armington_smallGR_Tr, E_pwInp_smallGR_Tr, E_TaxRev_smallGR_Tr, E_equi_smallGR_equi
/;


solve smallGR_GE_B using CNS;