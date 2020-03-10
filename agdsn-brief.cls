\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{agdsn-brief}[2015/12/02 v1.1]

\RequirePackage{kvoptions}

% AG DSN Global
\newcommand\agdsn@global{%
  \setkomavar{agdsn_division}{}%
  \setkomavar{agdsn_account}{3120219540}%
  \setkomavar{agdsn_blz}{850 503 00}%
  \setkomavar{agdsn_iban}{DE61 8505 0300 3120 2195 40}%
  \setkomavar{agdsn_bic}{OSDDDE81XXX}%
  \setkomavar{agdsn_email}{vorstand@agdsn.de}%
  \setkomavar{agdsn_url}{\url{https://www.agdsn.de}}%
  \setkomavar{agdsn_address}{%
    Studentenrat der TU Dresden\\%
    %AG DSN\\%
    Helmholtzstra{\ss}e 10\\%
    01069 Dresden%
  }%
  \setkomavar{agdsn_logo}{\includegraphics[width=.5\textwidth]{agdsn_logo}}%
}%
% Sektion Borsbergstrasse
\newcommand\agdsn@borsbergstrasse{%
  \setkomavar{agdsn_division}{Sektion Borsbergstra{\ss}e}%
  \setkomavar{agdsn_account}{3120219540}%
  \setkomavar{agdsn_blz}{85050300}%
  \setkomavar{agdsn_iban}{DE61850503003120219540}%
  \setkomavar{agdsn_bic}{OSDDDE81XXX}%
  \setkomavar{agdsn_email}{support@agdsn.de}%
  \setkomavar{agdsn_url}{\url{https://www.agdsn.de}}%
  \setkomavar{agdsn_address}{Borsbergstra{\ss}e 34\\01309 Dresden}%
  \setkomavar{agdsn_logo}{\includegraphics[width=.5\textwidth]{borsbergstrasse_logo}}%
}%
% Sektion Gerokstrasse
\newcommand\agdsn@gerokstrasse{%
  \setkomavar{agdsn_division}{Sektion Gerokstra{\ss}e}%
  \setkomavar{agdsn_account}{3120230811}%
  \setkomavar{agdsn_blz}{85050300}%
  \setkomavar{agdsn_iban}{DE33850503003120230811}%
  \setkomavar{agdsn_bic}{OSDDDE81XXX}%
  \setkomavar{agdsn_email}{support@agdsn.de}%
  \setkomavar{agdsn_url}{\url{https://www.agdsn.de}}%
  \setkomavar{agdsn_address}{Gerokstra{\ss}e 38\\01307 Dresden}%
  \setkomavar{agdsn_logo}{\includegraphics[width=.5\textwidth]{gerokstrasse_logo}}%
}%
% Sektion Hochschulstrasse
\newcommand\agdsn@hochschulstrasse{%
  \setkomavar{agdsn_division}{Sektion Hochschulstra{\ss}e}%
  \setkomavar{agdsn_account}{3120241937}%
  \setkomavar{agdsn_blz}{85050300}%
  \setkomavar{agdsn_iban}{DE40850503003120241937}%
  \setkomavar{agdsn_bic}{OSDDDE81XXX}%
  \setkomavar{agdsn_email}{support@agdsn.de}%
  \setkomavar{agdsn_url}{\url{http://www.agdsn.de}}%
  \setkomavar{agdsn_address}{Hochschulstra{\ss}e 48\\01069 Dresden}%
  \setkomavar{agdsn_logo}{\includegraphics[width=.5\textwidth]{hochschulstrasse_logo}}%
}%
% Sektion Wundtstrasse
\newcommand\agdsn@wundtstrasse{%
  \setkomavar{agdsn_division}{Sektion Wundtstra{\ss}e}%
  \setkomavar{agdsn_account}{3120219540}%
  \setkomavar{agdsn_blz}{85050300}%
  \setkomavar{agdsn_iban}{DE61850503003120219540}%
  \setkomavar{agdsn_bic}{OSDDDE81XXX}%
  \setkomavar{agdsn_email}{support@agdsn.de}%
  \setkomavar{agdsn_url}{\url{https://www.agdsn.de}}%
  \setkomavar{agdsn_address}{Wundtstra{\ss}e 5\\01217 Dresden}%
  \setkomavar{agdsn_logo}{\includegraphics[width=.5\textwidth]{wundtstrasse_logo}}%
}%
% Sektion Zeunerstrasse
\newcommand\agdsn@zeunerstrasse{%
  \setkomavar{agdsn_division}{Sektion Zeunerstra{\ss}e}%
  \setkomavar{agdsn_account}{3120219540}%
  \setkomavar{agdsn_blz}{85050300}%
  \setkomavar{agdsn_iban}{DE61850503003120219540}%
  \setkomavar{agdsn_bic}{OSDDDE81XXX}%
  \setkomavar{agdsn_email}{support@agdsn.de}%
  \setkomavar{agdsn_url}{\url{https://www.agdsn.de}}%
  \setkomavar{agdsn_address}{Zeunerstra{\ss}e 1f\\01069 Dresden}%
  \setkomavar{agdsn_logo}{\includegraphics[width=.5\textwidth]{zeunerstrasse_logo}}%
}%
\let\agdsn@setup\agdsn@global%
\DeclareOption{borsbergstrasse}{%
  \let\agdsn@setup\agdsn@borsbergstrasse%
}%
\DeclareOption{gerokstrasse}{%
  \let\agdsn@setup\agdsn@gerokstrasse%
}%
\DeclareOption{hochschulstrasse}{%
  \let\agdsn@setup\agdsn@hochschulstrasse%
}%
\DeclareOption{wundtstrasse}{%
  \let\agdsn@setup\agdsn@wundtstrasse%
}%
\DeclareOption{zeunerstrasse}{%
  \let\agdsn@setup\agdsn@zeunerstrasse%
}%
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{scrlttr2}}
\ProcessOptions
\ProcessKeyvalOptions*

\LoadClass[
paper=a4,%
version=last,%
fromalign=right,%
fromrule=on,
fromlogo=true,%
fromurl=true,%
fromemail=true,%
fontsize=12pt,%
parskip=full%
]{scrlttr2}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{tgheros}
\RequirePackage{tgpagella}
\RequirePackage{tgcursor}
\RequirePackage[ngerman]{babel}
\RequirePackage{datetime}
\RequirePackage{fixltx2e}
\RequirePackage[inline]{enumitem}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{wasysym}
\RequirePackage[%
bookmarks=false,%
hidelinks,%
pdfauthor={Arbeitsgemeinschaft Dresdner Studentennetz},%
%pdfborder={0 0 0},%
]{hyperref}


% Option Names
\newkomavar[Sektion]{agdsn_division}
\newkomavar[Kontonr.]{agdsn_account}
\newkomavar[BLZ]{agdsn_blz}
\newkomavar[IBAN]{agdsn_iban}
\newkomavar[BIC]{agdsn_bic}
\newkomavar[E-Mail]{agdsn_email}
\newkomavar[Homepage]{agdsn_url}
\newkomavar[Adresse]{agdsn_address}
\newkomavar[Logo]{agdsn_logo}
\agdsn@setup

\renewcommand{\familydefault}{\sfdefault}

% Necessary for scrlttr2 to coexist with datetime
\setkomavar{date}{\formatdate{\day}{\month}{\year}}
\setkomavar{fromname}{AG DSN\ifkomavarempty{agdsn_division}{}{\\\usekomavar{agdsn_division}}}
\setkomavar{fromaddress}{\usekomavar{agdsn_address}}
\setkomavar{fromphone}{}
\setkomavar{fromfax}{}
\setkomavar{fromemail}{\usekomavar{agdsn_email}}
\setkomavar{emailseparator}[]{}
\setkomavar{fromurl}{\usekomavar{agdsn_url}}
\setkomavar{urlseparator}[]{}
\setkomavar{signature}{\usekomavar{fromname}}
\setkomavar{firsthead}{
  \rlap{\usekomavar{agdsn_logo}}
  \parbox[b]{\textwidth}{
    \raggedleft\small
    \usekomavar{agdsn_address}\\
    \ifkomavarempty{agdsn_email}{\usekomavar{agdsn_email}\\}{}
    \usekomavar{agdsn_url}\\
  }
}
\setkomavar{firstfoot}{
  \\[-\baselineskip]\footnotesize
  \rule{\textwidth}{\useplength{fromrulethickness}}
  \begin{tabular}{lllll}
    \multirow{2}{.3\textwidth}{Arbeitsgemeinschaft des Studentenrats der TU Dresden} & Kto.-Nr. & \usekomavar{agdsn_account} & IBAN & \usekomavar{agdsn_iban} \\
   & BLZ & \usekomavar{agdsn_blz} & BIC & \usekomavar{agdsn_bic} \\
  \end{tabular}
}

\endinput
