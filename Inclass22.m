%Inclass 22

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results.
%x^2 -kb*x - ku = 0
figure(1);
hold on;
ku=0;
for kb=0:0.05:10
    polycoeff=[1 -kb -ku]; 
    rts=roots(polycoeff);
    rts=rts(imag(rts) == 0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
xlabel('kb1');
ylabel('Fixed Points');
set(gca, 'FontSize', 20);

%x^5 -kb*x^4 + x - ku = 0
figure(1); 
hold on;
ku=0;
for kb=0:0.05:10
    polycoeff=[1 -kb 0 0 1 -ku]; 
    rts=roots(polycoeff);
    rts=rts(imag(rts) == 0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
xlabel('kb4');
ylabel('Fixed Points');
set(gca, 'FontSize', 20);

%x^9 -kb*x^8 + x - ku = 0
figure(3); 
hold on;
ku=0;
for kb=0:0.05:10
    polycoeff=[1 -kb 0 0 0 0 0 0 1 -ku]; 
    rts=roots(polycoeff);
    rts=rts(imag(rts) == 0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
xlabel('kb8');
ylabel('Fixed Points');
set(gca, 'FontSize', 20);

% when the copy of the transcription factor is 1, the diagram
% cannot show the bifurcation. When the copies of the transcription factor
% is 4 or 8, the diagram shows bifurcation.

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 
figure(4);
hold on;
ku=0;
for kb=0:0.05:10
    polycoeff=[1 kb 1 -ku];
    rts=roots(polycoeff);
    rts=rts(imag(rts)==0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
xlabel('kb-2');
ylabel('Fixed Points ');
set(gca, 'FontSize', 20);