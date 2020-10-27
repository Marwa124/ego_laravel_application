// .hovered-link:hover ~ .my-modal {
//     display: block !important;
// }
$('.hovered-link').hover(() => {
    $('.my-modal').css({ 'visibility': 'visible', 'opacity': '1' })
}, () => {
    $('.my-modal').css({ 'visibility': 'hidden', 'opacity': '0' })
})