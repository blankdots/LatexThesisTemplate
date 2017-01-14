%-------------------------------
% Revision 2.0  2013/07/15 15:48:16  blankdots
% modified class to fit @blankdots phd thesis
% retrieved 15-Jul-2013
%-------------------------------
% $Log: mitthesis.cls,v $
% Revision 1.9  2012/02/15 15:48:16  jdreed
% Tweak the "permission" statement per the Libraries' specs
% retrieved 15-Feb-2012
%
% Revision 1.8  2009/07/27 14:23:50  boojum
% added changing draft mark
%
% Revision 1.6  2005/05/13 19:57:40  boojum
% added leftblank option
%
% Revision 1.5  2002/04/18 14:10:08  boojum
% changed doublespace into setspace for 2e compliance
%
% Revision 1.4  2001/02/08 18:57:13  boojum
% turned two newpages into cleardoublepages
%
% Revision 1.3  2000/08/14 14:53:29  boojum
% commented out footheight, which is relevant for drafthead
%
% Revision 1.2  1999/10/21 14:51:33  boojum
% changed references to documentstyle to documentclass in comments
%
% Revision 1.1  1999/10/21 14:39:31  boojum
% Initial revision
%
%Revision 1.7  1998/04/01  20:45:34  othomas
%removed offending phrase ", and to grant others the right to do so" from copyright notice.
%
%Revision 1.6  96/06/26  15:07:29  othomas
%safety checkin.
%
%Revision 1.5  93/06/07  15:38:50  starflt
%Altered 'vi' option copyright wording to comply with new Institute
%Archives requirements and MIT lawyers.
%
%Revision 1.4  92/08/19  16:51:06  lwvanels
%Updated Course 6 title page for new permissions.
%
%Revision 1.3  92/04/23  10:16:15  epeisach
%Fixed comment character in rcs file
%
%Revision 1.2  92/04/22  13:12:02  epeisach
%Fixes for 1991 course 6 requirements
%Phrase "and to grant others the right to do so" has been added to
%permission clause
%Second copy of abstract is not counted as separate pages so numbering works
%out
%
%Revision 1.1  90/05/04  11:45:53  lwvanels
%Initial revision

%
% LaTeX format for theses at MIT
% Based on "Specifications for Thesis Preparation"

% `vi' and `upcase' options by Krishna Sethuraman - krishna@athena.mit.edu
% Margins and heading types by Peter Nuth  - nuth@ai.mit.edu
% Title and abstract page by Stephen Gildea - gildea@erl.mit.edu
% Look in this directory for example file mitthesis.doc
% Also for propcover.tex - Boilerplate for PHD proposal.

