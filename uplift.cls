\ProvidesClass{uplift}[2012/01/03 version 0.01 uplift class]
\NeedsTeXFormat{LaTeX2e}[1996/06/01]%  

\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
\PassOptionsToClass{\CurrentOption}{book}}}
\ProcessOptions \relax

\LoadClass{book}
\PassOptionsToPackage{pdftex}{hyperref}

\RequirePackage[inner=1.5in,outer=1in,top=1in,bottom=1in]{geometry}

\RequirePackage[section]{placeins}
\RequirePackage{cprotect}
\RequirePackage{picins}
%\RequirePackage{parpic}
%\RequirePackage{MnSymbol}
\RequirePackage{multirow}
%\RequirePackage{textcomp}
\RequirePackage{mathtools}
\RequirePackage{adjustbox}
\newcommand{\textpeso}{\ensuremath{\mathrlap{\adjustbox{raise=2.4pt}{=}}{\mathrm{P}}}}

\def\anumber{\textit{a number}}

\newcommand{\Answers}{\textbf{Answers}}
\newcommand{\Segment}[1]{\overline{#1}}
\newcommand{\Problems}{\textbf{Problems}}
\newcommand{\ray}[1]{\overrightarrow{#1}}

\RequirePackage{titlesec}
\def\LinkColor{blue!50!black}
\def\bingo{blue!50}
\titleformat{\chapter}[display]{\Huge\bfseries\color{\LinkColor}}{
\begin{tikzpicture}[remember picture,overlay,xshift=5in,yshift=0.25in]
\node (chapter) [align=center] {Module};
\node at (chapter.east) [gray,opacity=0.5] {\fontsize{80}{80}\bfseries\itshape\selectfont\thechapter};
\end{tikzpicture}
}{12pt}{}[\color{\LinkColor}\kern2pt\hrule\kern1pt]

%\titleformat{\section}[display]{\Large}{}{12pt}{\thesection}[\color{blue!50}\kern2pt\hrule\kern1pt]


\RequirePackage{mdframed}
\RequirePackage{longtable}
\RequirePackage{cancel}
\RequirePackage{calc}
\RequirePackage{marvosym}
\RequirePackage{microtype}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
%\RequirePackage[charter]{mathdesign}
\RequirePackage{libertine}
%\RequirePackage[frenchmath,italic]{mathastext}
%\RequirePackage{newtxtext}
\RequirePackage{newtxmath}
\newenvironment{tabularu}{\begin{tabular}}{\end{tabular}}
\newenvironment{Quote}{\begin{quote}}{\end{quote}}
\RequirePackage{makeidx}
\makeindex
\newcommand{\Php}{Php}
\newcommand{\Bold}[1]{\textbf{\textcolor{\LinkColor}{#1}}\index{#1}}
\newcommand{\Solution}{\textbf{Solution}}
\newcommand*{\CHECK}{\textbf{Check}}
\newcommand{\Ital}[1]{\textit{#1}}
\newcommand{\LATIN}[1]{\textit{#1}}
\newcommand{\sampleexercise}[1]{\subsubsection{#1}}
\newenvironment*{exercise}{\begin{enumerate}}{\end{enumerate}}
\RequirePackage{tabularx}
\renewcommand{\tabularxcolumn}[1]{m{#1}}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{Y}{>{\centering\arraybackslash}p{0.15\linewidth}}
\RequirePackage{tikz}
\usetikzlibrary{shapes.symbols,patterns,shapes.geometric,shapes.misc,calc,positioning,backgrounds,fit,arrows,decorations,decorations.pathmorphing,decorations.pathreplacing}
\RequirePackage{smartdiagram}
%\usetikzlibrary{calc,arrows}

\pgfdeclarelayer{background layer}
\pgfdeclarelayer{foreground layer}
\pgfsetlayers{background layer,main,foreground layer,background}

\definecolor{mybluecolor}{rgb}{.204,.486,.741}
\RequirePackage{lipsum}

\RequirePackage{caption}

%%% Define a new caption separator
%\DeclareCaptionLabelSeparator*{newlinerule}{\par\kern2pt\hrule\kern1pt}
\DeclareCaptionLabelSeparator*{newlinerule}{\par\kern2pt\rule{2in}{1pt}\par\kern1pt}

\captionsetup{
  font={small,singlespacing},
  format=plain,
  labelformat=simple,
  labelsep=newlinerule,
  singlelinecheck=true,
  labelfont={color=mybluecolor,bf},
}

\RequirePackage[hang,raggedright]{subfigure}
\RequirePackage{enumerate}
\newenvironment{myenumerate}{%
  \edef\backupindent{\the\parindent}%
  \enumerate%
  \setlength{\parindent}{\backupindent}%
}{\endenumerate}
\newcommand{\answerline}[1]{
\begin{tabularx}{0.2\linewidth}{p{0.5in}>{\raggedright\arraybackslash}X}
#1 & \makebox[0.5in]{\hrulefill}\\
\end{tabularx}
}

\newmdenv[shadow=true,
shadowsize=11pt,
linewidth=8pt,
frametitlerule=true,
roundcorner=10pt,
]{myshadowbox}
%\newenvironment{property}{\begin{myshadowbox}}{\end{myshadowbox}}

\RequirePackage{pgfplots}
\pgfplotsset{compat=1.7}

%\newenvironment{thinkback}{\begin{mdframed}[style=digressionarrows]}{\end{mdframed}}
%\newenvironment{fact}{\begin{mdframed}[style=fact]}{\end{mdframed}}
\mdfsetup{skipabove=\topskip,skipbelow=\topskip}
\RequirePackage{etoolbox}
\newcommand{\Line}{\makebox[0.5in]{\hrulefill}}
\newcommand{\tikzmark}[1]{\tikz[overlay,remember picture] \node (#1) {};}
\newcommand{\Tikzmark}[2]{\tikz[overlay,remember picture] \node (#1) {#2};}
%\RequirePackage{multicol}
\RequirePackage{makerobust}
\MakeRobustCommand{\textpeso}
\RequirePackage{colortbl}
\def\Md{\ensuremath{\mathrm{Md}}}
\def\Mo{\ensuremath{\mathrm{Mo}}}
\def\T{\,\mathrm{t}}
\def\dkm{\,\mathrm{dkm}}
\def\gal{\,\mathrm{gal}}
\def\qt{\,\mathrm{qt}}
\def\yd{\,\mathrm{yd}}
\def\IN{\,\mathrm{in}}
\def\ft{\,\mathrm{ft}}
\def\m{\,\mathrm{m}}
\def\cm{\,\mathrm{cm}}
\def\Li{\,\mathrm{L}}
\def\mL{\ensuremath{\,\mathrm{mL}}}
\def\mm{\,\mathrm{mm}}
\def\dm{\,\mathrm{dm}}
\def\km{\ensuremath{\,\mathrm{km}}}
\def\mi{\,\mathrm{mi}}
\def\oz{\,\mathrm{oz}}
\def\g{\,\mathrm{g}}
\def\C{\ensuremath{\,\mathrm{C}}}
\def\F{\ensuremath{\,\mathrm{F}}}
\def\and{\,\text{and}\,}
\def\degree{\ensuremath{\mathrm{^{\circ}}}}
\RequirePackage{multicol}
\newcommand{\yourown}{Try these practice problems on your own.}
\newcommand{\Underline}[1]{\underline{#1}}
%\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
%\fancyhead{}%
\fancyfoot{}%
\fancyfoot[RE,LO]{\footnotesize \color{\LinkColor} MATHEMATICS MODULE || Page \textbf{\thepage} of \textbf{\pageref{LastPage}}}
%\fancyhead[RE,LO]{\thechapter}
\fancyhead[RO,LE]{\footnotesize \color{blue!50!black} \textcopyright{} UPLIFT}
\newcounter{example}[chapter]
\newenvironment{example}[1][]{\refstepcounter{example}\par\medskip\noindent%
    \tikz {\node (A) [baseline={(current bounding box.west)},rectangle,text height=10pt,text width=0.75\linewidth,inner sep=1pt, shade,shading=rectangle,inner color=yellow,left color=blue!30,right color=white,align=left] {\textbf{\sffamily Example~\thechapter.\theexample #1}};
    }
    \begin{myenumerate}
    }{\end{myenumerate}\par 
    \hfill \tikz {\node (A) [rectangle,minimum height=5pt,minimum width=5pt,fill=blue!50!white] {};
    \draw [color=blue!20!white] (A.south east) -- +(-0.5\linewidth,0);
    }
    \par\medskip}
\RequirePackage{paralist}
\RequirePackage[style=authoryear,backend=biber,]{biblatex}
\RequirePackage{pdfcomment}
\addbibresource{upliftbib.bib}
\DefineBibliographyStrings{english}{
bibliography={REFERENCES}
}
%\newtheorem{definition}{Definition}
\newcommand{\subsubsubsection}[1]{\subsubsection*{#1}}
\definecolor{captioncolor}{HTML}{005587}
\definecolor{linecolor}{HTML}{0074C8}
\definecolor{fillcolor}{cmyk}{0.1,0.05,0,0}
\definecolor{brickcolor}{HTML}{F0D8B2}
\definecolor{blockcolor}{HTML}{B6B6B6}
\definecolor{groundcolor}{HTML}{E4D8C5}
\definecolor{earthcolor}{HTML}{C5FFFF}
\definecolor{watercolor}{cmyk}{0.1,0.05,0,0}
\definecolor{codecolor}{HTML}{FFF7E0}
\definecolor{linenumcolor}{HTML}{8C8C8C}
%\definecolor{headercolor}{HTML}{F5F5F5}
\definecolor{headercolor}{HTML}{E9EFEF}
\definecolor{insideo}{HTML}{798084}
\definecolor{insidei}{HTML}{F0F0F0}
\definecolor{outer}{HTML}{424296}
\definecolor{inner}{HTML}{D8D8FF}

% Definitions for tally
% http://compgroups.net/comp.text.tex/tally-symbols-in-latex/1907031
\RequirePackage[misc]{ifsym}
\RequirePackage{ifthen}

%% Define \tally{#1} command where #1 is a number.  The macro then
%% typesets the appropriate number of tally marks from the ifsym
%% package.  Also requires the ifthen package, documented in Lamport.
\newcounter{strokecount}
\newcommand{\tally}[1]{\setcounter{strokecount}{#1}%
  \whiledo{\value{strokecount}>5}%
  {\addtocounter{strokecount}{-5}\textit{\small\textcolor{blue}{\StrokeFive}}}%
  \ifthenelse{\value{strokecount}=5}{\textit{\small\textcolor{blue}{\StrokeFive}}}{}%
  \ifthenelse{\value{strokecount}=4}{\textit{\small\textcolor{blue}{\StrokeFour}}}{}%
  \ifthenelse{\value{strokecount}=3}{\textit{\small\textcolor{blue}{\StrokeThree}}}{}%
  \ifthenelse{\value{strokecount}=2}{\textit{\small\textcolor{blue}{\StrokeTwo}}}{}%
  \ifthenelse{\value{strokecount}=1}{\textit{\small\textcolor{blue}{\StrokeOne}}}{}}


\newcommand*{\rotatedbox}[1]{
\tikz \node [rotate=180] {#1
	};
}
%%%%%%%%%% HERE COMES THE PATCH %%%%%%%%%%
\RequirePackage{etoolbox}

\makeatletter
\pretocmd\start@align
{%
  \let\everycr\CT@everycr
  \CT@start
}{}{}
\apptocmd{\endalign}{\CT@end}{}{}
\makeatother
%%%%%%%%%% END PATCH %%%%%%%%%%

%\RequirePackage{hf-tikz}
% put color to \boxed math command
\newcommand*{\boxcolor}{blue!40}
\makeatletter
\renewcommand{\boxed}[1]{\textcolor{\boxcolor}{%
\tikz[baseline={([yshift=-.75ex]current bounding box.center)}] \node [rectangle, minimum width=1ex,rounded corners,draw] {\normalcolor\m@th$\displaystyle#1$};}}
\makeatother
\newcommand{\Item}{\item}
%\mdfdefinestyle{theoremstyle}{shadow=true,
%				  shadowsize=5pt,
%          linewidth=5pt,
%          frametitlerule=true,
%          roundcorner=10pt,
%          innertopmargin=\topskip}
%\newcommand{\thm}[1]{#1\index{#1}}
%\mdtheorem[style=theoremstyle]{definition}{Definition}
%\BeforeBeginEnvironment{definition}{\vspace*{\topskip}}
%\AfterEndEnvironment{definition}{\vspace*{\topskip}}
\newcounter{theo}[chapter]
\newenvironment{definition}[1][]{%
\refstepcounter{theo}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Definition~\thechapter.\thetheo};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Definition~\thechapter.\thetheo:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt,linecolor=blue!20,%
linewidth=2pt,topline=true,
frametitleaboveskip=\dimexpr-\ht\strutbox\relax,}
\begin{mdframed}[]\relax%
}{\end{mdframed}}

\newcounter{property}[chapter]
\newenvironment{property}[1][]{%
\refstepcounter{property}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Property~\thechapter.\theproperty};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Property~\thechapter.\theproperty:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt,linecolor=blue!20,%
linewidth=2pt,topline=true,
frametitleaboveskip=\dimexpr-\ht\strutbox\relax,}
\begin{mdframed}[]\relax%
}{\end{mdframed}}

\newcounter{think}[chapter]
\newenvironment{thinkback}[1][]{%
\refstepcounter{think}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Think Back~\thechapter.\thethink};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Think Back~\thechapter.\thethink:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt,linecolor=blue!20,%
linewidth=2pt,topline=true,
frametitleaboveskip=\dimexpr-\ht\strutbox\relax,}
\begin{mdframed}[]\relax%
}{\end{mdframed}}

\newcounter{Fact}[chapter]
\newenvironment{fact}[1][]{%
\refstepcounter{Fact}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Fact!~\thechapter.\theFact};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Fact!~\thechapter.\theFact:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt,linecolor=blue!20,%
linewidth=2pt,topline=true,
frametitleaboveskip=\dimexpr-\ht\strutbox\relax,}
\begin{mdframed}[]\relax%
}{\end{mdframed}}
%\RequirePackage[explicit]{titlesec}
%\newcommand*\chapterlabel{}
%\titleformat{\chapter}
%  {\gdef\chapterlabel{}
%   \normalfont\sffamily\Huge\bfseries\scshape}
%  {\gdef\chapterlabel{\thechapter\ }}{0pt}
%  {\begin{tikzpicture}[remember picture,overlay]
%    \node[yshift=-3cm] at (current page.north west)
%      {\begin{tikzpicture}[remember picture, overlay]
%        \draw[fill=LightSkyBlue] (0,0) rectangle
%          (\paperwidth,3cm);
%        \node[anchor=east,xshift=.9\paperwidth,rectangle,
%              rounded corners=20pt,inner sep=11pt,
%              fill=MidnightBlue]
%              {\color{white}\chapterlabel#1};
%       \end{tikzpicture}
%      };
%   \end{tikzpicture}
%  }
%\titlespacing*{\chapter}{0pt}{50pt}{-60pt}
\RequirePackage{pgf-pie}
\RequirePackage{epigraph}

\renewcommand\epigraphflush{flushright}
\renewcommand\epigraphsize{\normalsize}
\setlength\epigraphwidth{0.7\textwidth}

\definecolor{titlepagecolor}{cmyk}{1,.60,0,.40}

\DeclareFixedFont{\titlefont}{T1}{ppl}{b}{it}{0.5in}

\makeatletter                       
\def\printauthor{%                  
    {\large \@author}}              
\makeatother
\author{%
\textbf{Module Writers:}\\
    Jonellyn S. Albano (IRC)\\
    Daryl R. Alegarbes (SMC)\\
    Ronnie R. Calanno (IRC)\\
    Leo Andrei A. Crisologo (MC)\\
    Maricel B. Dumlao (CVC)\\
    Rommel O. Gregorio (CARC)\\
    Rosalinda O. Luwang (CVC)\\
    Mary Gay Antonette G. Magpantay (MC)\\
    Ronnalee I. Navasca-Orteza (IRC)\\
    Flordelino C. Orteza, Jr. (IRC)\\
    Herminigilda C. Salac (MC)\\
    Fortunato A. Tacuboy III (MC)\\[24pt]
\textbf{Module Editors:}\\
	Mark John V. Ayaay (MC)\\
	Leo Andrei A. Crisologo (MC)\\
	Jose Manresa D. Español IV (MC)\\
	Kiel F. Granada (MC)\\
	Mario Danilo R. Llanura (MC)\\
	Mary Gay Antonette G. Magpantay (MC)\\
	Herminigilda C. Salac (MC)\\
	Joyce Marianne B. Simpas (MC)\\
	Fortunato A. Tacuboy III (MC)\\
	Joseph S. Tabadero, Jr. (CARC)
    }

% The following code is borrowed from: http://tex.stackexchange.com/a/86310/10898

\newcommand\titlepagedecoration{%
\begin{tikzpicture}[remember picture,overlay,shorten >= -10pt]

\coordinate (aux1) at ([yshift=-15pt]current page.north east);
\coordinate (aux2) at ([yshift=-410pt]current page.north east);
\coordinate (aux3) at ([xshift=-4.5cm]current page.north east);
\coordinate (aux4) at ([yshift=-150pt]current page.north east);

\begin{scope}[titlepagecolor!40,line width=12pt,rounded corners=12pt]
\draw
  (aux1) -- coordinate (a)
  ++(225:5) --
  ++(-45:5.1) coordinate (b);
\draw[shorten <= -10pt]
  (aux3) --
  (a) --
  (aux1);
\draw[opacity=0.6,titlepagecolor,shorten <= -10pt]
  (b) --
  ++(225:2.2) --
  ++(-45:2.2);
\end{scope}
\draw[titlepagecolor,line width=8pt,rounded corners=8pt,shorten <= -10pt]
  (aux4) --
  ++(225:0.8) --
  ++(-45:0.8);
\begin{scope}[titlepagecolor!70,line width=6pt,rounded corners=8pt]
\draw[shorten <= -10pt]
  (aux2) --
  ++(225:3) coordinate[pos=0.45] (c) --
  ++(-45:3.1);
\draw
  (aux2) --
  (c) --
  ++(135:2.5) --
  ++(45:2.5) --
  ++(-45:2.5) coordinate[pos=0.3] (d);   
\draw 
  (d) -- +(45:1);
\end{scope}
%\begin{scope}
%\node at (current page.south) {\rule[5pt]{\linewidth}{2pt}};
%\end{scope}
\end{tikzpicture}%
}

\hypersetup{hidelinks, breaklinks=true,colorlinks=true,allcolors=\LinkColor}
\renewcommand{\textcent}{\ensuremath{\mathrlap{/}{\mathrm{c}}}}

\endinput