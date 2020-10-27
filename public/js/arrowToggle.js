$(".arrowClicked").click(function () {
    setTimeout(function () {
        if ($(".arrowToggle", this).hasClass("fa-arrow-down")) {
            $(".arrowToggle", this).removeClass("fa-arrow-down");
            $(".arrowToggle", this).addClass("fa-arrow-up");
        } else if ($(".arrowToggle", this).hasClass("fa-arrow-up")) {
            $(".arrowToggle", this).removeClass("fa-arrow-up");
            $(".arrowToggle", this).addClass("fa-arrow-down");
        }

    }, 300);
})