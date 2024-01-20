{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.texlive.combined.scheme-full ];

  shellHook = ''
    echo "Compiling LaTeX document..."
    latexmk -pdf ml_exam.tex
    exit
  '';
}

