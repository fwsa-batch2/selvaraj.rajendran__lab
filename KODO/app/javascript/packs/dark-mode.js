document.getElementById('dark').addEventListener('click', toggle_check);

function toggle_check() { 
    document.getElementById('dark-box').click();
}

{
    const cur_mode = localStorage.getItem('dark-mode');
    console.log(cur_mode)
    if (cur_mode == "true") {
        darkmode();
    } else {
        lightmode();
    }

}
function darkmode() {
    let dark = document.getElementById("dark");
    document.body.classList.add("dark-theme");
    dark.classList.add("bxs-sun");
    saveInLs('dark-mode', "true")
}
function lightmode() {
    let dark = document.getElementById("dark");
    document.body.classList.remove("dark-theme");
    dark.classList.remove("bxs-sun");
    saveInLs('dark-mode', "false")
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
        lightmode();
    }
}