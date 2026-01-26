\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissncsu}[2025/04/04 Dissertation class for NCSU ETD]

% Hardcoded 12pt everywhere
\LoadClass[12pt,oneside]{book}

% Page layout
\RequirePackage[margin=1in]{geometry}

% Onehalfspacing
\RequirePackage{setspace}
\onehalfspacing

% Figures, tables, math, etc.
\RequirePackage{graphicx, subcaption}
\RequirePackage{booktabs, multirow}
\RequirePackage{amsmath, amssymb, bm, mathtools, siunitx}
\RequirePackage{placeins, xspace}

% Hyperref settings
\RequirePackage[
    % colorlinks=true,
    % linkcolor=blue,
	hidelinks,
    pdftitle={Atomsky's dissertation},
]{hyperref}

% No header, page number at the bottom
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\thepage}

% Packages for lists of things
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[titles]{tocloft}

% Typeset TOC titles ragged right with no hyphenation
\renewcommand{\@tocrmarg}{2.55em plus1fil}

% Put "Chapter X" in TOC
\renewcommand{\cftchappresnum}{Chapter }
\newlength{\chapgap}
\settowidth{\chapgap}{\bfseries Chapter\enspace}
\addtolength{\cftchapnumwidth}{\chapgap}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}

% Put "Table X" in LOT
\renewcommand{\cfttabpresnum}{\tablename\enspace}
\newlength{\tabgap}
\settowidth{\tabgap}{\cfttabpresnum\cfttabaftersnum}
\addtolength{\cfttabnumwidth}{\tabgap}

% Put "Figure X" in LOF
\renewcommand{\cftfigpresnum}{\figurename\enspace}
\newlength{\figgap}
\settowidth{\figgap}{\cftfigpresnum\cftfigaftersnum}
\addtolength{\cftfignumwidth}{\figgap}

% Rename lists and bibliography
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\renewcommand{\bibname}{REFERENCES}

% Fix citation order in TOC; load after tocloft
\RequirePackage{notoccite}

% Title & names
\newcommand{\dissTitle}[1]{\def\dTitle{#1}}
\newcommand{\dissAuthor}[2]{\def\dAuthorLast{#1} \def\dAuthorFirst{#2}}

\newcommand{\dissChair}[1]{\def\dChair{#1}}
\newcommand{\dissMemberI}[1]{\def\dMemberI{#1}}
\newcommand{\dissMemberII}[1]{\def\dMemberII{#1}}
\newcommand{\dissMemberIII}[1]{\def\dMemberIII{#1}}

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
\newenvironment{abstract}{
	\chapter*{Abstract}
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

% Title page
\newcommand{\signatureline}[2][]{
	\begin{minipage}[t]{0.4\textwidth}
		\centering
		\hrule
		\vspace{0.5ex}
		#2\\ #1
	\end{minipage}
}

\newcommand{\committeesignatures}{
	\begin{tabular}[t]{c@{\hspace{0.5in}}c}
		\signatureline[]{\dMemberI} &
		\signatureline[]{\dMemberII} \\[6em]
		\signatureline[]{\dMemberIII} &
		\signatureline[Chair of Advisory Committee]{\dChair} \\
	\end{tabular}
}

\newcommand{\maketitlepage}{
	\clearpage
	\setcounter{page}{1}
	\thispagestyle{empty}
	\begin{singlespace}
		\begin{center}
			\dTitle
			\vfill
			by \\
			\dAuthorFirst\space\dAuthorLast
			\vfill
			A dissertation submitted to the Graduate Faculty of\\
			North Carolina State University\\
			in partial fulfillment of the\\
			requirements for the Degree of\\
			Doctor of Philosophy
			\vfill
			Nuclear Engineering
			\vfill
			Raleigh, North Carolina\\[2ex]
			\the\year
			\vfill
			APPROVED BY:
			\vfill
			\committeesignatures
		\end{center}
	\end{singlespace}
	\clearpage
}
