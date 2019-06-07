import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10', speed: 0.2
    });

    const marker = JSON.parse(mapElement.dataset.markers);
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
    const fitMapToMarkers = (map, marker) => {
      const bounds = new mapboxgl.LngLatBounds();
      bounds.extend([ marker.lng, marker.lat ]);
      map.fitBounds(bounds, { padding: 30, maxZoom: 15, duration: 1 });
    };
    fitMapToMarkers(map, marker);
  };
}




    // [ ... ]


export { initMapbox };
