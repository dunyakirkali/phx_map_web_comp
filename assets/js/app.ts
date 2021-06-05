// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
// import css from "../css/app.css";
import _css from "../css/app.scss"
import "phoenix_html"
import HelloWorldElement from "./hello-world"
import GoogleMapElement from "./google-map";

import {Socket} from "phoenix"
import LiveSocket from "phoenix_live_view"

let csrfToken = document
  .querySelector("meta[name='csrf-token']")
  .getAttribute("content");
let liveSocket = new LiveSocket("/live", Socket, {
  params: { _csrf_token: csrfToken },
});

// Connect if there are any LiveViews on the page
liveSocket.connect()
window.liveSocket = liveSocket;
new HelloWorldElement();
new GoogleMapElement();