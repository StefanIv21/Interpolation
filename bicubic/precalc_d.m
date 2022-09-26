function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia.
    % =========================================================================
    
    % Obtinem dimensiunea imaginii.
    [m n nr_colors] = size(I);
    
    % TODO: Tranforma matricea I in double.
    I=double(I);
    % TODO: Calculeaza matricea cu derivate fata de x Ix.
    for x=0:m-1
      for y=0:n-1
        Ix(x+1,y+1)=fx(I,x+1,y+1);
      endfor
    endfor
    % TODO: Calculeaza matricea cu derivate fata de y Iy.
    for x=0:m-1
      for y=0:n-1
        Iy(x+1,y+1)=fy(I,x+1,y+1);
      endfor
    endfor
    % TODO: Calculeaza matricea cu derivate fata de xy Ixy.
    for x=0:m-1
      for y=0:n-1
        Ixy(x+1,y+1)=fxy(I,x+1,y+1);
      endfor
    endfor
endfunction
