/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function deleteUser(endpoint, username) {
      if (confirm("Bạn chắc chắn xóa? Nó sẽ xóa luôn User này?") === true) {   
        fetch(endpoint, {
             method: "delete"
        }).then(res => {
            console.info(res);
            if (res.status === 204) {
                document.getElementById('${username}').style.display = "none";
                alert("Hệ thống đang có lỗi, vui lòng quay lại sau1!");
            } else
                alert("Hệ thống đang có lỗi, vui lòng quay lại sau!");
        });
      }
}