% To use this style - say something like:
%  for dull, boring thesis format:
%	\documentclass[12pt]{mitthesis}
%       \pagestyle{plain}
%%%% New options:
%
% Option `twoside':
%   Good for producing Tech Reports.
%   The default is single-sided printing, which is what M.I.T. wants on the
%   thesis document itself.
%
% Option `singlespace':
%   Good for drafts.
%   Double-spaced theses are the default.
%   That is what M.I.T. asks for in the formal specifications.
%
% 	Note that MIT does not REQUIRE all theses to be double-spaced anymore.
% 	Someone in the library system said that it's OK to be single-spaced.
% 	(Regardless of what the specs. say...)
%   To get singlespacing in an area - Use  the 'singlespace' environment.
%
%
%%%%%%%%%%
%
%%%% Parameters to initialize for boilerplate page:
%
%	\title{Mixed Circular Cylindrical Shells}
% 	\author{J. Casey Salas}
% 	\prevdegrees{B.S., University of California (1978) \\
%		     S.M., Massachusetts Institute of Technology (1981)}
% 	\department{Department of Electrical Engineering and Computer Science}
% 	\degree{Doctor of Philosophy}
%% If the thesis is for two degrees simultaneously, list them both
%% separated by \and like this:
% 	\degree{Doctor of Philosophy \and Master of Science}
% 	\degreemonth{February}
% 	\degreeyear{1987}
% 	\thesisdate{December 10, 1986}
%% If the thesis is copyright by the Institute, leave this line out and
%% the standard copyright line will be used instead.
% 	\copyrightnotice{J. Casey Salas, 1986}
%% If there is more than one supervisor, use the \supervisor command
%% once for each.
% 	\supervisor{John D. Galli}{Director, Sound Instrument Laboratory}
%% This is the department committee chairman, not the thesis committee chairman
% 	\chairman{Arthur C. Smith}
%		 {Chairman, Departmental Committee on Graduate Students}
%% Make the titlepage based on the above information.  If you need
%% something special and can't use the standard form, you can specify
%% the exact text of the titlepage yourself.  Put it in a titlepage
%% environment and leave blank lines where you want vertical space.
%% The spaces will be adjusted to fill the entire page.  The dotted
%% lines for the signatures are made with the \signature command.
%
%% The abstractpage environment sets up everything on the page except
%% the text itself.  The title and other header material are put at the
%% top of the page, and the supervisors are listed at the bottom.  A
%% new page is begun both before and after.  Of course, an abstract may
%% be more than one page itself.  If you need more control over the
%% format of the page, you can use the abstract environment, which puts
%% the word "Abstract" at the beginning and single spaces its text.
%
% 	\begin{abstractpage}
%	    Abstract goes here.
%	\end{abstractpage}
%
%%%%%%%% Newer additions
%
% documentclass options -
% vi		For MIT course VI or VIII thesis - will copyright the thesis to
% 		you while giving MIT permission to copy and distribute it.
% upcase	Will put much of the cover page in uppercase, as per the
% 		example on page 17 of the *Specifications for Thesis
% 		Preparation*, (revised 1989)
% Also added ``All Rights Reserved'' to default copyright notice.
%
%%%%%%%%%%%
%
% Documentclass options (vi and upcase) and changes to copyright notice
%	Copyright (c) 1990, by Krishna Sethuraman.
%
% Pagestyle and header generation
%	Copyright (c) 1987, 1988 by Peter Nuth
%
% Original version
%	 Copyright (c) 1987 by Stephen Gildea
% Permission to copy all or part of this work is granted, provided
% that the copies are not made or distributed for resale, and that
% the copyright notice and this notice are retained.
%
% THIS WORK IS PROVIDED ON AN "AS IS" BASIS.  THE AUTHOR PROVIDES NO
% WARRANTY WHATSOEVER, EITHER EXPRESS OR IMPLIED, REGARDING THE WORK,
% INCLUDING WARRANTIES WITH RESPECT TO ITS MERCHANTABILITY OR FITNESS
% FOR ANY PARTICULAR PURPOSE.
%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mitthesis}[1999/10/20]

\def\mystretch{1.2}		% Double spacing hack
\DeclareOption{doublespace}{}	% This is default
				% So we do not read this style twice
\DeclareOption{singlespace}{		% If he explicitly wants single spacing
    \typeout{Single spaced}
    \def\mystretch{1}}

%% `vi' and `upcase' document style options.  Krishna Sethuraman (1990)
\newcount\vithesis
\DeclareOption{vi}{\typeout{Course VI/VIII thesis style.}\advance\vithesis by1}
\vithesis=0

