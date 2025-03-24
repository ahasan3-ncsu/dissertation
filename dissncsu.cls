\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissncsu}[2025/04/04 Dissertation class for NCSU ETD]

% Hardcoded 12pt everywhere
\LoadClass[12pt,oneside]{book}

% Page layout
\RequirePackage[margin=1in]{geometry}

% Onehalfspacing
\RequirePackage{setspace}
\onehalfspacing

% Figures, Tables & Math
\RequirePackage{graphicx, subcaption, booktabs, multirow}
\RequirePackage{amsmath, amssymb, bm, mathtools, siunitx}

% Hyperref settings
\RequirePackage[
    colorlinks=true,
    linkcolor=blue,
    pdftitle={Atomsky's dissertation},
]{hyperref}

% Math operators
\DeclareMathOperator{\lev}{lev}

% Title & names
\newcommand{\dissTitle}[1]{\def\dTitle{#1}}
\newcommand{\dissAuthor}[2]{\def\dAuthorLast{#1} \def\dAuthorFirst{#2}}

\newcommand{\dissChair}[1]{\def\dChair{#1}}
\newcommand{\dissMemberI}[1]{\def\dMemberI{#1}}
\newcommand{\dissMemberII}[1]{\def\dMemberII{#1}}
\newcommand{\dissMemberIII}[1]{\def\dMemberIII{#1}}

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
  {\parindent \z@ \centering
    \normalfont
    \interlinepenalty\@M
	\large \bfseries  \MakeUppercase{#1}\par\nobreak
    \vskip 20\p@
  }}
\makeatother

% Abstract
\newcommand{\abstractname}{Abstract}
\newenvironment{abstract}{
	%\chapter*{\centering\MakeUppercase{\abstractname}}
	\chapter*{\abstractname}
	\thispagestyle{empty}
	\pagestyle{empty}

	\begin{singlespace}
		\MakeUppercase{\dAuthorLast, \dAuthorFirst.}
		\dTitle.
		(Under the direction of \dChair).
	\end{singlespace}
	\vspace{12pt}
}{
	\clearpage
}

% Copyright page
\newcommand{\makecopyrightpage}{
	\clearpage
	\begin{center}
		\quad
		\vspace{0.35\textheight}

		\copyright{} Copyright {\the\year} by
		{\dAuthorFirst} {\dAuthorLast}

		\vspace{1em}
		All Rights Reserved

		\vfill
	\end{center}
	\thispagestyle{empty}
}
