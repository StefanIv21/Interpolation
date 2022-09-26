function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel �nc�t aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    rosu=img(:,:,1);
    % TODO: Extrage canalul verde al imaginii.
    verde=img(:,:,2);
    % TODO: Extrage canalul albastru al imaginii.
    albastru=img(:,:,3);
    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    rosu=proximal_resize(rosu,p,q);
    verde=proximal_resize(verde,p,q);
    albastru=proximal_resize(albastru,p,q);
    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
   out=cat(3,rosu,verde,albastru);
endfunction
