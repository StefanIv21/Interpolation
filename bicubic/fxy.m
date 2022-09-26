function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
     [m n]=size(f);
    % TODO: Calculeaza derivata.
    if x==1 || y==1 || x==m || y==n
      r=0;
    else
      r=(f(x-1,y-1)+f(x+1,y+1)-f(x-1,y+1)-f(x+1,y-1))/4;
    endif
endfunction