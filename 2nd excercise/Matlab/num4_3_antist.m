%Vr=20000/(sqrt(3)*(0.1185+i*0.0025));
%a=abs(Vr);
% 1. Ορισμός Τιμών Φορτίου (Πρέπει να ξέρετε Τάση/Ρεύμα στο R)
% Παράδειγμα:
syms Ig Vr Vs;
Tse=[1, 0.1+1.0996*i; 0, 1]; %Tse: Πίνακας για την ισοδύναμη αντίδραση της γεννήτριας
Ttr=[2/15, 0; 0, 7.5]; %Ttr: Πίνακας για τον ιδανικό μετασχηματιστή ανύψωσης
Tpar=[0.9571+0.0127i, 22.8670+78.1027i; 0.0011i, 0.9571+0.0127i];%τετράπολο παράλληλων γραμμωών μεταφοράς
Tsmall=Tse*Ttr;
T_pre = Tsmall*Tpar; %T_pre: Ο συνολικός πίνακας ΠΡΙΝ την αντιστάθμιση
Tcom = [1 0; (2.3046e-05 - 8.0296e-04i) 1];      % Μοντέλο παράλληλου πηνίου-αντιστάθμιση
Tfin = T_pre * Tcom;  %ολικό τετράπολο κυκλώματος
Vg=((20000)/sqrt(3));
% --- Me ΑΝΤΙΣΤΑΘΜΙΣΗ ---
In  = [Vg; Ig];     % V1, I1 (είσοδος)
OutVs = [Vs; (Ig/7.5)];   % V2, I2 (ανοιχτοκύκλωμα)
calc1 = In == Tsmall * OutVs; %Input = Matrix * Output
solution1 = solve(calc1, [Vs])
OutVr = [Vr; 0];
calc2 = In == Tfin * OutVr; %Input = Matrix * Output
solution2 = solve(calc2, [Vr, Ig]);
Is=solution2.Ig/7.5;

Vr_arithmitiko = double(solution2.Vr);
I1_arithmitiko = double(Is/2);

% Εμφάνιση των τιμών
disp('Με αντιστ:Η τάση Vr είναι:');
disp(abs(Vr_arithmitiko)); % abs για το μέτρο αν είναι μιγαδικός

disp('Με αντιστ:Το ρεύμα Il1 είναι:');
disp(abs(I1_arithmitiko));

% 1. Πάρε την αριθμητική τιμή του Ig από τη δεύτερη λύση
Ig_value = double(solution2.Ig);

% 2. ΠΡΟΣΟΧΗ ΕΔΩ: Το solution1 είναι ήδη το Vs (δεν είναι struct)
Vs_symbolic = solution1; 

% 3. Αντικατάσταση του Ig μέσα στο Vs
Vs_arithmitiko = subs(Vs_symbolic, Ig, Ig_value);

% 4. Μετατροπή σε νούμερο και εμφάνιση
Vs_final = double(Vs_arithmitiko);

disp('Me αντιστ:Η τελική τιμή του Vs είναι:');
disp(abs(Vs_final));