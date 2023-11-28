function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    center: { lat: 35.6812362, lng: 139.7645499 },
    zoom: 8,
  });

  const input = document.getElementById("place-search");
  const searchBox = new google.maps.places.SearchBox(input);

  map.addListener("bounds_changed", () => {
    searchBox.setBounds(map.getBounds());
  });

  searchBox.addListener("places_changed", () => {
    const places = searchBox.getPlaces();

    if (places.length === 0) {
      return;
    }

    const bounds = new google.maps.LatLngBounds();
    places.forEach((place) => {
      if (!place.geometry) {
        console.log("Returned place contains no geometry");
        return;
      }
      if (place.geometry.viewport) {
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
    });
    map.fitBounds(bounds);
    
  });
}

window.initMap = initMap;
