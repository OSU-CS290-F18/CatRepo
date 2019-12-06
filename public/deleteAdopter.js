  
function deleteAdopter(id){
    $.ajax({
        url: '/adopters/' + id,
        type: 'DELETE',
        success: function(result){
            window.location.reload(true);
        }
    })
};