\DeclareOption{upcase}{\typeout{Uppercase cover page.}
	\gdef\choosecase#1{\uppercase\expandafter{#1}}}
\def\choosecase#1{#1}

%% leftblank option by Kevin Fu
\newif\if@leftblank \@leftblankfalse

\DeclareOption{leftblank}{\typeout{Intentionally Leaving Pages Blank}
\@leftblanktrue}

%  Thesis looks much like report
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

% If the user wants single spacing, set baselinestretch=1.

\usepackage{setspace}

% Note - doublespace.sty has some float-related troubles in
% combination with graphics or color, and is not officially compliant
% with 2e.  setspace is a replacement which is 2e-compliant.

% Read the doublespace style that we got from Rochester:
%\input setdoublespace.sty

\def\baselinestretch{\mystretch}	% Double spacing hack

%%%%%%%  Set up margins and formatting params %%%

% Margins.
%  Note we want 1in top margin assuming no header line, so push header
%	into 1in margin.
%  Draft mode brings the header back down.

\setlength{\oddsidemargin}{0.25in}	% 1.25in left margin
\setlength{\evensidemargin}{0.25in}	% 1.25in left margin (even pages)
\setlength{\topmargin}{0.0in}		% 1in top margin
\setlength{\textwidth}{6.0in}		% 6.0in text - 1.25in rt margin
\setlength{\textheight}{9.0in}		% Body ht for 1in margins
\addtolength{\topmargin}{-\headheight}	% No header, so compensate
\addtolength{\topmargin}{-\headsep}	% for header height and separation

% The next two macros compensate page style for headers and footers
% We only need them in page styles that USE headers and footers.
    % If we have a header, it must be 1in from top of page.
\def\pulldownheader{			% Shift header down 1in from top
    \addtolength{\topmargin}{\headheight}
    \addtolength{\topmargin}{\headsep}
    \addtolength{\textheight}{-\headheight}
    \addtolength{\textheight}{-\headsep}
}
    % If we have a footer, put it 1in up from bottom
\def\pullupfooter{				% Shift footer up
    \addtolength{\textheight}{-\footskip}
%    \addtolength{\textheight}{-\footheight}  %footheight doesn't
%    						exist in 2e
}

%%%%%%%  End of margins and formatting params %%%

%%%%%%%  Fix various header and footer problems %%%


% I redefine these formats that were defined in report.sty
% Definition of 'headings' page style
%  Note the use of ##1 for parameter of \def\chaptermark inside the
%  \def\ps@headings.
%

\if@twoside					% If two-sided printing.
\def\ps@headings{\let\@mkboth\markboth
    \def\@oddfoot{}
    \def\@evenfoot{}		% No feet.
    \def\@evenhead{\rm \thepage\hfil \sl \leftmark}	% Left heading.
    \def\@oddhead{\hbox{}\sl \rightmark \hfil \rm\thepage}	% Right heading.
    \def\chaptermark##1{\markboth {\uppercase{\ifnum \c@secnumdepth >\m@ne
	\@chapapp\ \thechapter. \ \fi ##1}}{}}
    \def\sectionmark##1{\markright {\uppercase{\ifnum \c@secnumdepth >\z@
	\thesection. \ \fi ##1}}}
    \pulldownheader				% Bring header down from edge
}
\else						% If one-sided printing.
\def\ps@headings{\let\@mkboth\markboth
    \def\@oddfoot{}
    \def\@evenfoot{}		%     No feet.
    \def\@oddhead{\hbox {}\sl \rightmark \hfil \rm\thepage}	% Heading.
    \def\chaptermark##1{\markright {\uppercase{\ifnum \c@secnumdepth >\m@ne
	\@chapapp\ \thechapter. \ \fi ##1}}}
    \pulldownheader				% Bring header down from edge
}
\fi

% Redefinition of 'myheadings' page style.
%
\def\ps@myheadings{\let\@mkboth\@gobbletwo
    \def\@oddfoot{}
    \def\@evenfoot{}
    \def\sectionmark##1{}
    \def\subsectionmark##1{}
    \def\@evenhead{\rm \thepage\hfil\sl\leftmark\hbox {}}	%
    \def\@oddhead{\hbox{}\sl\rightmark \hfil \rm\thepage}	%
    \pulldownheader				% Bring header down from edge
}

% Redefine '/chapter' to always start on an odd page.
% Should make no difference in singleside mode.
%
\if@leftblank
% Prints "THIS PAGE INTENTIONALLY LEFT BLANK" on blank pages.
\def\chapter{\clearpage
  \if@twoside
  \ifodd\c@page\else
    \vspace*{\fill}
      \hfill
      \begin{center}
      This page intentionally left blank.
      \end{center}
      \vspace{\fill}
      \thispagestyle{empty}
      \newpage\fi
    \fi
   \thispagestyle{plain}	% Page style of chapter page is 'plain'
   \global\@topnum\z@		% Prevents figures from going at top of page.
   \@afterindentfalse		% Suppresses indent in first paragraph.  Change
   \secdef\@chapter\@schapter}	% to \@afterindenttrue to have indent.
\else
\def\chapter{\cleardoublepage	% Starts new page.
   \thispagestyle{plain}	% Page style of chapter page is 'plain'
   \global\@topnum\z@		% Prevents figures from going at top of page.
   \@afterindentfalse		% Suppresses indent in first paragraph.  Change
   \secdef\@chapter\@schapter}	% to \@afterindenttrue to have indent.
\fi
% If using the report style, use - instead of . in the figure number.
\@ifundefined{thechapter}{}{\def\thefigure{\thechapter-\arabic{figure}}}

%%%%%%%%%  End of Style parameters %%%%

% Here's Gildea's Boilerplate Stuff.
% Copyright (c) 1987 by Stephen Gildea
% Permission to copy all or part of this work is granted, provided
% that the copies are not made or distributed for resale, and that
% the copyright notice and this notice are retained.

%% Define all the pieces that go on the title page and the abstract.

% blankdots: The copyright notice stuff is a tremendous mess. --- this was modified
% \title and \author already exist
% define previous degrees (not necessary), department, month, year and supervisor

\def\supervisor#1{\gdef\@supervisor{#1}}

\def\prevdegrees#1{\gdef\@prevdegrees{#1}}
\def\@prevdegrees{}

\def\department#1{\gdef\@department{#1}}

% If you are getting two degrees, use \and between the names.
\def\degree#1{\setbox0\hbox{#1}	 %for side effect of setting \@degreeword
  \gdef\@degree{#1}}

% \and is used inside the \degree argument to separate two degrees
\def\and{\gdef\@degreeword{degrees} \par and \par}
\def\@degreeword{degree}

\def\thesisdate#1{\gdef\@thesisdate{#1}}

% typically just a month and year
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degreeyear#1{\gdef\@degreeyear{#1}}

%define faculty and uaic
\def\uaic{Alexandru Ioan Cuza University of Ia\c si, Romania\\
          Faculty of Computer Science}
%% `upcase' documentclass option: \choosecase is defined either as a dummy or
%% a macro to change the (expanded) argument to uppercase.
\def\maketitle{\begin{titlepage}
\centering{\psfig{file = figures/cover_affiliation.eps, width =15cm}}
\vfill
\Large\par\uaic\par
\centering \@degree
\vfill
{\def\baselinestretch{1.2}\huge\bf \choosecase{\@title} \par}
\vfill
\vfill
% Author and supervisor
\begin{minipage}{0.4\textwidth}
  \begin{flushleft} \large
  \normalsize \emph{Author:}\\
    {\normalsize \bf \choosecase{\@author}}
  \end{flushleft}
\end{minipage}
\begin{minipage}{0.4\textwidth}
  \begin{flushright} \large
  \normalsize \emph{Supervisor:} \\
    {\normalsize \bf \choosecase{\@supervisor}}
  \end{flushright}
\end{minipage}
\vfill
\centering \@degreemonth\ \@degreeyear
\par
\vskip 3\baselineskip
\end{titlepage}}

% this environment should probably be called abstract,
% but we want people to also be able to get at the more
% basic abstract environment
\def\abstractpage{\cleardoublepage
\begin{center}{\large{\bf \@title} \\
%by \\
%\@author \\
[\baselineskip]}
\par
%\def\baselinestretch{1}\@normalsize
%Submitted to the \@department \\
%on \@thesisdate, in partial fulfillment of the \\
%requirements for the \@degreeword\ of \\
%\@degree
\end{center}
\par
\begin{abstract}}

%% Changed from \unvbox to \unvcopy for use with multiple copies of abstract
%% page.
%% Krishna Sethuraman (1990)
\def\endabstractpage{\end{abstract}\noindent
% \unvcopy\@abstractsupervisor
 \newpage}

%% This counter is used to save the page number for the second copy of
%% the abstract.
\newcounter{savepage}

% You can use the titlepage environment to do it all yourself if you
% don't want to use \maketitle.  If the titlepage environment, the
% paragraph skip is infinitely stretchable, so if you leave a blank line
% between lines that you want space between, the space will stretch so
% that the title page fills up the entire page.
\def\titlepage{\cleardoublepage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
% The \kern0pt pushes any depth into the height.  Thanks to Richard Stone.
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\abstract{\subsection*{Abstract}\small\def\baselinestretch{1}\@normalsize}
\def\endabstract{\par}
