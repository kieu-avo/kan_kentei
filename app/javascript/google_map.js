function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    center: { lat: 35.6812362, lng: 139.7645499 },
    zoom: 5,
  });

  //検索
  const input = document.getElementById("place-search");
  const searchBox = new google.maps.places.SearchBox(input);

  map.controls[google.maps.ControlPosition.LEFT_TOP].push(input); 
  map.addListener("bounds_changed", () => {
    searchBox.setBounds(map.getBounds());
  });

  //マーカー表示
  let markers = [];

  searchBox.addListener("places_changed", () => {
    const places = searchBox.getPlaces();

    if (places.length == 0) {
      return;
    }

    markers.forEach((marker) => {
      marker.setMap(null);
    });
    markers = [];

    const bounds = new google.maps.LatLngBounds();

    places.forEach((place) => {
      if (!place.geometry || !place.geometry.location) {
        console.log("Returned place contains no geometry");
        return;
      }

      markers.push(
        new google.maps.Marker({
          map, 
          title: place.name,
          position: place.geometry.location,
        }),
      );
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
