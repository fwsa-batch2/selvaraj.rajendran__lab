document.getElementById("moon").addEventListener("click", toggle_check);

function toggle_check() {
    document.getElementById('dark-box').click();
}

var tog_mode = localStorage.getItem("dark_mode");

if (tog_mode == "true") {
    darkmode();
    
} else {
    lightMode();
}



function darkmode() {
    var moon = document.getElementById("moon");
    moon.classList.add("bxs-sun");
    document.body.classList.add("darkmode");
    saveInLs("dark_mode", "true");
    // let course = document.getElementById("course-img");
    // course.classList.add("img-d");

}



function lightMode() {
    var moon = document.getElementById("moon");
    moon.classList.remove("bxs-sun");
    document.body.classList.remove("darkmode");
    saveInLs("dark_mode", "false");
}

function saveInLs(key, value) {
    localStorage.setItem(key, value);
}

document.getElementById('dark-box').addEventListener('click', isDark)

function isDark() {
    let checkBox = document.getElementById("dark-box");

    if (checkBox.checked == 1) {
        darkmode();
    } else {
        lightMode();
    }
}


// search box 
document.getElementById("search").addEventListener("click", search);

function search() {
    var moon = document.getElementById("search");
    moon.classList.toggle("bxs-x-circle");
    var search_field = document.getElementById("search-field");
    search_field.classList.toggle("search-active");

}