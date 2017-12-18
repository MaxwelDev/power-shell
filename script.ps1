$nav = new-object -ComObject "InternetExplorer.Application"
$nav.visible = $true
$nav.Navigate2("https://www.bing.com")

while($nav.busy) {
    start-sleep -milliseconds 1000
}

$nav.Document.getElementById("sb_form_q").value="uol"
$nav.Document.getElementById("sb_form_go").Click();
