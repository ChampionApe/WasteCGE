sigma.fx[s,n]$((kninp_smallGR_G[s,n] or kninp_smallGR_HH[s,n] or kninp_smallGR_I[s,n] or kninp_smallGR_P[s,n] or sfor_ndom_smallGR_Tr[s,n])) = sigma.l[s,n];
mu.fx[s,n,nn]$(((map_smallGR_G[s,n,nn] and ( not (endo_mu_smallGR_G[s,n,nn]))) or (map_smallGR_HH[s,n,nn] and ( not (endo_mu_smallGR_HH[s,n,nn]))) or exomu_smallGR_I[s,n,nn] or (map_smallGR_P[s,n,nn] and ( not (endo_mu_smallGR_P[s,n,nn]))))) = mu.l[s,n,nn];
Rrate.fx[t] = Rrate.l[t];
iRate.fx[t] = iRate.l[t];
vAssets.fx[t,s,a]$(((s_smallGR_G[s] and t0[t]) or (s_smallGR_HH[s] and t0[t]))) = vAssets.l[t,s,a];
p.fx[t,n]$((input_n_smallGR_G[n] or (output_n_smallGR_HH[n] or input_n_smallGR_HH[n]) or (input_n_smallGR_I[n] and ( not (output_n_smallGR_I[n]))) or (output_n_smallGR_I[n] and t0[t]) or (input_n_smallGR_P[n] and ( not (output_n_smallGR_P[n]))) or (output_n_smallGR_P[n] and t0[t]) or nOut_smallGR_Tr[n] or (d_pEqui[n] and t0[t]))) = p.l[t,n];
TotalTax.fx[t,s]$(((d_TotalTax[s] and ( not (s_smallGR_G[s]))) or (s_smallGR_G[s] and t0[t]) or (s_smallGR_HH[s] and t0[t]) or (s_smallGR_I[s] and t0[t]) or (s_smallGR_P[s] and t0[t]) or (s_smallGR_Tr[s] and t0[t]))) = TotalTax.l[t,s];
qD.fx[t,s,n]$((output_smallGR_G[s,n] or (input_smallGR_G[s,n] and t0[t]) or (input_smallGR_HH[s,n] and t0[t]) or (t0[t] and d_itory[s,n]) or (((int_smallGR_I[s,n] or input_smallGR_I[s,n]) and t0[t]) and ( not ((endo_qD_smallGR_I[s,n] and t0[t])))) or (dur_smallGR_I[s,n] and t0[t]) or ((input_smallGR_P[s,n] and t0[t]) and ( not ((endo_qD_smallGR_P[s,n] and t0[t])))) or (dur_smallGR_P[s,n] and t0[t]) or (sfor_ndom_smallGR_Tr[s,n] and t0[t]))) = qD.l[t,s,n];
tauD0.fx[t,s,n]$(input_smallGR_G[s,n]) = tauD0.l[t,s,n];
eta.fx[s,n]$((knout_smallGR_HH[s,n] or knout_smallGR_I[s,n] or knout_smallGR_P[s,n])) = eta.l[s,n];
crra.fx[s,n]$(output_smallGR_HH[s,n]) = crra.l[s,n];
h_tvc.fx[s]$(s_smallGR_HH[s]) = h_tvc.l[s];
frisch.fx[s,n]$(labor_smallGR_HH[s,n]) = frisch.l[s,n];
tauD.fx[t,s,n]$((input_smallGR_HH[s,n] or input_smallGR_I[s,n] or input_smallGR_P[s,n] or sfor_ndom_smallGR_Tr[s,n])) = tauD.l[t,s,n];
tauS.fx[t,s,n]$((labor_smallGR_HH[s,n] or output_smallGR_I[s,n] or output_smallGR_P[s,n])) = tauS.l[t,s,n];
tauLump.fx[t,s]$(((s_smallGR_HH[s] and tx0E[t]) or (s_smallGR_I[s] and tx0E[t]) or (s_smallGR_P[s] and tx0E[t]) or (s_smallGR_Tr[s] and tx0E[t]))) = tauLump.l[t,s];
qS.fx[t,s,n]$(((labor_smallGR_HH[s,n] and t0[t]) or (output_smallGR_I[s,n] and ( not ((endo_qS_smallGR_I[s,n] and t0[t])))) or output_smallGR_P[s,n] or (d_qSEqui[s,n] and t0[t]))) = qS.l[t,s,n];
pD.fx[t,s,n]$((output_smallGR_HH[s,n] and t0[t])) = pD.l[t,s,n];
rDepr.fx[t,s,n]$((dur_smallGR_I[s,n] or dur_smallGR_P[s,n])) = rDepr.l[t,s,n];
icpar.fx[s,n]$((dur_smallGR_I[s,n] or dur_smallGR_P[s,n])) = icpar.l[s,n];
K_tvc.fx[s,n]$((dur_smallGR_I[s,n] or dur_smallGR_P[s,n])) = K_tvc.l[s,n];
pD.lo[t,s,n]$(((int_smallGR_G[s,n] or input_smallGR_G[s,n] or output_smallGR_G[s,n]) or ((int_smallGR_HH[s,n] or input_smallGR_HH[s,n]) or (output_smallGR_HH[s,n] and tx0E[t])) or (int_smallGR_I[s,n] or input_smallGR_I[s,n]) or (dur_smallGR_I[s,n] and txE[t]) or (int_smallGR_P[s,n] or input_smallGR_P[s,n]) or (dur_smallGR_P[s,n] and txE[t]) or sfor_ndom_smallGR_Tr[s,n])) = -inf;
pD.up[t,s,n]$(((int_smallGR_G[s,n] or input_smallGR_G[s,n] or output_smallGR_G[s,n]) or ((int_smallGR_HH[s,n] or input_smallGR_HH[s,n]) or (output_smallGR_HH[s,n] and tx0E[t])) or (int_smallGR_I[s,n] or input_smallGR_I[s,n]) or (dur_smallGR_I[s,n] and txE[t]) or (int_smallGR_P[s,n] or input_smallGR_P[s,n]) or (dur_smallGR_P[s,n] and txE[t]) or sfor_ndom_smallGR_Tr[s,n])) = inf;
qD.lo[t,s,n]$((((input_smallGR_G[s,n] and tx0E[t]) or int_smallGR_G[s,n]) or ((input_smallGR_HH[s,n] and tx0E[t]) or (int_smallGR_HH[s,n] or output_smallGR_HH[s,n])) or (tx0E[t] and d_itory[s,n]) or (((int_smallGR_I[s,n] or input_smallGR_I[s,n]) and tx0[t]) or (endo_qD_smallGR_I[s,n] and t0[t])) or (dur_smallGR_I[s,n] and tx0[t]) or (int_smallGR_P[s,n] or (input_smallGR_P[s,n] and tx0[t]) or (endo_qD_smallGR_P[s,n] and t0[t])) or (dur_smallGR_P[s,n] and tx0[t]) or (sfor_ndom_smallGR_Tr[s,n] and tx0E[t]))) = -inf;
qD.up[t,s,n]$((((input_smallGR_G[s,n] and tx0E[t]) or int_smallGR_G[s,n]) or ((input_smallGR_HH[s,n] and tx0E[t]) or (int_smallGR_HH[s,n] or output_smallGR_HH[s,n])) or (tx0E[t] and d_itory[s,n]) or (((int_smallGR_I[s,n] or input_smallGR_I[s,n]) and tx0[t]) or (endo_qD_smallGR_I[s,n] and t0[t])) or (dur_smallGR_I[s,n] and tx0[t]) or (int_smallGR_P[s,n] or (input_smallGR_P[s,n] and tx0[t]) or (endo_qD_smallGR_P[s,n] and t0[t])) or (dur_smallGR_P[s,n] and tx0[t]) or (sfor_ndom_smallGR_Tr[s,n] and tx0E[t]))) = inf;
qiv_inp.lo[t,s,n]$((spinp_smallGR_G[s,n] or spinp_smallGR_HH[s,n] or spinp_smallGR_I[s,n] or spinp_smallGR_P[s,n])) = -inf;
qiv_inp.up[t,s,n]$((spinp_smallGR_G[s,n] or spinp_smallGR_HH[s,n] or spinp_smallGR_I[s,n] or spinp_smallGR_P[s,n])) = inf;
sp.lo[t,s]$((s_smallGR_G[s] or s_smallGR_HH[s])) = -inf;
sp.up[t,s]$((s_smallGR_G[s] or s_smallGR_HH[s])) = inf;
TotalTax.lo[t,s]$(((s_smallGR_G[s] and tx0E[t]) or (s_smallGR_HH[s] and tx0E[t]) or (s_smallGR_I[s] and tx0E[t]) or (s_smallGR_P[s] and tx0E[t]) or (s_smallGR_Tr[s] and tx0E[t]))) = -inf;
TotalTax.up[t,s]$(((s_smallGR_G[s] and tx0E[t]) or (s_smallGR_HH[s] and tx0E[t]) or (s_smallGR_I[s] and tx0E[t]) or (s_smallGR_P[s] and tx0E[t]) or (s_smallGR_Tr[s] and tx0E[t]))) = inf;
vAssets.lo[t,s,a]$(((s_smallGR_G[s] and tx0[t]) or (s_smallGR_HH[s] and tx0[t]))) = -inf;
vAssets.up[t,s,a]$(((s_smallGR_G[s] and tx0[t]) or (s_smallGR_HH[s] and tx0[t]))) = inf;
mu.lo[s,n,nn]$((endo_mu_smallGR_G[s,n,nn] or endo_mu_smallGR_HH[s,n,nn] or (map_smallGR_I[s,n,nn] and ( not (exomu_smallGR_I[s,n,nn]))) or endo_mu_smallGR_P[s,n,nn])) = -inf;
mu.up[s,n,nn]$((endo_mu_smallGR_G[s,n,nn] or endo_mu_smallGR_HH[s,n,nn] or (map_smallGR_I[s,n,nn] and ( not (exomu_smallGR_I[s,n,nn]))) or endo_mu_smallGR_P[s,n,nn])) = inf;
tauG_calib.lo = -inf;
tauG_calib.up = inf;
tauD.lo[t,s,n]$(input_smallGR_G[s,n]) = -inf;
tauD.up[t,s,n]$(input_smallGR_G[s,n]) = inf;
tauS.lo[t,s,n]$((labor[s,n] and tx0E[t])) = -inf;
tauS.up[t,s,n]$((labor[s,n] and tx0E[t])) = inf;
qS.lo[t,s,n]$(((labor_smallGR_HH[s,n] and tx0E[t]) or (endo_qS_smallGR_I[s,n] and t0[t]) or (d_qSEqui[s,n] and tx0E[t]))) = -inf;
qS.up[t,s,n]$(((labor_smallGR_HH[s,n] and tx0E[t]) or (endo_qS_smallGR_I[s,n] and t0[t]) or (d_qSEqui[s,n] and tx0E[t]))) = inf;
qiv_out.lo[t,s,n]$((spout_smallGR_HH[s,n] or spout_smallGR_I[s,n] or spout_smallGR_P[s,n])) = -inf;
qiv_out.up[t,s,n]$((spout_smallGR_HH[s,n] or spout_smallGR_I[s,n] or spout_smallGR_P[s,n])) = inf;
pS.lo[t,s,n]$((labor_smallGR_HH[s,n] or output_smallGR_I[s,n] or output_smallGR_P[s,n])) = -inf;
pS.up[t,s,n]$((labor_smallGR_HH[s,n] or output_smallGR_I[s,n] or output_smallGR_P[s,n])) = inf;
Lscale.lo[s,n]$(labor_smallGR_HH[s,n]) = -inf;
Lscale.up[s,n]$(labor_smallGR_HH[s,n]) = inf;
tauLump.lo[t,s]$(((s_smallGR_HH[s] and t0[t]) or (s_smallGR_I[s] and t0[t]) or (s_smallGR_P[s] and t0[t]) or (s_smallGR_Tr[s] and t0[t]))) = -inf;
tauLump.up[t,s]$(((s_smallGR_HH[s] and t0[t]) or (s_smallGR_I[s] and t0[t]) or (s_smallGR_P[s] and t0[t]) or (s_smallGR_Tr[s] and t0[t]))) = inf;
disc.lo[s]$(s_smallGR_HH[s]) = -inf;
disc.up[s]$(s_smallGR_HH[s]) = inf;
p.lo[t,n]$(((output_n_smallGR_I[n] and tx0[t]) or (output_n_smallGR_P[n] and tx0[t]) or (d_pEqui[n] and tx0E[t]))) = -inf;
p.up[t,n]$(((output_n_smallGR_I[n] and tx0[t]) or (output_n_smallGR_P[n] and tx0[t]) or (d_pEqui[n] and tx0E[t]))) = inf;
outShare.lo[t,s,n]$((output_smallGR_I[s,n] or output_smallGR_P[s,n])) = -inf;
outShare.up[t,s,n]$((output_smallGR_I[s,n] or output_smallGR_P[s,n])) = inf;
markup.lo[s]$((s_smallGR_I[s] or s_smallGR_P[s])) = -inf;
markup.up[s]$((s_smallGR_I[s] or s_smallGR_P[s])) = inf;
ic.lo[t,s]$(((s_smallGR_I[s] and txE[t]) or (s_smallGR_P[s] and txE[t]))) = -inf;
ic.up[t,s]$(((s_smallGR_I[s] and txE[t]) or (s_smallGR_P[s] and txE[t]))) = inf;
Fscale.lo[s,n]$(sfor_ndom_smallGR_Tr[s,n]) = -inf;
Fscale.up[s,n]$(sfor_ndom_smallGR_Tr[s,n]) = inf;

