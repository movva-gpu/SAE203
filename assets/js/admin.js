/* globals DataTable */

window.addEventListener('load', e => {
    DataTable.ext.errMode = 'none';
    const table = new DataTable('#datatable', {
        paging: false,
        autoFill: true
    });
});
