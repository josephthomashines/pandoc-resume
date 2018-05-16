FNR==1{print "<template>\n<div>"}

FNR>18 && FNR!=109 && FNR!=110 && $3!="215-983-0808" && $4!="Rockledge," {print($0)}

$1 ~ /<dt>/ {print "<br/>"}

$3 == "215-983-0808" {$3 = "***-***-0808"; print $0}

$4 == "Rockledge," {print "Rockledge, Pennsylvania"}

END{print "<br><br>\n<p><b>Check out the <a href=\"https://github.com/josephthomashines/pandoc-resume\">github</a> for this resume!</b></p>\n</div>\n</template><style scoped>/* Whole document */div {    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;    max-width: 800px;    margin: 15px auto;    background: #FFFFFF;    padding: 20px 10px 10px 10px;}/* Title of the resume */h1 {    font-size: 40px;    color: #000000;    text-align:center;    margin-bottom:15px;}h1:hover {    background-color: #3D9970;    color: #FFFFFF;    text-shadow: 1px 1px 1px #333;}/* Titles of categories */h2 {    /* This is called "sectioncolor" in the ConTeXt stylesheet. */    color: #000000;    text-align: left;}/* There is a bar just before each category */h2:before {    content: \"\";    display: inline-block;    margin-right:1%;    width: 16%;    height: 10px;    /* This is called "rulecolor" in the ConTeXt stylesheet. */    background-color: #a7a7a7;}h2:hover {    background-color: #3D9970;    color: #FFFFFF;    text-shadow: 1px 1px 1px #333;}/* Definitions */dt {    float: left;    clear: left;    width: 17%;    font-weight: bold;    padding-right: 25px;    text-align: left;}dd {    margin-left: 17%;    text-align: left;}p {    margin-top:0;    margin-bottom:7px;}/* Blockquotes */blockquote {    text-align: center}/* Links */a {    text-decoration: underline;    color: #397249;}a:hover, a:active {    background-color: #397249;    color: #FFFFFF;    text-decoration: none;    text-shadow: 1px 1px 1px #333;}/* Horizontal separators */hr {    color: #A6A6A6;}table {    width: 100%;}ul {    text-align: left;}</style>"}
