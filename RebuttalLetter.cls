\ProvidesClass{RebuttalLetter}
\LoadClass[12pt]{article}

\NeedsTeXFormat{LaTeX2e}

\usepackage[
    a4paper,
    left = 2.54cm,
    right = 2.54cm, 
    top=2.54cm, 
    bottom=2.54cm
]{geometry}


\usepackage{xcolor}

\RequirePackage[fixed]{fontawesome5}

%% Set the header and footer
\definecolor{MainColor}{rgb}{0.1172 0.2578 0.4805}
% see https://tex.stackexchange.com/questions/227/how-can-i-add-page-of-on-my-document
\usepackage{lastpage}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} % clear existing header/footer entries
\renewcommand{\headrule}{}
\fancyfoot[C]{Page {\thepage} of \pageref*{LastPage}}
% note that 
%   \thispagestyle{firststyle}
% must be used below \maketitle
\fancypagestyle{firststyle}
{
    \fancyhf{}
    \fancyhead[L]{
        \begin{tabular}{l|l}
            \hspace{-1.3em}
            \parbox{.58\textwidth}{
                \includegraphics[width=0.4\textwidth]{img/PSU_logo.png}
            }
             &
            \parbox{.42\textwidth}{
            {\color{MainColor} \faMapMarker} Graduate Program in Acoustics \\
            \hphantom{\faMapMarker} College of Engineering                 \\
            \hphantom{\faMapMarker} The Pennsylvania State University      \\
            {\color{MainColor} \faEnvelope} 118 Research West              \\
            \hphantom{\faEnvelope} University Park, PA 16802               \\
            {\color{MainColor}\faPhone} (+1)814-699-0386                   \\
            {\color{MainColor}\faAt} Jiaxin.Zhong@psu.edu                  \\
            {\color{MainColor}\faGlobe} {\color{MainColor}\url{http://JiaxinZhong.com}}
            }
        \end{tabular}
    }
    \fancyfoot[C]{Page {\thepage} of \pageref*{LastPage}}
}

\usepackage{lipsum}


%% table
\usepackage{booktabs}
\usepackage{multirow}

% ============Page setup============
\usepackage{hyperref}
\hypersetup{
    colorlinks      =   true,
    bookmarks       =   true,
    bookmarksopen   =   true,
    % bookmarksdepth  =   2,
    pdfstartview    =   Fit,
    pdftitle        =   {Rebuttal Letter},
    pdfauthor       =   {Jiaxin Zhong},
    linkcolor = MainColor,
    urlcolor = MainColor,
}

\usepackage{physics}
\usepackage{mathrsfs}
\usepackage{graphicx}


% command \hl
\usepackage{color,soul}
\usepackage{siunitx} % conflict with pkg physics: \vb
\usepackage{physics}
\usepackage{upgreek}
\usepackage{setspace}
\usepackage{amsmath}
\usepackage{bm}
\usepackage{amssymb}


\newcommand{\rev}[1]{{\leavevmode\color{red}#1}}
\renewcommand{\thefigure}{R\arabic{figure}}
\renewcommand{\theequation}{R\arabic{equation}}
\DeclareMathOperator{\sinc}{sinc}

\renewcommand{\thetable}{R\arabic{table}}
\renewcommand{\thefigure}{R\arabic{figure}}
\renewcommand{\theequation}{R\arabic{equation}}

\usepackage[T1]{fontenc}
% \usepackage{mlmodern}
\usepackage{tgtermes}

\usepackage{caption}
\captionsetup[table]{skip=10pt}


\usepackage{xcolor}

\usepackage[most]{tcolorbox}
\tcbuselibrary{breakable,skins}
\newtcolorbox{commentbox}{
    enhanced, frame hidden, breakable, sharp corners,%
    leftrule=0pt, rightrule=0pt, toprule=0pt, bottomrule=0pt,%
    boxsep=2pt, top=0.5em, bottom=0.5em, left=0.5em, right=0.5em,%
    before skip=1.0em, after skip=1.0em,
    borderline west={2pt}{0pt}{cyan!75!black}, %gray!75!white
    colframe=gray, colback = {cyan!5!white},
    before upper={\parindent15pt\noindent}
}
% \newtcolorbox{commentbox}{
%     colback=cyan!5!white,
%     colframe=cyan!75!black,
%     before upper={\parindent15pt\noindent}
% }

% No indentations for each paragraph
\usepackage[parfill]{parskip}

\onehalfspacing
