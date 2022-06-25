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

Při tvorbě komponent jsme se snažili o co největší modularitu z hlediska funkcionalit jednotlivých částí. Níže je příklad komponenty \verb|Gallery|, která obsahuje logiku a UI obrázkové galerie.

\begin{verbatim}
...
...
\end{verbatim}

## Stavy aplikace

## Komunikace s databází

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

	// eslint-disable-next-line react/jsx-no-useless-fragment
	if (!dropZone.files[0]) return <></>;

	useEffect(() => {
		if (urls?.[0]) {
			const newImages = urls.map((url, i) => ({
				original: url,
				thumbnail: url,
				description: dropZone.names[i]?.name
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

	return (
		<>
			<Text variant="h3" component="h1" text="Obrázky" />
			{loading ? (
				<LoadingSpinner
					boxWidth="100%"
					height="5rem"
					width="5rem"
					textAlign="center"
					pt="2rem"
					pb="10rem"
				/>
			) : (
				<Box sx={{ mt: '3rem !important' }}>
					<ImageGallery
						lazyLoad
						showPlayButton={false}
						items={images as ReactImageGalleryItem[]}
					/>
				</Box>
			)}

			<Divider />
		</>
	);
};
\end{verbatim}

## Mapa

