# Implementace

Tohle je implementace aplikace...

Tohle je \verb{createMultiCircle} protože...

\begin{verbatim}
...
const useGeocode = (initialLocation?: string) => {
	const [location, setLocation] = useState<LatLng>(latLng(0, 0));
	const [address, setAddress] = useState<string>(
		initialLocation ? initialLocation : ''
	);

	const { data } = useSWR(
		address ? `json?q=${address}&key=${process.env.REACT_APP_API_KEY}` : null,
		fetcher,
		{
			shouldRetryOnError: false,
			revalidateOnFocus: false
		}
	);

	useEffect(() => {
		if (data && data.results.length > 1) setLocation(data.results[0].geometry);
	}, [data]);

	return { location, setAddress };
};
...
\end{verbatim}