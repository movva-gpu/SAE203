window.onload = () => {
    document.querySelector('button.btn.back').onclick = e => {
        e.preventDefault();
        open('/', '_self')
    }
}