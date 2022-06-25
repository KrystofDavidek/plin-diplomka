# Implementace

V poslední části této práce se zaměříme na implementační detaily webové aplikace. Implementaci představíme ve čtyřech částech, z nichž se každá věnuje jiné obecnější oblasti nebo naopak konkrétní důležité funkcionalitě. V rozsahu této práce tak není komentovat kód jako celek, ten lze však nalézt jako přílohu přiloženou k této práci.

## Systém modulů a komponent

Jelikož je naše aplikace založena na webovém frameworku React, drželi jsme se při tvorbě všech souborů standardní adresářové struktury. Jednotlivé reactí komponenty jsou umístěny v adresáři \verb|components|, zde je jsou tedy soubory týkající se primárně UI konkrétních částí aplikace. Zbytek komponent je pak ve složce \verb|pages|, kde jsou izolovány stránky aplikace.

\dirtree{%
.1 src.
.2 assets.
.2 components.
.3 Dialogs.
.3 Entry.
.3 Form.
.3 Map.
.2 contexts.
.2 data.
.2 hooks.
.2 models.
.2 pages.
.2 utils.
}

Při tvorbě komponent jsme se snažili o co největší modularitu z hlediska funkcionalit jednotlivých částí. Níže uvádíme příklad komponenty \verb|Gallery|, která obsahuje logiku a UI pro obrázkovou galerii.

Komponentu definujeme jako javaScriptovou funkci a za vstupní parametr (objekt *props*) vkládáme danou část dostupných dat typu \verb|GalleryProps| (jde o seznam názvů souborů a jejich případných popisků).

Na začátku probíhá inicializace vstupních dat, jimž předchází validace a další procedury. V příkladu si navíc můžeme všimnout využití takzvaných *hooks* (reactí funkce, které začínají slovem *use*, například tedy \verb|useState|), které typicky spravují stav komponenty.

\begin{verbatim}
const Gallery = ({ dropZone }: GalleryProps) => {
	const { urls, setNames } = useAsyncFiles();
	const [loading, setLoading] = useState<boolean>(true);
	
	const [images, setImages] = useState<
		{
			original: string | undefined;
			thumbnail: string | undefined;
			description: string | undefined;
		}[]
	>([]);
	
if (!dropZone.files[0]) return  <></>;
	...
\end{verbatim}

Jelikož je komponenta \verb|Gallery| závislá na datech z externí databáze, musí nejprve proběhnout stáhnutí požadovaných souborů. To probíhá prostřednictvím jiného *hooku* \verb|useEffect|, který se vždy spouští při změně hodnoty proměnné, která je definovaná na konci funkce v takzvaném *dependency array*. Takto si komponenta na základě vstupních dat zavolá asynchronní funkci, z předchozí ukázky \verb|setNames| z hooku \verb|useAsyncFiles|, která izolovaně komunikuje s databází a přiřazuje výsledné URL adresy souborů do proměnné \verb|urls|. Výhodou tohoto principu je nezávislost komponent na aktuálně používaném řešení pro stahování dat.

\begin{verbatim}
...
useEffect(() => {
  if (urls?.[0]) {
    const newImages = urls.map((url, i) => ({
      original: url,
      thumbnail: url,
      description: dropZone.names[i] ? .name
    }));
    setImages(newImages);
    setLoading(false);
  }
}, [urls]);

useEffect(() => {
  if (dropZone.files[0]) {
    setNames(dropZone.files);
  }
}, [dropZone]);
...
\end{verbatim}

## Stavy aplikace

## Komunikace s databází

## Mapa

