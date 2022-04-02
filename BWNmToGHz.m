function BW = BWNmToGHz(dwl,wl)
    c = 299792458; % [m/sec]
    BW = c*dwl/wl^2;
end