%%
% Class ``diu-thesis.cls''
%
% Author: Ayon Khan <ayonkhan AT gmail.com>
% Date: 2020/06/06
%
% License: CC BY 4.0
% License URL: https://creativecommons.org/licenses/by/4.0/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diu-thesis}[2020/06/06]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[12pt, twoside, openright]{report}

\RequirePackage[a4paper, width=150mm, top=25mm, bottom=25mm, bindingoffset=6mm, headheight=15pt]{geometry}

% \RequirePackage{emptypage}
\RequirePackage[cleardoublepage=plain]{scrextend}

\RequirePackage[doublespacing]{setspace}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CO,CE]{Chapter \thechapter}
\fancyfoot{}
\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{0pt}

\RequirePackage{hyperref}
\hypersetup{colorlinks, citecolor=black, filecolor=black, linkcolor=black, urlcolor=black}

\RequirePackage{graphicx}
\graphicspath{{images/}}

\newcommand{\gettitle}{\@title}
\newcommand{\getauthor}{\@author}

\newcommand{\setstudentid}[1]{\gdef\@studentid{#1}}
\newcommand{\studentid}{\@studentid}

\newcommand{\setstudentdept}[1]{\gdef\@studentdept{#1}}
\newcommand{\studentdept}{\@studentdept}

\newcommand{\setdepartment}[1]{\gdef\@department{#1}}
\newcommand{\department}{\@department}

\newcommand{\setdegreeword}[1]{\gdef\@degreeword{#1}}
\newcommand{\degreeword}{\@degreeword}

\newcommand{\setdegree}[1]{\gdef\@degree{#1}}
\newcommand{\degree}{\@degree}

\newcommand{\setdegreemonth}[1]{\gdef\@degreemonth{#1}}
\newcommand{\degreemonth}{\@degreemonth}

\newcommand{\setdegreeyear}[1]{\gdef\@degreeyear{#1}}
\newcommand{\degreeyear}{\@degreeyear}

\newcommand{\setthesisdate}[1]{\gdef\@thesisdate{#1}}
\newcommand{\thesisdate}{\@thesisdate}

\newcommand{\setsupervisor}[1]{\gdef\@supervisor{#1}}
\newcommand{\supervisor}{\@supervisor}

\newcommand{\setsupervisortitle}[1]{\gdef\@supervisortitle{#1}}
\newcommand{\supervisortitle}{\@supervisortitle}

\newcommand{\setsupervisordept}[1]{\gdef\@supervisordept{#1}}
\newcommand{\supervisordept}{\@supervisordept}

\newcommand{\setsupervisorfaculty}[1]{\gdef\@supervisorfaculty{#1}}
\newcommand{\supervisorfaculty}{\@supervisorfaculty}

\newcommand{\setapprovalcomdept}[1]{\gdef\@approvalcomdept{#1}}
\newcommand{\approvalcomdept}{\@approvalcomdept}

\newcommand{\Diu}{Daffodil International University}
\newcommand{\DIU}{\MakeUppercase{\Diu}}
\newcommand{\diuaddress}{Dhaka, Bangladesh}

\newcommand{\signature}[2]{%
    \par
    \noindent#1\dotfill\null\\
    {\raggedleft #2\\}
}

\renewcommand{\maketitle}{%
    \begin{titlepage}
        \begin{center}
            \vspace*{1cm}
            \LARGE
            \textbf{\gettitle}\\
            
            \vspace{0.25cm}
            \large
            by\\
            \Large
            \textbf{\getauthor}\\
            \large
            \textbf{ID: {\studentid}}
            
            \vfill
            \small
            Submitted to the Department of {\department}\\
            on {\thesisdate}, in partial fulfillment of the\\
            requirements for the degree of {\degreeword} in\\
            \degree
            
            \vspace{0.5cm}
            \large
            \textbf{Supervised by}\\
            \textbf{\supervisor}\\
            \normalsize
            \supervisortitle\\
            Department of {\supervisordept}\\
            \Diu
            
            \vspace{1cm}
            \includegraphics[width=0.20\textwidth]{images/diu-logo.png}\\
            \large
            \textbf{\Diu}\\
            {\diuaddress}\\
            \degreemonth, \degreeyear
        \end{center}
    \end{titlepage}
}

\newenvironment{pageenv}[1]
    {%
        \cleardoublepage
        
        \thispagestyle{plain}
        
        \section*{#1}
        \addcontentsline{toc}{chapter}{#1}
    }{}

\newenvironment{approvalpage}
    {%
        \begin{pageenv}{Approval}
    }{%
        \end{pageenv}
    }

\newenvironment{declarationpage}
    {%
        \begin{pageenv}{Declaration}
    }{%
            \vspace{3cm}
            \signature{\textbf{Submitted by}}{%
                \textbf{\getauthor}\\
                ID: {\studentid}\\
                Department of {\studentdept}\\
                \Diu
            }
            
            \vspace{3cm}
            \signature{\textbf{Supervised by}}{%
                \textbf{\supervisor}\\
                {\supervisortitle}\\
                Department of {\supervisordept}\\
                Faculty of {\supervisorfaculty}\\
                \Diu
            }
        \end{pageenv}
    }

\newenvironment{acknowledgmentspage}
    {%
        \begin{pageenv}{Acknowledgments}
    }{%
        \end{pageenv}
    }

\renewenvironment{abstract}
    {%
        {%
            \noindent
            \large
            \textbf{\abstractname}\\
        }
    }{}

\newenvironment{abstractpage}
    {%
        \cleardoublepage
        
        \thispagestyle{plain}
        
        \phantomsection
        \addcontentsline{toc}{chapter}{Abstract}
        
        \begin{center}
            \vspace{1cm}
            \textbf{\gettitle}
            \vspace{0.25cm}
            
            by\\
            \textbf{\getauthor}\\
            \textbf{ID: {\studentid}}
            
            \vspace{0.5cm}
            Submitted to the Department of {\department}\\
            on {\thesisdate}, in partial fulfillment of the\\
            requirements for the degree of {\degreeword} in\\
            \degree
        \end{center}
        
        \begin{flushleft}
            \begin{abstract}
    }{%
                \par
                Thesis Supervisor: {\supervisor}\\
                Title: {\supervisortitle}
            \end{abstract}
        \end{flushleft}
    }
