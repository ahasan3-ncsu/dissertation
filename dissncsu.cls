\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissncsu}[2025/04/04 Dissertation class for NCSU ETD]

\LoadClass[12pt,oneside]{book}

% Page layout
\RequirePackage[margin=1in]{geometry}

% Onehalfspacing
\RequirePackage{setspace}
\onehalfspacing

% Figures, Tables & Math
\RequirePackage{graphicx, subcaption, booktabs, multirow}
\RequirePackage{amsmath, amssymb, bm, mathtools, siunitx}

% Math operators
\DeclareMathOperator{\lev}{lev}

% Hyperref settings
\RequirePackage[
    colorlinks=true,
    linkcolor=blue,
    pdftitle={Atomsky's dissertation},
]{hyperref}

% No header, page number at the bottom
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\thepage}

% Rename TOC, Bibliography
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\bibname}{References}

% Title of chapter*
\makeatletter
\def\@makeschapterhead#1{%
  %%%%%\vspace*{50\p@}% %%% removed!
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \large \bfseries  #1\par\nobreak
    \vskip 20\p@
  }}
\makeatother

% Abstract
\newcommand{\abstractname}{Abstract}
\newenvironment{abstract}{
	\chapter*{\centering\MakeUppercase{\abstractname}}
	\thispagestyle{empty}
	\pagestyle{empty}
}{\clearpage}
