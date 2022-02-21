function N_em = edfa_eqs_paper_1(t,N2,L,EM_ARRAY,AB_ARRAY,WL_ARRAY,P_p,P_s,ch_num)

edfa_params_paper_1

B_s = zeros(ch_num,1);
C_s = zeros(ch_num,1);

for k = 1:ch_num
    B_s(k) = Gamma_s * (EM_ARRAY(k) + AB_ARRAY(k)) / (4.3429 * rho * A);
    C_s(k) = Gamma_s * AB_ARRAY(k) * L / 4.3429;
end    
clear 'k'

B_p = Gamma_p * (em_p + ab_p) / (4.3429 * rho * A);
C_p = Gamma_p * ab_p * L / 4.3429;

SUM = P_p / (h * c / wl_p * 10 ^ 9) * (1 - exp(B_p * N2 - C_p));

for k = 1:ch_num
    SUM = SUM + P_s / (h * c / WL_ARRAY(k) * 10 ^ 9) * (1 - exp(B_s(k) * N2 - C_s(k)));
end

N_em  = SUM - N2/tau;
N_em = N_em';
end

