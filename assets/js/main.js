window.onload = () => {
    (() => {
        if (!document.querySelector('button.back')) return;
        document.querySelector('button.back').onclick = e => {
            e.preventDefault();
            open('/', '_self')
        }
    })();
}