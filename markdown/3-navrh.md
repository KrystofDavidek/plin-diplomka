\part{Praktická část}

# Analýza požadavků na aplikaci

V praktické části této diplomové práce popisujeme výslednou webovou aplikaci\footnote{Výsledná aplikace je v tuto chvíli plně funkční pod URL adresou https://czech-map.netlify.app.} pro geografické zmapování krajanských komunit a jejich jazyka (dále jen aplikace). V následujících kapitolách si ve stručnosti popíšeme související projekty, z nichž jsme se při tvorbě inspirovali. Dále aplikaci představíme jak z pohledu funkčních a nefunkčních požadavků, tak z hlediska návrhových a implementačních částí. 

## Související projekty

Před tvorbou samotné webové aplikace jsme provedli krátkou rešerši souvisejících projektů. Chtěli jsme takto identifikovat konkrétní funkcionality, které nejsou v jiných řešení zastoupené a demonstrovaly by tak význam naší aplikace.

Prvním vybraným projektem je *Mapa Čechů v zahraničí* – jedná se o geografické zpracování krajanských spolků na mapě světa \parencite{mapa1}. Na první pohled webová stránka obsahuje velké množství jednotlivých záznamů, nicméně samotné body v mapě slouží pouze jako reference na případné webové stránky daného krajanského spolu (nebývá výjimkou, že v detailu záznamu není odkaz ani přiložen). Aplikace je tak vhodná pro výchozí orientaci, ale chybí v ní další informace o krajanských komunitách, čímž se její využití značně omezuje.

Druhá vybraná mapová aplikace z dílny Radio Prague International má obdobný cíl jako první zmíněný projekt – a to přehledným způsobem vizualizovat krajanské spolky na mapě světa \parencite{mapa2}. Vizuální stránka tohoto řešení je na kvalitnější úrovni, a to zejména z toho důvodu, že uživatelsky přívětivým způsobem seskupuje jednotlivé spolky napříč státy. Uživatel má v aplikaci možnost prozkoumat detaily vybrané lokality, které se primárně skládají ze základních informací jako jsou *země*, *adresa*, *kontakt* apod. Význam této mapy je znovu především ve zprostředkování spojení se zastoupením zvoleného spolku, než-li o poskytnutí ucelených informací o krajanské komunitě.

Další vybraný projekt *Čeští krajané* problematiku českých krajanů zpracovává z odlišeného hlediska. Jedná se o výzkum podpořen Technologickou agenturou ČR a Grantovou agenturou ČR, který se souhrnně zaměřuje na studium především novodobé české zahraniční migrace \parencite{cesti-krajane}. Projekt je stále aktivní, nicméně již přinesl dílčí výsledky ve formě odpovědí komplexního dotazníku 944 krajanů. Tyto informace se týkají například zájmu o politický život, vztahu k ČR apod. a mohou tak být zajímavým kontextem, který by v budoucnu mohl být určitým způsobem navázán na naši aplikaci. 

Poslední vybraná webová stránka *krajane.net* je v tuto chvíli digitální archiv obsahující velké množství materiálů, které se týkají krajanské problematiky \parencite{krajane-archiv}. I přes to, že se jedná o archiv, jež není v tuto chvíli aktualizován, najdeme na webu mnoho užitečných informací o jednotlivých krajanských spolcích, ale také o krajanských médií rozčleněných podle států. Některé části webu jsou provázané z aktualizovanými stránkami Radio Prague International, které obsahují již zmíněnou mapovou aplikaci.

Jak je z výše napsaného patrné, v současné době existuje určité množství digitálních projektů zpracovávající problematiku krajanských komunit. Doposud ale chybí řešení, které by souhrnně reflektovalo a zpracovávalo různé typy informací včetně jazykové charakteristiky o krajanských komunitách do jednoho komplexnějšího záznamu s otevřenou možností editace.

## Požadavky na aplikaci

Ještě před návrhovou fází vývoje je u jakéhokoliv typu aplikace zapotřebí mít vyjasněny všechny požadavky, které jsou na daný systém kladeny. Tyto požadavky lze rozlišit na dva základny typy, a to na funkční a nefunkční.

### Funkční požadavky

Funkční požadavky vyplývají z účelu aplikace a jsou typicky definované zákazníkem nebo jiným zadavatelem aplikace. Souvisí tak se základními funkcemi, akcemi a aktivitami, jimiž by mělo digitální řešení disponovat pro řešení konkrétních problémů \parencite{Gorton2006}.

Tyto požadavky můžeme u naší webové aplikace pro větší přehlednost rozdělit do tří hlavních kategorií.

#### Geografická reprezentace českých komunit na mapě

Jedním z nejdůležitějších nároků na aplikaci je vizualizace jednotlivých českých komunit po celém světě. Aplikace má tak disponovat samostatnou stránkou, v rámci které budou dostupné mapové podklady celého světa. Na této mapě mají být pak prostřednictvím mapových vrstev vizualizovány konkrétní české enklávy. Pod mapovými vrstvami myslíme mnohoúhelníkové plochy, které mohou mít na mapě jakýkoliv tvar a velikost podle potřeby vybrané komunity (geografická místa komunit v aplikaci popisujeme jako lokality). Má být tak možné vizualizovat jak malé osady, tak celé regiony nebo státy – vrstvy se též mohou jakýmkoliv způsobem překrývat.

Zapotřebí je také zahrnout základní funkční požadavky, které se pojí s obsluhou mapové aplikace. Jde o možnosti oddalování, a přibližování pohledu (spolu s navráceném do výchozí pozice), navigaci na mapě pomocí posouvání kurzoru, klikání myší/dotykem anebo prostřednictvím minimapy zobrazující vždy širší kontext vybraného pohledu. Další důležitou funkcí je vyhledávání lokalit. Aplikace má umožňovat přiblížení na danou mapovou vrstvu na základě výběru ve vyhledávacím poli.

Zacílení lokalit má být umožněno i jiným způsobem než vyhledáváním v mapových podkladech. Z toho důvodu má aplikace disponovat výčtem lokalit, které budou dostupné z mapové stránky prostřednictvím levé vysouvací části obrazovky. Tato sekce má sloužit jako přehledný abecedně seřazený seznam všech dostupných krajanských komunit (spolu s úvodním obrázkem a sekundárních názvem), z něhož je možné lokalitu buď zacílit na mapě, anebo rovnou zobrazit její detail.

Posledním funkčním požadavkem souvisícím s geografickou složkou je možnost filtrování lokalit na základě vybraných metrik (tyto metriky rozvedeme v kapitole týkající se dat viz XXX). Tato funkce se má nacházet v sekci se seřazenými komunitami a po označení libovolného počtu filtrů se mají z výběru i z mapových podkladů vyfiltrovat takové lokality, jež splňují danou podmínku. 

#### Vizualizace detailních informací vybrané komunity

Druhým významným požadavkem na naši aplikaci je uživatelsky přívětivá vizualizace všech dostupných informací, které se týkají vybrané krajanské komunity. Jelikož mohou být tyto informace rozličné velikosti a multimediální povahy (audio soubory, obrázky, videa a textové informace) je zapotřebí, aby v aplikaci existoval sekundární navigační systém. Tato druhotná navigace má zajistit přehlednost při průchodu vybranou lokalitou a umožnit tak uživateli výběr konkrétní části.

Jak bylo výše naznačeno, cílem našeho řešení je zmapovat ukázky komunikace v češtině a prostřednictvím audio nahrávek a jejich transkriptů přiblížit jazyk dané české komunity. Požadavkem je také vhodné propojení audio souborů s jejich přepisy.

Sekundárním požadavkem v této oblasti je možnost sdílení vybrané lokality prostřednictvím URL adresy pro případnou kolaboraci při práci s jednou určitou českou enklávou.

#### Administrační prostředí pro editaci jednotlivých komunit

Poslední kategorií jsou funkční požadavky spojené s celkovou administrací jednotlivých komunit. Hlavní myšlenkou celé webové aplikace je otevřenost. A to jak z pohledu uživatele, který se chce dozvědět něco o problematice (viz předchozí dvě kategorie), tak hlavně z hlediska informované komunity, jež bude mít na starost přidávání nových lokalit, případě editaci či mazání již existujících oblastí.

Z tohoto důvodu má aplikace obsahovat podstránky, které nebudou běžnému uživateli přístupné – vzniká tak požadavek na autentifikaci prostřednictvím e-mailu a hesla. Po úspěšném přihlášení by se měl celý systém přeměnit do editačního módu, respektive nabízet přihlášenému uživateli vždy kromě vstupu do jednotlivých lokalit i možnost přesunu do administrativní části.

Ta by měla sestávat ze stejných sekcí, jako u detailu vybrané komunity. Navíc by však by měla obsahovat uživatelsky přívětivou část formuláře podle formátu dané části informací (např. pro vkládání textových informací textový editor, pro vkládání souborů speciální komponentu). Druhotným požadavkem je základní validace vstupních data, tedy kontrola, že má každá lokalita vyplněný alespoň hlavní název a geografická data pro zobrazení na mapě (viz xxx).

S administrací tak nutně souvisí i požadavek na persistenci dat, tzn. potřeba ukládat data na vzdálenou databázi, aby byly informace pro všechny uživatele konzistentní a aktualizované.

### Nefunkční požadavky

Pod nefunkčními požadavky si lze představit určitá omezení na design a implementaci aplikace. Jedná se například o volbu technologií, míru bezpečnosti, důraz na výkon či udržitelnost do budoucna atd. V závěru se však vždy jedná o určitý kompromis napříč jednotlivými faktory (např. vysoký výkon vs. udržitelnost) \parencite{Gorton2006}.

Hlavním nefunkčním požadavkem je, aby byl náš systém realizován jako webová aplikace, protože lze tak efektivně docílit k multiplatformnímu výsledku. Z tohoto faktu vyplývá potřeba responzivního řešení, tedy aby byla aplikace stejně funkční a vzhledově atraktivní jak na zařízeních s vyšším rozlišením, tak i na menších obrazovkách. Dalším implicitním požadavkem je tím pádem i nutnost internetového připojení.

Důležitou vlastností aplikace by také měla být udržitelnost a rozšiřitelnost. V tuto chvíli již existují konkrétní plány na rozšiřování aplikace mimo rozsah této diplomové práce, a proto by měla být aplikace napsána se zásadami čistého a  čitelného kódu pro případné navázání jinými programátory.

# Návrh aplikace

V rámci představení návrhu aplikace se zaměříme na tři klíčová témata, jejichž obsah vychází především z funkčních a nefunkčních požadavků definovaných v předchozí kapitole.

V první části představíme použité technologie spolu s odůvodněním jejich výběru. V další podkapitole popíšeme strukturu a obsah dat, ze kterých se skládají informace o jednotlivých krajanských komunitách.

Hlavní součástí této kapitoly pak bude představení uživatelského rozhraní (UI) prostřednictvím konkrétních obrazovek aplikace. Zaměříme se zde také na popis interakce uživatele se systémem.

## Použité technologie

Jelikož je naše navrhované řešení webová aplikace, budeme se níže zabývat výhradně nástroji, knihovnami a frameworky, které se primárně týkají webových technologií. Konkrétní příklady kódu budeme rozebírat v kapitole týkající se vlastní implementace (viz xxx).

### Základní webové technologie

I přes to, že je svět webových technologií jednou z nejdynamičtěji rozvíjejících se oblastí IT, jeho základy jsou již několik desítek let stále stejné. Aby mohl webový prohlížeč vykreslit (renderovat) webovou stránku\footnote{Pojmy webová stránka a webová aplikace vnímáme v tomto kontextu totožně. Tedy vše, co platí pro vývoj webových stránek, platí i pro vývoj webových aplikací (protože aplikace jsou v principu jen komplexnější formou webových stránek).}, musí být její obsah vždy určitým způsobem strukturovaný. Pro tyto účely se již řadu let využívá HTML (Hypertext Markup Language) – značkovací jazyk, který popisuje přesnou strukturu určitého dokumentu. 

Prostřednictvím značek tohoto jazyka dáváme jednotlivým částem dokumentu strukturální významy. Mohou to být například značky pro označení odstavce, odkazů nebo třeba tabulek či videí. Některé značky sice mohou vyvolat změny vzhledu dané části dokumentu, nicméně pro tyto účely HTML není primárně určeno \parencite{htmlcss}.

Abychom mohli upravit vzhled webové stránky, je zapotřebí využít druhé základní technologie, a to CSS (Cascading Style Sheets). Jedná se o jazyk, pomocí kterého lze konkrétním HTML značkám přiřazovat předdefinované vlastnosti, a tak jim měnit vzhled dle potřeby. Typicky může jít o změny barvy, velikosti, fontů, ale i třeba o implementaci složitějších animací, přechodů atd. \parencite{htmlcss}.

HTML a CSS lze od sebe izolovat do dvou či více separátních souborů, což je standardní způsob jak efektivně oddělit vizuální složku od strukturální.

Třetí základní technologií je programovací jazyk JavaScript (oficiálně ECMAscript), který předchozí dvě složky doplňuje o možnost interakce uživatele s webovou stránkou. JavaScript je skriptovací jazyk, který není narozdíl od jiných programovacích jazyků typu Java nebo Objective-C  zapotřebí před spuštěním kompilovat (stačí tedy pro jeho použití využít jakýkoliv z dostupných webových prohlížečů). Díky této technologii lze dynamicky upravovat obsah webové stránky, to znamená že JavaScript využijeme především v situacích, kdy od uživatele očekáváme nějakou aktivitu (např. stisknutí tlačítka nebo klávesy atd.) \parencite{javascript}.

Aby JavaScript a CSS mohly přistupovat k jednotlivým částem HTML, dochází vždy před vykreslením k převedení ze značkovacího jazyka do takzvaného DOM (Document Object Model). Jedná se o objekt stromové struktury, v němž je uložené vlastní HTML a každá značka (uzel) si drží informaci o své lokaci. CSS pak na tento objekt aplikuje svá pravidla pro správné vykreslení a JavaScript případně mění strukturu spolu s další části tohoto stromového objektu \parencite{howbrowserswork}.

### Přístupy k vykreslování webových stránek
 
Při výběru dalších technologií pro vývoj webové aplikace si je zapotřebí nejdříve uvést, jakou strategii vykreslování bude naše aplikace naplňovat.

#### Dynamické webové stránky

Jednou z nejčastějších strategií je dynamické vykreslování stránek. Jedná se o princip, kdy je webová stránka (tedy HTML s CSS a JavaScriptem) se všemi potřebnými informacemi dynamicky vytvořena na vzdáleném serveru. Prohlížeč (jinými slovy klient) tak na základě akce od uživatele pošle na server takzvaný *request* a server vygenerovanou webovou stránku obratem pošle nazpět.

Výhodou toho přístupu je fakt, že klient dostane už kompletní dokument se všemi potřebnými informacemi (což je výhodné z hlediska SEO\footnote{Search engine optimization (SEO) je proces optimalizace viditelnosti webových stránek v rámci internetových vyhledávačů jako je např. Google. Čím lepší je SEO, tím je pravděpodobnější, že se daná webová stránka objeví na vyšších příčkách při vyhledávání.}). Neméně důležitým přínosem je pak to, že se veškerá logika děje na serveru (který je typicky výkonnější než klient), prohlížeč akorát vykresluje výsledek.

Na druhou stranu lze vidět i nevýhodu primárně v opakovaném generování každé stránky při opětovné návštěvě, což může být problém při pomalejším internetovém připojení. Komplikovanější též může být vývoj samotných aplikací, protože vývojář musí znát jak  HTML, CSS a JavaScript (souhrnně frontend), tak technologie spojené se serverovou částí (práce s databází atd.). protože jsou na sebe obě složky na serveru nutně navázané \parencite{spa}. 

\begin{figure}[ht]   
    \centering
    \includegraphics[width=.5\textwidth]{dynamic}  
    \caption{Dynamické vykreslování}
    \label{dynamic}
 \end{figure}

#### Statické webové stránky

Druhý přístup je nejstarší a zároveň nejjednodušší, protože se jedná o již vytvořené HTML (spolu s CSS a JavaScriptem) soubory, které jsou neměnné. To znamená, že jsou tyto již připravené statické soubory uložené na serveru, kde očekávají request od klienta k vykreslení. Jedná se tedy nejčastěji o takové webové stránky, které jsou jednodušší a neočekává se u nich příliš mnoho interaktivity s uživatelem.

V dnešní době jsou navíc populární takzvané generátory statických stránek, které umožňují vytvářet statické stránky na základě předpřipravených šablon a odlehčeného značkovacího jazyka jako je například Markdown\footnote{https://www.markdownguide.org/}, v němž se vytváří samostatný obsah \parencite{spa}.

\begin{figure}[ht]   
    \centering
    \includegraphics[width=.5\textwidth]{static}  
    \caption{Statické vykreslování}
    \label{static}
 \end{figure}
 
#### Single Page Applications

Posledním populárním přístupem jsou takzvané Single Page Applications (SPA), jejichž princip je přesně opačný od dynamických webových stránek. Klient sice také musí poslat request na server, nicméně ten vrací vždy jeden stejný HTML soubor s velkým množství přidruženého javaScriptového kódu. JavaScript pak v prohlížeči upravuje samotný DOM HTML souboru do výsledné podoby pro vykreslení.

Díky této strategii jsou webové stránky tohoto typu vysoce uživatelsky přívětivé, protože se veškeré vizuální změny dějí na klientovi. Pokud je tedy zapotřebí například stáhnout data z databáze, JavaScript změní DOM do určité formy vizuálně přívětivého načítání nebo umožní data stahovat v pozadí a uživatel se může v aplikace dál pohybovat. V předchozích případech by návštěvník webu musel čekat, až se všechny změny provedou na serverové části.

Tento přístup má dvě základní nevýhody. Zaprvé může být v některých případech pro prohlížeč náročné zpracovat všechny javaScriptové instrukce pro vygenerování výsledného HTML (zvláště, pokud jsou SPA neefetkivně napsané nebo uživatel používá starší zařízení / má pomalejší připojení). Druhým problémem bývá již zmíněné SEO – iniciální HTML soubor totiž obsahuje malé množství metadat a dalších informací o stránce (jelikož ještě neproběhlo generování JavaScriptem) a pro prohlížeč se webová stránka nemusí jevit důvěryhodně a přiřazuje ji tak menší váhu při vyhledávání \parencite{spa}.

\begin{figure}[ht]   
    \centering
    \includegraphics[width=.5\textwidth]{spa}  
    \caption{Single Page Application}
    \label{spa}
 \end{figure}

Jelikož naše aplikace obsahuje komplexnější komponenty, které nebývají součástí základních webových stránek (např. mapa pro geografické zobrazování), a počítá s vyšší mírou uživatelské interakce (např. administrační prostředí spolu s autentifikací), volíme právě tento přístup pro vývoj našeho řešení.

### React

Jak bylo výše napsáno, vývoj SPA aplikací je především záležitostí programování javaScriptového kódu. Aby nemuseli vývojáři veškerou integraci a tvorbu základních funkcionalit tvořit stále od začátku, existují takzvané webové frameworky. Jejich hlavní význam je zjednodušit a zefektivnit vývoj uživatelského rozhraní (frameworky samozřejmě existují i pro ostatní části vývoje, například pro backend atd.) a nastavují tak daným komunitám vývojářů základní pravidla, a tím pádem určitou konzistenci pro strukturalizaci kódu. Tento aspekt je zvláště důležitý, pokud na určitém projektu pracuje větší množství lidí.

V našem případě byly jedním z nejdůležitějších nefunkčních požadavků udržitelnost a rozšiřitelnost. Proto za webový framework vybíráme React\footnote{I přes to, že v našem textu React popisujeme jako webový framework, není tomu zcela tak. Zcela přesně se jedna o webovou knihovnu, která má mírně odlišné charakteristiky (např. výkon, komplexita atd.), nicméně pro naše účely můžeme tyto významové nuance ignorovat.}, který je v tuto chvíli stále nejpopulárnější volbou mezi vývojáři na celém světě\footnote{https://www.developer-tech.com/news/2021/aug/03/2021-stack-overflow-survey-react-js-takes-the-web-framework-crown-python-is-in-demand-and-devs-still-love-rust/} a základní znalost tohoto nástroje je tak v dnešní době pro webové vývojáře takřka podmínkou.

Jedná se o open-source software\footnote{https://github.com/facebook/react} vytvořený v roce 2013 a udržovaný programátory společností Meta (dříve Facebooku) za podpory široké komunity vývojářů \parencite{react}.

React je založen na deklarativním vývoji uživatelského rozhraní. Vývojář tedy vytváří vzhled pro všechny stavy aplikace, které se pak vykreslují na základě změny v datech (např. u přihlášeného uživatele není zapotřebí zobrazovat tlačítko přihlášení a naopak). Kód je tak pochopitelnější a jednodušší na ladění chyb (debugging).

Druhou významnou vlastností Reactu je přístup založený na komponentách. Jedná se o opakovaně použitelné části UI (tzn. i samotného naprogramovaného kódu), které jsou hierarchicky strukturované buď podle využití v aplikaci (např. adresář s komponentou pro přihlášení *Login* bude obsahovat soubor podkomponenty pro tlačítko *LoginButton*), nebo podle obecně sdílených funkcionalit (všechny komponenty tlačítek v aplikaci budou ve vlastní složce *Buttons*). Data, na kterých jsou závislé jednotlivé stavy, lze mezi komponentami předávám prostřednictvím objektu s názvem *props*.

React namísto klasického stromové objektu DOM (viz XXX) využívá koncept virtuálního DOM (virtual Document Object Model). Jedná se o speciální objektovou strukturu uloženou v mezipaměti prohlížeče, která umožňuje efektivněji synchronizovat změny v UI s daným stavem aplikace. Zjednodušeně řečeno jde o odlehčenou verzi DOM, s níž lze na úrovni klienta jednodušeji manipulovat a přizpůsobovat akcím od uživatele.

Posledním důležitým specifikem tohoto webového frameworku je využívání jazyka JSX, který je doporučován pro zápis komponent. JSX je svojí syntaxí nadstavbou JavaScriptu a kombinuje strukturní značky, které známe z HTML s javaScriptovými konstrukcemi pro práci s proměnnými a funkcemi/metodami.

### TypeScript

V předchozí podkapitolách jsme popisovali významnou roli JavaScriptu při vývoji webových aplikací, nicméně existuje modernější a vhodnější varianta tohoto programovacího jazyka – TypeScript. Nejedná se ale o nový, samostatný jazyk, ale o rozšíření syntaxe stávajícího JavaScriptu. TypeScript byl vytvořen v roce 2012 společností Microsoft a jeho hlavním cílem je obohatit JavaScript o typovou kontrolu objektů a proměnných. Pomocí typové kontroly lze docílit k větší prevenci potenciálních chyb a celý kód se tak navíc stává přehlednějším \parencite{typescript}.

Jelikož se chceme držet zásad čitelného a čistého kódu, použijeme TypeScript i v naší aplikaci. Zároveň je zapotřebí dodat, že je javaScriptová syntaxe podmnožinou TypeScriptu\footnote{Typescript se vždy před spuštěním nejprve převede do čistého JavaScriptu, proto lze v TypeScriptu psát v případě potřeby čistý javaScriptový kód.}, tedy pro TypeScript platí všechny informace, které se v této práci vážou k JavaScriptu.

### Technologie spojené s vizualizací komunit na mapě

Hlavní součástí aplikace je vizualizace jednotlivých českých komunit po celém světě. Mapovými podklady (spolu s nástroji, které s mapou manipulují) standardně webové frameworky nedisponují. Níže popisujeme technologie, které jsme vybrali a integrovali do našeho řešení.

#### OpenStreetMap

Za mapové podklady jsme vybrali volně editovatelné a otevřené topografické mapy OpenStreetMap. Jedná se o projekt, který vznikl v roce 2004 jako protiváha proti tehdejším proprietárním řešením. Byl inspirován úspěchem Wikipedie a jeho cílem je distribuovat volně dostupná geografická data jak pro nekomerční, tak komerční účely \parencite{open-street}. Z těchto důvodu jsme OpenStreetMap vybrali i do naší aplikace.

#### Leaflet

Pro manipulaci s OpenStreetMap jsme využili open-source javaScriptovou knihovnu Leaflet\footnote{Autorem knihovny je Kyjevan Volodymyr Agafonkin, který kvůli ruské invazi v roce 2022 stejně jako mnoho ostatních Ukrajinců utekl ze svého domova. Téma této práce se týká i nucených emigrací, a proto si zde dovolíme udělat menší vložku a vepsat odkaz, kde je možné podpořit Ukrajinu v této nelehké době – https://www.comebackalive.in.ua/.}. Tento nástroj umožňuje webovým vývojářům vizualizovat na mapových podkladech vlastní interaktivní značky, vrstvy a další vizuální prvky bez znalosti GIS\footnote{https://education.nationalgeographic.org/resource/geographic-information-system-gis} \parencite{leaflet}.

Integrace nástroje Leaflet do frameworku React jsme provedli prostřednictvím knihovny React Leaflet. Ta je nástavbou předchozí knihovny a abstrahuje jednotlivé složky Leafletu do systému komponent a stavů, které jsou typické pro React \parencite{react-leaflet}.

#### GeoJSON

Abychom byli schopni vkládat do OpenStreetMap prostřednictvím Leafletu vlastní geografická data krajanských komunit, musíme zvolit vhodný formát dat. Přenos dat ve světě webových technologií standardně probíhá pomocí formátu JSON (JavaScript Object Notation). Jde o otevřený standard pro výměnu dat, který používá čitelný zápis skládající se vždy z dvojic klíč – hodnota. I přes to, že je použitelný napříč programovacími jazyky, vychází z JavaScriptu, konkrétně ze zápisu objektů (což je výhodné, protože se dá z dat ihned vytvořit objekt a dále s nimi pracovat jako s proměnnou). Jeho použití je rozmanité, nicméně se s ním lze nejčastěji setkat při komunikaci mezi webovými aplikacemi a vzdálenými servery \parencite{json}.

GeoJSON z formátu JSON vychází – jedná se tedy o otevřený standard pro reprezentaci takzvaných *features* (OpenGIS standard pro specifikaci geografických dat). Pod *features* si můžeme představit konkrétní tvary na mapě jako jsou například body, čáry, ale hlavně mnohoúhelníky, které využíváme pro vizualizaci lokalit \parencite{geojson}.

Detailní tvorba *features* ve formátu GeoJSON může být v textovém editoru komplexní a časově náročnou aktivitou. Jelikož je našim cílem editovat lokality v aplikaci uživatelsky přívětivým způsobem, využíváme externí službu Geoman.io, která disponuje již vytvořeným GeoJSON editorem \parencite{geoman}.

### Firebase

Z funkčních požadavků dále vyplývá potřeba ukládat data na vzdálenou databázi, aby byly informace pro všechny uživatele konzistentní a aktualizované. Pro naplnění tohoto nároku jsme se rozhodli vybrat platformu Firebase od firmy Google, která nabízí předpřipravená cloudová řešení pro backendovou část (správa databáze a autentifikace atd.) u mobilních a webových aplikací \parencite{firebase}. Pro naše potřeby jsme využili tři nástroje popsané níže.

#### Firebase Authentication

Firebase Authentication je služba, která poskytuje komplexní řešení autentifikace v souladu se základními standardy, jako jsou OAuth 2.0 and OpenID. Výhodou tohoto řešení je její integrace i do ostatních Firebase produktů, je tedy možné např. nastavovat práva pro konkrétní přihlášené/nepřihlášené uživatele týkající se zápisu do Cloud Firestore databáze.

Nástroj nabízí registraci a přihlašování přes různé poskytovatele, jako jsou Facebook, Google anebo Twitter, my ale využíváme klasického přihlášení přes e-mail a heslo. V této verzi aplikace nemá uživatel možnost vlastní registrace, protože administrační část je otevřena pouze ověřeným editorům krajanských komunit \parencite{auth}.

#### Cloud Firestore
 
Druhým využitým nástrojem je Cloud Firestore – databázové řešení, v němž ukládáme všechna data textové povahy. Jedná se flexibilní a škálovatelnou dokumentovou databázi, která ukládá data do kolekcí a izolovaných JSON dokumentů (tzn. uložená data jsou až na pár detailů velmi podobná formátu, který využíváme v naší aplikaci). Tuto databázi využíváme jako hlavní uložiště pro jednotlivé lokality \parencite{firestore}. 

#### Cloud Storage

Poslední zvolenou službou je Cloud Storage. Jde o jednoduché a cenově výhodné cloudové uložiště, které je uzpůsobeno k ukládání netextových souborů jako jsou obrázky, audio soubory či videa. Tento nástroj umožňuje efektivní stahování a nahrávání větších souborů spolu s jejich validací a kontrolou existence. Taktéž je navázán na Firebase Authentication a lze tak regulovat přístup k některým souborům. Výhodou tohoto řešení je vysoká míra škálovatelnosti, kterou je zapotřebí řešit při větším počtu aktivních uživatelů \parencite{storage}.

## Data o krajanských komunitách

Jelikož jsou data nutnou součástí a vlastně i samotným smyslem aplikace, popisujeme v následující podkapitole strukturu a obsah dat, ze kterých se skládají informace o jednotlivých krajanských komunitách.

Zároveň platí, že všechny zmíněné složky lze v administrativní části upravovat. Kromě názvu hlavní lokality a geografických dat není žádná z položek povinná, protože u každé komunity nemusí být dostupné všechny typy informací. Pro větší přehlednost tyto informace dělíme do podsekcí tak, jak je lze najít v administraci webové aplikace.

### Úvod

 - **Název hlavní lokality** – jedná se o unikátní název, bez kterého nelze lokalitu vytvořit. Podle hlavního názvu je komunita tříděna v seznamu lokalit;
 - **Název sekundární lokality ** – doplňující název pro vyšší správní jednotky, tedy pro region, kraj nebo stát;
 - **Úvodní obrázek** – náhledový obrázek, kterým je lokalita znázorněna ve vedlejším seznamu, anebo při rozkliku mapové vrstvy;
 - **Demografické údaje** – základní údaje, týkající se především demografie komunity. Taktéž jsou zde pro větší přehlednost vypsány hodnoty, podle kterých mohou být aplikovány filtry (viz xxx).

### Detailní informace

 - **Nahrávka**
	 - Audio nahrávka – audio soubor s nahrávkou, která obsahuje příklad autentického jazyka vybrané české komunity;
	 - Název nahrávky a případný komentář ke vzniku – název audio nahrávky s případným doprovodný komentářem;
	 - Přepis nahrávky – fonetická transkripce zvukové nahrávky do textové podoby (bez použití speciálních znaků);
	 - Poznámky k jazyku a jazyková charakteristika – komentář k jazyku nahrávky a popis jazykové charakteristiky komunity (hláskosloví, tvarosloví atd.);
	 - Další zdroje – prostor pro odkazy na jazykovou normu či jiné zdroje.
- **Historie a současnost**
	- Historie – sekce určená k popisu historie komunit;
	- Současnost – text věnovaný k aktuálnímu stavu české enklávy.

### Multimediální obsah

 - **Autor fotografií/obrázků** – jméno a případně odkaz na autora obrázků a fotografií;
 - **Obrázky** – libovolné množství fotografií a dalších ilustračních obrázků dané české komunity spolu s krátkými popisky;
 - **Audio** – libovolné množství audio nahrávek s rozhovory s krajany či odborníky na danou lokalitu (spolu s krátkými popisky);
 - **Videa** – libovolné množství odkazů na videa o komunitě spolu s popisky;
 - **Texty** – prostor na ukázky textových materiálů, jako jsou úryvky z knih, místních časopisů atd.;
 -  **Ostatní** – sekce na doplňující informace, které se nehodily umístit nikam jinam.

### Ostatní

 - **Projekty** – informace o existujících projektech, jež souvisejí s vybranou lokalitou;
 - **Nabídky** – vyjmenování případných nabídek spolupráce či jiných participací s komunitou;
- **Atrakce** – doplňující informace týkající se lokálních atrakcí, přírodních památek nebo turistického vyžití na daném místě;
- **Zajímavosti** – dodatečné zajímavosti ohledně historie, demografie či tamější architektury atd.;
- **Zdroje** – prostor na vkládání všech zdrojů, jež byly využity pro tvorbu digitálního záznamu o krajanské komunitě;
- **Kontakt** – kontakt na tvůrce konkrétního záznamu.

### Geografická data

- **GeoJSON** – pole pro vkládání jedné mapové vrstvy ve formátu GeoJSON. Na tomto místě je také příložen odkaz na službu Geoman.io, prostřednictvím které lze jednoduše kreslit jednotlivé mapové objekty a generovat tak GeoJSON soubor;
- **Podmínky pro třídění na mapě** – všechny níže uvedené podmínky jsou ve formě polí výběru (*selection box*), u nichž lze vybírat libovolné množství hodnot (níže je vždy vedle názvu filtru vypisujeme). Podle těchto vybraných hodnot je pak možné lokality filtrovat na mapě a v bočním seznamu;
	- Doba příchodu česky mluvících osob
		- 1550–1620,
		- 1620–1700,
		- 1700–1800,
		- 1800–1850,
		- 1850–1914,
		- 1914–1930,
		- po 1939,
		- po 1989;
	- Doba zániku
		- před 1620,
		- před 1700,
		- v 18. století,
		- v 19. století,
		- v 1. pol. 20. stol,
		- ve 2. pol. 20. stol,
		- 2000–současnost;
	- Velikost komunity
		- méně než 10,
		- 10–50,
		- více než 50,
		- více než 500,
		- více než 10 000,
		- více než 50 000;
	- Převládající nářeční základ
		- městská mluva,
		- severovýchodočeská skupina,
		- středočeská,
		- jihozápadněčeská skupina,
		- středomoravská,
		- východomoravská,
		- lašská,
		- českomoravská;
	- Počet generací, po které se čeština uchovala
		- 1,
		- 2,
		- 3,
		- 4,
		- 5,
		- 6,
		- 7,
		- 8,
		- 9,
		- 10;
	- Převládající motivace pro emigraci z českých zemí
		- náboženská (cca do 1850),
		- hospodářská (1820–1939, po 1989),
		- politická (zejm. po 1939–1989);
	- Existuje audiomateriál nebo písemná dokumentace jazyka?
		- ano,
		- ne;
	- Převládající náboženství
		- protestantské,
		- katolické, 
		- bez vyznání, 
		- nezjištěno;
	- Proběhla reemigrace?
		- po 1. světové válce,
		- po 2. světové válce;
	- Typ migrace
		- primární, 
		- sekundární,
		- další migrace.

## Uživatelské rozhraní

V následující podkapitole si na konkrétních ukázkách z aplikace představíme průchod uživatelským rozhraním se zřetelem na nejdůležitější interakční prvky. Návrh celého rozhraní vychází z funkčních požadavků.

Zároveň je zapotřebí dodat, že jsou v době psaní této práce v aplikaci přítomny dva kompletní záznamy krajanských komunit (Šumice a Kirillovka), na nichž budeme demonstrovat funkčnost aplikace.

Na každé stránce aplikace je v horní části umístěné statické navigační menu, přes které se uživatel může dostat do jednotlivých částí. Respektive pokud uživatel není přihlášen, vyskytuje se na konci panelu tlačítko pro přihlášení, v případě že přihlášen je, se může pomocí návodné ikony odhlásit.

Vstupní částí aplikace je stránka s mapou  (viz obrázek \ref{mapa}), na níž jsou při defaultní pozici mapy vidět bodově označené lokality. V mapové části se uživatel může pohybovat standardním způsobem a pro navrácení pozice mapy do výchozího stavu lze využít tlačítko pod tlačítkem oddálení. Taktéž je v pravém horním rohu umístěna miniaturní verze mapy pro přehlednější orientaci.

Práci s mapou navíc usnadňuje vyhledávač, který má dvě hlavní funkce. Uživatel po jeho nakliknutí ihned uvidí všechny dostupné lokality českých komunit, nemusí je tak složitě zjišťovat ze seznamu a vepisovat jejich jména (po výběru je pohled mapy ihned přesunut na vybranou lokalitu). Vyhledávač také umožňuje měnit výsek mapy na jakékoliv lokace, města a regiony, které jsou v běžných mapách dostupné (tato funkce navíc funguje napříč jazyky – např. pohled mapy se přesune nad Paříž, pokud napíšeme do vyhledávače Paris, tak i českou variantu Paříž).

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{mapa}  
    \caption{Výchozí pohled na mapu}
    \label{mapa}
\end{figure}

Výčet dostupných lokalit se zobrazuje prostřednictvím tlačítka menu v levé části navigačního panelu. Tímto způsobem se zobrazí vysouvací postranní sekce s abecedně seřazenými lokalitami podle aplikovaných filtrů (ve výchozím stavu bez omezení) (viz obrázek \ref{mapa-2}).

\begin{figure}  
    \centering
    \includegraphics[width=0.95\textwidth]{mapa-2}  
    \caption{Seznam lokalit v bočním panelu}
    \label{mapa-2}
\end{figure}

Nastavování filtrů se otevírá přes ikonu filtru vedle *Seznamu lokalit*. Změní se tak mód vysouvacího panelu, kde můžeme zatrhávat libovolné množství podmínek pro zobrazení lokalit (viz obrázek \ref{filtr1}).

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{filtr1} 
    \caption{Výchozí stav filtrů}
    \label{filtr1}
\end{figure}

Po výběru daných filtrů si uživatel může povšimnout okamžitě projevené změny zobrazení (viz obrázek \ref{filtr2}), a to jak na mapě, tak i v předchozím seznamu lokalit (pro větší přehlednost je počet aktuálně vyfiltrovaných komunit zobrazen vedle možnosti *Restartovat filtry*, uživatel má tak možnost ihned vidět celkový počet). 

\begin{figure}  
    \centering
    \includegraphics[width=0.95\textwidth]{filtr2}  
    \caption{Stav po použití filtru}
    \label{filtr2}
\end{figure}

Pro přiblížení na konkrétní krajanskou komunitu na mapě lze využít buď tlačítko *Zobrazit na mapě* u vybrané lokality (pokud je uživatel přihlášen, ja na tomto místě navíc umístěna ikona nastavení pro přechod na stránku s administrací), případně kliknout na modrou značku, která je zobrazená na mapě. Po jednoduché animaci je pohled mapy zacílen na danou mapovou vrstvu (viz obrázek \ref{cil-mapa}).

Pokud by se vedle sebe nacházelo větší množství lokalit, lze je od sebe navzájem rozlišit po najetí myši na mapovou vrstvu – vypíše se tak hlavní název komunity. Po kliknutí na mapovou vrstvu se zobrazí modální okno s hlavním a vedlejším názvem, případně s úvodním obrázkem a s dalšími akcemi, jako jsou *Upravit lokalitu* (v případě přihlášení), *Zpátky* a *Přejít na lokalitu*.

\begin{figure} 
    \centering
    \includegraphics[width=0.95\textwidth]{cil-mapa}  
    \caption{Přiblížení na vybranou krajanskou komunitu}
    \label{cil-mapa}
\end{figure}

Jak bylo v minulé podkapitole zmíněno, informace o vybrané lokalitě se dělí do několika oddílů. První z nich je úvodní stránka (viz obrázek \ref{uvod}) se základními informaci.

V druhé sekci můžeme najít audio nahrávku a další informace, jež s ní souvisí (viz obrázek \ref{detail}). V okamžiku, kdy uživatel spustí audio přehrávač, zobrazí se i případné jazykové informace, které se k nahrávce vážou (transkripce, jazyková charakteristika atd.), ty lze ovšem dle potřeby skrýt. Pod nahrávkou jsou pak informace vztahující se k jak historii, tak k současné situaci dané komunity.

\begin{figure} 
    \centering
    \includegraphics[width=0.95\textwidth]{uvod}  
    \caption{Úvodní informace}
    \label{uvod}
\end{figure}

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{detail}  
    \caption{Detailní informace spolu s audio nahrávkou}
    \label{detail}
\end{figure}

Třetí část se skládá z multimediálního obsahu. Pro zobrazení fotografií jsme vybrali uživatelsky přívětivou podobu obrázkové galerie, která v sobě obsahuje náhled na všechny obrázkové soubory (viz obrázek \ref{media}). Také je zde možnost zobrazení na celou obrazovku nebo přepínání obrázků pomocí šípek na klávesnici. V této sekci se taktéž případně nachází další audio nahrávky, přiložená videa ve formě vloženého YouTube přehrávače či libovolné množství textových materiálů.

Poslední oddílem je část *Ostatní*, kde je prostor na jakékoliv dodatečné textové informace, jakou jsou projekty, nabídky, atrakce, zajímavosti (viz obrázek \ref{ostatni}). Zároveň je zde místo pro výpis použitých zdrojů a název autora, který tento záznam vytvořil.

Užitečným detailem je v tomto kontextu sdílení vybrané lokality prostřednictvím jejího URL odkazu na jiné zařízení\footnote{Například https://czech-map.netlify.app/location/Šumice.}. Aplikace podle názvu v URL odkazu rozpozná danou komunitu a stáhne si ze vzdálené databáze všechna potřebná data.

\begin{figure}  
    \centering
    \includegraphics[width=0.95\textwidth]{media}  
    \caption{Obrázková galerie}
    \label{media}
\end{figure}

\begin{figure} 
    \centering
    \includegraphics[width=0.95\textwidth]{ostatni}  
    \caption{Poslední část s doplňujícími informacemi}
    \label{ostatni}
\end{figure}

Administraci lze otevřít až po úspěšném loginu na stránce *Přihlášení* (viz obrázek \ref{login}) prostřednictvím přiřazeného e-mailu a hesla. Uživatel v tuto chvíli nemá možnost účet založit, pro editory krajanských komunit budou v této fázi údaje zpřístupněny po případné domluvě.

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{login}  
    \caption{Přihlášení}
    \label{login}
\end{figure}

Po přihlášení se v navigačním menu objeví nová položka *Editor*, která uživatele přesměruje do podstránek s administrací, kde probíhají všechny úkony spojené s editací jednotlivých lokalit.

Stránku s administrací lze použít dvěma základními způsoby. Buď vytvořit novou lokalitu (tedy kliknout na tlačítko v menu), anebo použít některou z možností pro úpravu již existujícího záznamu (např. v seznamu lokalit, v modálním okně či v samotném detailu komunity). Níže představujeme administraci pro již existující komunitu.

Po přepnutí do administrace si uživatel může všimnout *progress baru* (ukazatele průběhu) umístěného hned pod navigačním menu, který reaguje na přepnutí napříč sekcemi (tedy na začátku je téměř prázdný, v posledním oddíle naopak plný) (viz obrázek \ref{admin-uvod}).

Pod tímto indikátorem jsou názvy oddílů, které je možné v rámci editoru vyplňovat, a následně dvě ikony pro vstup na lokalitu a pro odstranění celého záznamu (před smazáním se objevuje konfirmační modální okno, kde musí uživatel svoji volbu potvrdit).

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{admin-uvod}  
    \caption{Úvodní stránka administrace}
    \label{admin-uvod}
\end{figure}

Dále se pak nachází vždy obsah pro jednotlivé oddíly, kde je možné vyplňovat data pro vybrané položky. U položek textového charakteru jsou prvky formuláře buď jednoduchého typu (umožňují vkládat text pouze bez formátování, například název atd.), anebo se jedná o složitější textový editor pro uložení komplexnější textové informace (viz obrázek \ref{admin-nahravka}).

V textovém editoru je možné přidávat standardní značky pro formátování textu, jako jsou odrážky, tučný řez písma, odkazy, nadpisy, ale i třeba emotikony a další prvky, které mohou být užitečné v některých sekcích. Do aplikace tak lze jednoduše a efektivně vkládat delší texty, které si uživatel připraví např. v textovém procesoru typu MS Word.

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{admin-nahravka}  
    \caption{Prvky formuláře pro vkládání delšího textu a audio nahrávky}
    \label{admin-nahravka}
\end{figure}

Pro vkládání souborů (obrázky a audio) do systému pak slouží speciální komponenta, která přehledným způsobem vykresluje již vložené soubory ve formě textu (viz obrázek \ref{admin-obrazky}). Uživatel na první pohled vidí, jaké soubory jsou součástí dané lokality a může tak jednoduchým způsobem přidávat a odstraňovat soubory (či jejich popisky) dle potřeby.

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{admin-obrazky}  
    \caption{Vkládání obrázků přes speciální komponentu}
    \label{admin-obrazky}
\end{figure}

Poslední důležitou složkou administrace je správa geografických dat a nastavování filtrů (viz obrázek \ref{admin-geo}). Jak bylo v předchozí podkapitole zmíněno, geografická data aplikace zpracovává ve formátu GeoJSON. Proto využíváme speciálně upravený textový editor, který dokáže validovat správný formát vstupního textu (GeoJSON je i přes svoje specifika v principu stále textový řetězec).

Pravděpodobnost chyby se navíc snažíme eliminovat tím způsobem, že uživatele nutíme měnit obsah pole pouze prostřednictvím zkopírování textu. Takto chceme editora motivovat k využití přiložené služby Geoman.io, kde si může jednoduchým způsobem nakreslit potřebnou mapovou vrstvu a vygenerovat si tak GeoJSON kód (viz obrázek \ref{geoman}). Ten pak stačí celý zkopírovat a rovnou vložit do naší aplikace, která jej pak automaticky zpracuje a vybere z něj potřebné hodnoty pro zakreslení do mapy.

Věříme, že tento způsob je v této fázi aplikace uživatelsky nejpřívětivější a efektivní zároveň. Jedinými nevýhodami tohoto přístupu jsou prozatímní závislost na externím nástroji a nutnost při úpravě existující lokality znovu vygenerovat celý GeoJSON kód.

Volba filtrů je vytvořena jednoduchým způsobem skrze *selection boxy* s vícenásobným výběrem. V závěru je zapotřebí data z celé administrativní části odeslat pomocí výrazného tlačítka umístěného na konci stránky. Až pak se propíší do databáze a zároveň do dalších částí aplikace. Je tedy zřejmé, že uživatel nesmí při editace ztratit připojení nebo jakýmkoliv jiným způsobem přerušit spojení s editorem (např. aktualizace stránky atd.). I z tohoto důvodu je přidáno konfirmační modální okno po kliknutí na ikony oka, jež slouží pro zobrazení lokality ve standardním módu.  

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{admin-geo}  
    \caption{Vkládání geografických dat a úprava filtrů}
    \label{admin-geo}
\end{figure}

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{geoman}  
    \caption{Rozhraní služby Geoman.io}
    \label{geoman}
\end{figure}

Závěrečnou obrazovkou, jež zmíníme, je sekce *O projektu* (viz obrázek \ref{about}). Ta je v tuto chvíli spíše marginálnější povahy, protože obsahuje pouze základní informace o celém projektu. Nicméně do budoucna může být prostorem pro další informace, jako jsou například nápověda nebo odkazy na přidružené projekty.

\begin{figure}
    \centering
    \includegraphics[width=0.95\textwidth]{about}  
    \caption{Informační stránka o projektu}
    \label{about}
\end{figure}

### Responzivní design

Jedním z nefunkčních požadavků na aplikaci je její multiplatformní povaha. To v praxi znamená, že by naše řešení mělo být použitelné napříč zařízeními s různým rozlišením apod.

Jelikož jsme vyvíjeli webovou aplikaci, museli jsme tak brát ohled na zásady responzivního designu. Jedná se o způsob stylování HTML (prostřednictvím pomocí CSS, ale i JavaScriptu) pomocí různých flexibilních struktur, jehož výsledkem má být optimální zobrazení na všech možných obrazovkách.

Tento požadavek se nám povedlo naplnit (viz obrázky \ref{resA} a \ref{resB}), ačkoliv u administrace nepředpokládáme tak hojné využívání na menších zařízeních. Zároveň se u dotykových zařízení lehce mění způsob využívání některých komponent (např. mapa nebo obrázková galerie), které jsou tak uzpůsobeny na dotykovou interakci.

\begin{figure}
  \begin{subfigure}[b]{0.425\textwidth}
    \includegraphics[width=1\textwidth]{res1}
  \end{subfigure}
  \hfill
  \begin{subfigure}[b]{0.425\textwidth}
    \includegraphics[width=1\textwidth]{res2}
  \end{subfigure}
  \caption{Responzivní zobrazení mapy a~seznamu lokalit}
  \label{resA}
\end{figure}

\begin{figure}
  \begin{subfigure}[b]{0.425\textwidth}
    \includegraphics[width=1\textwidth]{res3}
  \end{subfigure}
  \hfill
  \begin{subfigure}[b]{0.425\textwidth}
    \includegraphics[width=1\textwidth]{res4}
  \end{subfigure}
  \caption{Responzivní zobrazení obrázkové galerie a~administrace}
  \label{resB}
\end{figure}