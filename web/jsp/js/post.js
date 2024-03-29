document.addEventListener("DOMContentLoaded", function () {
    // Simulate data (thay thế bằng dữ liệu thực từ server)
    const posts = [
        { title: "Post 1", content: "Lorem ipsum...", image: "./jsp/img/img-01.jpg" },
        { title: "Post 2", content: "Dolor sit amet...", image: "./jsp/img/img-02.jpg" },
        { title: "Post 1", content: "Lorem ipsum...", image: "./jsp/img/about-03.jpg" },
        { title: "Post 2", content: "Dolor sit amet...", image: "./jsp/img/img-04.jpg" },
        { title: "Post 1", content: "Lorem ipsum...", image: "./jsp/img/comment-1.jpg" },
        { title: "Post 2", content: "Dolor sit amet...", image: "./jsp/img/img-06.jpg" },
        // Thêm bài viết khác nếu cần
    ];

    var jsonArray = '<%= request.getAttribute("jsonArray") %>';
    console.log("jsonArray: ", jsonArray);
    // Chuyển đổi chuỗi JSON thành mảng JavaScript
    var postList = JSON.parse(jsonArray);

    const blogContainer = document.getElementById("blog-container");

    for (var i = 0; i < postList.length; i++) {
        var post = postList[i];

        const postDiv = document.createElement("div");
        postDiv.className = "post";
        console.log('name: ' + post.name + " " + post.image);
        // Nội dung bài viết
        const contentDiv = document.createElement("div");
        contentDiv.className = "post-content";

        const title = document.createElement("h2");
        title.textContent = post.name;

        const content = document.createElement("p");
        content.textContent = post.post_content;

        const image = document.createElement("img");
        image.src = post.image;
        image.alt = "Post Image";

        contentDiv.appendChild(title);
        contentDiv.appendChild(content);
        contentDiv.appendChild(image);

        // Nút chức năng
        const buttonsDiv = document.createElement("div");
        buttonsDiv.className = "post-buttons";

        const likeButton = document.createElement("button");
        likeButton.innerHTML = '<img src="./jsp/img/like.png" alt="Thích">';
        likeButton.addEventListener("click", function () {
            alert("Thích bài viết: " + post.title);
        });

        // Thay thế nút "Bình luận" bằng ảnh "cmt.png"
        const commentButton = document.createElement("button");
        commentButton.innerHTML = '<img src="./jsp/img/comment.jpg" alt="Bình luận">';
        commentButton.addEventListener("click", function () {
            alert("Bình luận cho bài viết: " + post.title);
        });


        buttonsDiv.appendChild(likeButton);
        buttonsDiv.appendChild(commentButton);


        // Thêm nội dung và nút vào postDiv
        postDiv.appendChild(contentDiv);
        postDiv.appendChild(buttonsDiv);

        blogContainer.appendChild(postDiv);
    }

    // Hiển thị bài viết
    // userDtoList.forEach(post => {
    //     const postDiv = document.createElement("div");
    //     postDiv.className = "post";
    //
    //     // Nội dung bài viết
    //     const contentDiv = document.createElement("div");
    //     contentDiv.className = "post-content";
    //
    //     const title = document.createElement("h2");
    //     title.textContent = post.name;
    //
    //     const content = document.createElement("p");
    //     content.textContent = post.post_content;
    //
    //     const image = document.createElement("img");
    //     image.src = post.image;
    //     image.alt = "Post Image";
    //
    //     contentDiv.appendChild(title);
    //     contentDiv.appendChild(content);
    //     contentDiv.appendChild(image);
    //
    //     // Nút chức năng
    //     const buttonsDiv = document.createElement("div");
    //     buttonsDiv.className = "post-buttons";
    //
    //     const likeButton = document.createElement("button");
    //     likeButton.innerHTML = '<img src="./jsp/img/like.png" alt="Thích">';
    //     likeButton.addEventListener("click", function () {
    //         alert("Thích bài viết: " + post.title);
    //     });
    //
    //     // Thay thế nút "Bình luận" bằng ảnh "cmt.png"
    //     const commentButton = document.createElement("button");
    //     commentButton.innerHTML = '<img src="./jsp/img/comment.jpg" alt="Bình luận">';
    //     commentButton.addEventListener("click", function () {
    //         alert("Bình luận cho bài viết: " + post.title);
    //     });
    //
    //
    //     buttonsDiv.appendChild(likeButton);
    //     buttonsDiv.appendChild(commentButton);
    //
    //
    //     // Thêm nội dung và nút vào postDiv
    //     postDiv.appendChild(contentDiv);
    //     postDiv.appendChild(buttonsDiv);
    //
    //     blogContainer.appendChild(postDiv);
    // });
    function isImageWidthGreaterThan400(imageSrc) {
        const image = new Image();
        image.src = imageSrc;

        return image.naturalWidth > 400;
    }
});

