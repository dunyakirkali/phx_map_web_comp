import { controller, target } from "@github/catalyst";

@controller
class GoogleMapElement extends HTMLElement {
  @target output: HTMLElement;
  
  connectedCallback() {
    var mapboxgl = require("mapbox-gl/dist/mapbox-gl.js");

    mapboxgl.accessToken =
      "pk.eyJ1IjoiZHVueWFraXJrYWxpIiwiYSI6ImNqam1vdGpicDR6ZzczcW56Zm5hZWRiem0ifQ.MncvljRA8t5XfvTwDmVcyQ";
    var map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/mapbox/streets-v11",
    });

    var marker = new mapboxgl.Marker().setLngLat([30.5, 50.5]).addTo(map);
  }
}

export default GoogleMapElement;
