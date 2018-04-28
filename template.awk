FNR==1{print "<template>"}

FNR>17 && FNR!=110{print($0)}

FNR==47{print "<br/>"}

END{print "</template><style scoped>* {background-color: #ffffff;background: #ffffff;}</style>"}
