\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissncsu}[2025/04/04 Dissertation class for NCSU ETD]

\LoadClass[12pt,oneside]{book}

% Page layout
\RequirePackage[margin=1in]{geometry}

% Packages
\RequirePackage{graphicx, subcaption, booktabs, multirow}
\RequirePackage{amsmath, amssymb, bm, mathtools, siunitx}
\RequirePackage{placeins, hyperref}

% Hyperref settings
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    pdftitle={Atomsky's dissertation},
}

% Onehalfspacing
\RequirePackage{setspace}
\onehalfspacing

% No header, page number at the bottom
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\thepage}

% Rename TOC, Bibliography
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\bibname}{References}

% MTP level operator
\DeclareMathOperator{\lev}{lev}
