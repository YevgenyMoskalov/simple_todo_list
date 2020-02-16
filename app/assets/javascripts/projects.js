
$(function () {
    $(".deleteProjectAction").click( function () {
        let current_project = $(this).closest("div.project");
        if (confirm("Delete this project?")) {
            $.ajax({
                url: '/projects/' + $(current_project).attr('data-project_id'),
                type: 'POST',
                data: { _method: 'DELETE'},
                success: function() {
                    current_project.fadeOut(200)
                }
            })
        }
    });

});

$(function () {
   $(".deleteTaskAction").click(function () {
       let current_task = $(this).closest("tr.task");
       if (confirm("Delete this task?")) {
           $.ajax({
               url: '/tasks/' + $(current_task).attr('data-task_id'),
               type: 'POST',
               data: {_method: 'DELETE'},
               success: function() {
                   current_task.fadeOut(200)
               }
           })
       }
   })
});