# ----------------------------------------------------------------------------------------------------
#  Define smallGR_GE_C model
# ----------------------------------------------------------------------------------------------------
Model smallGR_GE_C /
E_zp_gc, E_q_gc, E_lom_smallGR_G_dynamic, E_pwInp_smallGR_G_dynamic, E_TaxRev_smallGR_G_dynamic, E_sp_smallGR_G_dynamic, E_bb_smallGR_G_bb, E_flatCalib_smallGR_G_calib, E_zp_smallGR_HH_ces, E_q_smallGR_HH_ces, E_labor_smallGR_HH_labor, E_lom_smallGR_HH_dynamic, E_euler_smallGR_HH_dynamic, E_tvc_smallGR_HH_dynamic, E_pwOut_smallGR_HH_pw, E_pwInp_smallGR_HH_pw, E_TaxRev_smallGR_HH_pw, E_sp_smallGR_HH_pw, E_smallGR_itory, E_zp_out_smallGR_I_ces, E_zp_nout_smallGR_I_ces, E_q_out_smallGR_I_ces, E_q_nout_smallGR_I_ces, E_lom_smallGR_I_IC, E_pk_smallGR_I_IC, E_pkT_smallGR_I_IC, E_Ktvc_smallGR_I_IC, E_instcost_smallGR_I_IC, E_pwInp_smallGR_I_pWedge, E_pwOut_smallGR_I_pWedge, E_outShare_smallGR_I_pWedge, E_TaxRev_smallGR_I_pWedge, E_zp_out_smallGR_P_ces, E_zp_nout_smallGR_P_ces, E_q_out_smallGR_P_ces, E_q_nout_smallGR_P_ces, E_lom_smallGR_P_IC, E_pk_smallGR_P_IC, E_pkT_smallGR_P_IC, E_Ktvc_smallGR_P_IC, E_instcost_smallGR_P_IC, E_pwInp_smallGR_P_pWedge, E_pwOut_smallGR_P_pWedge, E_outShare_smallGR_P_pWedge, E_TaxRev_smallGR_P_pWedge, E_armington_smallGR_Tr, E_pwInp_smallGR_Tr, E_TaxRev_smallGR_Tr, E_equi_smallGR_equi_tx0E
/;


solve smallGR_GE_C using CNS;