// Modal delete
$('#deleteModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var userId = button.data('entity-id');
    var userName = button.data('entity-name');

    // Cập nhật giá trị userId vào input ẩn trong modal
    var modal = $(this);
    modal.find('input[name="id"]').val(userId);
    modal.find('span[id="entityName"]').text(userName);
});