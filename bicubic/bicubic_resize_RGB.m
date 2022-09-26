function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    rosu=img(:,:,1);
    % TODO: Extrage canalul verde al imaginii.
    verde=img(:,:,2);
    % TODO: Extrage canalul albastru al imaginii.
    albastru=img(:,:,3);
    % TODO: Aplica functia bicubic pe cele 3 canale ale imaginii.
    rosu=bicubic_resize(rosu,p,q);
    verde=bicubic_resize(verde,p,q);
    albastru=bicubic_resize(albastru,p,q);
    % TODO: Formeaza imaginea finala concatenand cele 3 canale de culori.
    out=cat(3,rosu,verde,albastru);
endfunction
