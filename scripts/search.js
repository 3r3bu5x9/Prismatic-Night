function toggleEngine()
{
    var gSearch = document.getElementById("gSearch"); 
    var dSearch = document.getElementById("dSearch");
    
    gSearch.style.display = (
    gSearch.style.display == "none" ? "block" : "none"); 
    dSearch.style.display = (
    dSearch.style.display == "none" ? "block" : "none");

    var logo = document.getElementById("engineLogo").src;

    if (logo.indexOf("google.svg") != -1)
    {
        document.getElementById("engineLogo").src = "icons/duck.svg";
    }
    else
    {
        document.getElementById("engineLogo").src = "icons/google.svg";
    }

    document.getElementById("textField").reset();

}
