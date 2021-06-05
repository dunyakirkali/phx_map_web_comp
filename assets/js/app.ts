// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
// import css from "../css/app.css";
import _css from "../css/app.scss"
import "phoenix_html"
import HelloWorldElement from "./hello-world"
import GoogleMapElement from "./google-map";

new HelloWorldElement();
new GoogleMapElement();