function [EM0,AB0] = get_EM_AB(wl_signal,FILE_EM,FILE_AB,STEPEN)
[wl_em,EM] = importfile(FILE_EM);
[wl_ab,AB] = importfile(FILE_AB);


EM0 = interpolate_point(wl_signal,wl_em,EM)*10^(-STEPEN);
AB0 = interpolate_point(wl_signal,wl_ab,AB)*10^(-STEPEN);
end

