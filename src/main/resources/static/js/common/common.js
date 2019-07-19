function dataCheck(data) {
    if(data == '' || data == 'undefined' || data == null){
        return true;
    }else {
        return false;
    }
}

function pageChange(pageNum , searchText) {
    let urlProtocol = document.location.protocol;
    let urlHost = document.location.host;
    let urlPath = document.location.pathname;

    if(pageNum == "" || pageNum == "undefined" || pageNum == null) {
        pageNum = "1";
    }
    if(searchText == null) {
        searchText = "";
    }

    let urlFullPath = urlProtocol + "//" + urlHost + urlPath + "?" + "pageNum=" + pageNum + "&" + "searchText=" + searchText;

    location.href = urlFullPath;
}