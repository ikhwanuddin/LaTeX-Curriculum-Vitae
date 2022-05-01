% Intro Options
\ProvidesClass{style}[2022/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[utf8]{inputenc}
\usepackage[document]{ragged2e}
\usepackage{notoccite}
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage{array}
\usepackage{hyperref}
\hypersetup{
     colorlinks=true, 
     linkcolor=red, 
     filecolor=red, 
     citecolor=red,       
     urlcolor=red}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\newcommand{\lastupdated}{\begin{textblock*}{130pt}(455pt,20pt)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont \noindent
Last Updated on \today
\end{textblock*}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{25pt}{30pt}
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.1pt}}
\vspace{-10pt}
}

% Opening Command
\newcommand{\opening}[8]{\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}
    \begin{tabular*}{1\textwidth}{@{}l @{\extracolsep{\fill}} @{}r}
      \fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{12pt}{14pt}{#1} \textbullet{} \color{subheadings}\fontsize{11pt}{13pt}\fontspec[Path = fonts/lato/]{Lato-Lig}{#7} & \fontspec[Path = fonts/raleway/]{Raleway-Light}{#2} \\
      \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}{#3} & \fontspec[Path = fonts/raleway/]{Raleway-Light}{#4} \\
      \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{12pt}{13pt}{#5} \textbullet{} \fontsize{11pt}{13pt}\fontspec[Path = fonts/lato/]{Lato-Lig}{#6}
      & \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{13pt}{#8} \\[5pt]
    \end{tabular*} \noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.1pt}} \vspace{-10pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\newcommand{\runsubsection}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{14pt}\selectfont\bfseries\uppercase {#1}  \normalfont}
\newcommand{\runsubsectionn}[1]{
\color{headings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{14pt}\selectfont\bfseries\uppercase {#1}  \normalfont}

% Education command
\newcommand{\educ}[8]{\color{subheadings}
	\begin{tabular*}{1\textwidth}{@{}l@{\extracolsep{\fill}}@{}r}
	\runsubsection{#1} & \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{13pt}\selectfont {CGPA #2} \textbullet{} \color{subheadings}\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont{#3} \\ 
	\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#4} &
	\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{13pt}\selectfont{#5} \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{13pt}\selectfont\textbullet{} 
	\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}\selectfont {#6} \\
	\multicolumn{2}{@{}m{\textwidth}@{}}{\color{headings}\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{13pt}{#7}: \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}\selectfont {#8}}\\
	\end{tabular*}
}

% Descriptors #1 command
\newcommand{\descript}[1]{
\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont }

% Descriptors #2 command
\newcommand{\descriptt}[1]{
\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% CGPA command
\newcommand{\gpa}[2]{\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{13pt}\selectfont\textbullet{}
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{13pt}\selectfont {GPA #1} \textbullet{} \color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont{#2 \\} \normalfont }

% Thesis command
\newcommand{\thesis}[2]{\\
\fontspec[Path = fonts/lato/]{Lato-RegIta}\fontsize{11pt}{13pt}{#1}: 
\color{headings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{13pt}\selectfont {#2 \\} \normalfont}

% Location command
\newcommand{\location}[2]{\color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{13pt}\selectfont {#1} \color{subheadings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{13pt}\selectfont\textbullet{} 
\color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{13pt}\selectfont {#2} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
