window.onload = () => {
    document.querySelector('button.back').onclick = e => {
        e.preventDefault();
        open('/', '_self')
    }
}