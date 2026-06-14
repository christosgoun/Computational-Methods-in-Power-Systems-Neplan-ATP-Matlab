function [A, B, C, D] = calcABCD(R_ohm_km, L_mH_km, C_nF_km, len_km)
% CALCABCD Υπολογίζει τον πίνακα μεταφοράς [A B; C D]
% Είσοδοι: R (Ω/km), L (mH/km), C (nF/km), Μήκος (km)

    % 1. Προετοιμασία (Μετατροπή μονάδων & συχνότητα)
    w = 2 * pi * 50; % ω για 50Hz
    L = L_mH_km * 1e-3; % σε Henry
    C = C_nF_km * 1e-9; % σε Farad
    
    % 2. Σύνθετη Αντίσταση (z) και Αγωγιμότητα (y) ανά km
    z = R_ohm_km + 1j * w * L; 
    y = 0 + 1j * w * C;        % Θεωρούμε G=0
    
    % 3. Υπολογισμός Zc και γ (gamma)
    Zc = sqrt(z / y);          % Χαρακτηριστική Αντίσταση
    gamma = sqrt(z * y);       % Σταθερά Διάδοσης
    
    % 4. Υπολογισμός σταθερών A, B, C, D (Μακρά Γραμμή)
    % Προσοχή: Εδώ το gamma * len είναι αδιάστατο
    gl = gamma * len_km; 
    
    A = cosh(gl);
    B = Zc * sinh(gl);
    C = (1/Zc) * sinh(gl);
    D = A; % Το σύστημα είναι συμμετρικό
    
    % 5. Δημιουργία του Πίνακα Εξόδου
    %T = [A, B; C, D];

end