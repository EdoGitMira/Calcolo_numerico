function [zero,fval,iter] = bisezione(f,a,b,tol)

% INPUT
% f = funzione su cui si vuole trovare gli zeri
% a, b = estremi intervallo
% tol  =tollerenza richiestra per il calcolo
% OUPUT
% zero = valore dove è presente lo zero
% fval = valore assunto dalla funzione nel punto di zero
% iter = numero di iterezioni eseguite per il calcolo

f_a = f(a);
f_b = f(b);
iter = 0;

if f_a*f_b == 0
    if f_a == 0
        zero = a;
        fval = 0;
        return
    else
        zero = b;
        fval = 0;
        return
    end
elseif f_a*f_b > 0
    zero = 0;
    fval = 0;
    iter = -1;
    return
else
    c = (b+a)/2;
    f_c = f(c);
    while(((b-a)/(2*max(abs(a),abs(b)))) > tol && f_c ~= 0)
        if f_c*f_a < 0
            b = c;
            f_b = f_c;
        else 
            a = c;
            f_a = f_c;
        end
        c = (b+a)/2;
        f_c = f(c);
        iter = iter+1;
    end
    zero = c;
    fval = f_c;
    return
end
end

