window.onload = () => {
    if (!!document.querySelector('button.back')) {
        document.querySelector('button.back').onclick = e => {
            e.preventDefault();
            open(
                e.target.className.split(' ').includes('admin')
                    ? e.target.className.split(' ').includes('scp')
                        ? '/admin.php?page=entities'
                        : e.target.className.split(' ').includes('user')
                          ? '/admin.php?page=user'
                          : '/admin.php?page=index'
                    : '/',
                '_self'
            );
        };
    }
    if (!!document.querySelector('button.add')) {
        document.querySelector('button.add').onclick = e => {
            e.preventDefault();
            open(
                e.target.className.split(' ').includes('scp')
                    ? '/admin.php?page=add&scp'
                    : e.target.className.split(' ').includes('user')
                      ? '/admin.php?page=add&user'
                      : '/',
                '_self'
            );
        };
    }
};
