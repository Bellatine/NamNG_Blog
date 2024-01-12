/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function toggleDropdown() {
    var dropdown = document.querySelector(".dropdown-content");
    dropdown.style.display = (dropdown.style.display === "block") ? "none" : "block";
}

// Đóng dropdown nếu click bên ngoài
document.addEventListener("click", function(event) {
    var dropdown = document.querySelector(".dropdown-content");
    if (!event.target.matches('.dropdown button')) {
        dropdown.style.display = 'none';
    }
});

