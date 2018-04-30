FNR==1{print "<template>"}

FNR>18 && FNR!=205{print($0)}

FNR==47{print "<br/>"}

END{print "</template>"}
