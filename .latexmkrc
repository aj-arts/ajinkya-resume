# Build PDFs with pdflatex + synctex
$pdf_mode = 1;
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode %O %S';

# Use Skim as the viewer in -pvc mode (auto-reloads on file change)
$pdf_previewer = 'open -a Skim %S';
$pdf_update_method = 0;
