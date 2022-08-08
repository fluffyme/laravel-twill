function changeLanguage(event) {
    let value = document.getElementById("lang-select").value;
    const currentUrl = window.location.href;
    let url = new URL(currentUrl);
    let path = url.pathname.split("/");
    path[1] = value;
    url.pathname = path.join("/");
    window.location.href = url.href;
    sessionStorage.setItem("locale", value);
}

