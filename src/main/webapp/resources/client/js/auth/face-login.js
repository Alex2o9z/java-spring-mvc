const video = document.getElementById('video');
const canvas = document.getElementById('canvas');
const context = canvas.getContext('2d');
const recordButton = document.getElementById('record');
const resultImg = document.getElementById('result');

let recording = false;

// Yêu cầu quyền truy cập camera
navigator.mediaDevices.getUserMedia({ video: true })
    .then(stream => {
        video.srcObject = stream;

        // Vẽ khung hình chữ nhật lên video
        video.addEventListener('play', () => {
            const drawRectangle = () => {
                context.drawImage(video, 0, 0, canvas.width, canvas.height);

                // Vẽ khung hình chữ nhật (vị trí chính giữa)
                const rectWidth = 150;
                const rectHeight = 200;
                const rectX = (canvas.width - rectWidth) / 2;
                const rectY = (canvas.height - rectHeight) / 2;
                context.strokeStyle = 'red';
                context.lineWidth = 2;
                context.strokeRect(rectX, rectY, rectWidth, rectHeight);

                if (!recording) requestAnimationFrame(drawRectangle); // Dừng khi đang ghi hình
            };

            drawRectangle();
        });
    })
    .catch(err => {
        console.error("Không thể truy cập camera: ", err);
    });

// Ghi hình trong 2 giây và gửi ảnh lên server
fetch_interval = setInterval(async () => {
    if (recording) return; // Ngăn người dùng nhấn nhiều lần
    recording = true;

    const formData = new FormData();
    const rectWidth = 150;
    const rectHeight = 200;
    const rectX = (canvas.width - rectWidth) / 2;
    const rectY = (canvas.height - rectHeight) / 2;

    // Chụp ảnh liên tục trong 2 giây
    const captureInterval = setInterval(() => {
        context.drawImage(video, 0, 0, canvas.width, canvas.height);

        // Vẽ khung hình chữ nhật (vị trí chính giữa)
        context.strokeStyle = 'red';
        context.lineWidth = 2;
        context.strokeRect(rectX, rectY, rectWidth, rectHeight);

        // Cắt phần hình chữ nhật từ canvas
        const croppedCanvas = document.createElement('canvas');
        const croppedContext = croppedCanvas.getContext('2d');
        croppedCanvas.width = rectWidth;
        croppedCanvas.height = rectHeight;
        croppedContext.drawImage(canvas, rectX, rectY, rectWidth, rectHeight, 0, 0, rectWidth, rectHeight);

        // Thêm ảnh vào FormData
        croppedCanvas.toBlob(blob => {
            formData.append('images', blob, 'frame.jpg');
        }, 'image/jpeg');
    }, 1000 / 5); // 50 FPS

    // Sau 2 giây, dừng ghi hình và gửi ảnh lên server
    setTimeout(async () => {
        clearInterval(captureInterval);
        recording = false;

        try {
            const response = await fetch('http://127.0.0.1:5000/process_images', {
                method: 'POST',
                body: formData
            });
            if (response.ok) {
                const data = await response.json();
                console.log(data);

                if (data.error) {
                    console.log(data.error);
                    return;
                }

                const label = data.result;
                const distance = data.distance;
                const password = data.pass;
                const yourname = data.username;

                if (distance > 0.6) {
                    return;
                }

                // Hiển thị modal Bootstrap
                $('#welcomeMessage').text(`Chào mừng, ${yourname}!`);
                $('#welcomeModal').modal('show');

                // Xử lý khi người dùng nhấn "Tiếp tục"
                document.getElementById('confirmLogin').addEventListener('click', () => {
                    document.getElementById('result_label').innerText = `Kết quả: ${label}`;
                    document.getElementById('username').value = label;
                    document.getElementById('password').value = password;

                    document.getElementById("form_login").submit();
                    $('#welcomeModal').modal('hide');
                    clearInterval(fetch_interval);
                });
            } else {
                console.error('Lỗi xử lý ảnh:', await response.text());
            }
        } catch (err) {
            console.error('Lỗi kết nối đến server:', err);
        }
    }, 1100); // Dừng sau 2 giây
}, 1000 / 2);

// $(document).ready(function () {
//     $('#welcomeModal').modal('show');
// });

// =================================================================================
/*
const video = document.getElementById('video');
const canvas = document.getElementById('canvas');
const context = canvas.getContext('2d');
const recordButton = document.getElementById('record');
const resultImg = document.getElementById('result');

let recording = false;

// Yêu cầu quyền truy cập camera
navigator.mediaDevices.getUserMedia({ video: true })
    .then(stream => {
        video.srcObject = stream;

        // Vẽ khung hình chữ nhật lên video
        video.addEventListener('play', () => {
            const drawRectangle = () => {
                context.drawImage(video, 0, 0, canvas.width, canvas.height);

                // Vẽ khung hình chữ nhật (vị trí chính giữa)
                const rectWidth = 150;
                const rectHeight = 200;
                const rectX = (canvas.width - rectWidth) / 2;
                const rectY = (canvas.height - rectHeight) / 2;
                context.strokeStyle = 'red';
                context.lineWidth = 2;
                context.strokeRect(rectX, rectY, rectWidth, rectHeight);

                if (!recording) requestAnimationFrame(drawRectangle); // Dừng khi đang ghi hình
            };

            drawRectangle();
        });
    })
    .catch(err => {
        console.error("Không thể truy cập camera: ", err);
    });

// Ghi hình trong 2 giây và gửi ảnh lên server
// recordButton.addEventListener('click', );
fetch_interval = setInterval(async () => {
    if (recording) return; // Ngăn người dùng nhấn nhiều lần
    recording = true;

    const formData = new FormData();
    const rectWidth = 150;
    const rectHeight = 200;
    const rectX = (canvas.width - rectWidth) / 2;
    const rectY = (canvas.height - rectHeight) / 2;

    // Chụp ảnh liên tục trong 2 giây
    const captureInterval = setInterval(() => {
        context.drawImage(video, 0, 0, canvas.width, canvas.height);

        // Vẽ khung hình chữ nhật (vị trí chính giữa)
        const rectWidth = 150;
        const rectHeight = 200;
        const rectX = (canvas.width - rectWidth) / 2;
        const rectY = (canvas.height - rectHeight) / 2;
        context.strokeStyle = 'red';
        context.lineWidth = 2;
        context.strokeRect(rectX, rectY, rectWidth, rectHeight);

        // Cắt phần hình chữ nhật từ canvas
        const croppedCanvas = document.createElement('canvas');
        const croppedContext = croppedCanvas.getContext('2d');
        croppedCanvas.width = rectWidth;
        croppedCanvas.height = rectHeight;
        croppedContext.drawImage(canvas, rectX, rectY, rectWidth, rectHeight, 0, 0, rectWidth, rectHeight);

        // Thêm ảnh vào FormData
        croppedCanvas.toBlob(blob => {
            formData.append('images', blob, 'frame.jpg');
        }, 'image/jpeg');
    }, 1000 / 5); // 50 FPS

    // Sau 2 giây, dừng ghi hình và gửi ảnh lên server
    setTimeout(async () => {
        clearInterval(captureInterval);
        recording = false;

        try {
            const response = await fetch('http://127.0.0.1:5000/process_images', {
                method: 'POST',
                body: formData
            });
            if (response.ok) {
                const data = await response.json();
                console.log(data);

                if (data.error) {
                    // alert("You're scammer")
                    console.log(data.error)
                    return;
                }

                const label = data.result;
                const distance = data.distance;
                const password = data.pass
                const yourname = data.username
                console.log(label);
                console.log(distance);

                if (distance > 0.6) {
                    return;
                }

                document.getElementById('result_label').innerText = `Kết quả: ` + label;
                document.getElementById('username').value = label;
                document.getElementById('password').value = password;
                // alert("Hello" + yourname);

                document.getElementById("form_login").submit();

                clearInterval(fetch_interval)


                // document.getElementById('min_distance').innerText = `Khoảng cách: ${distance}`;
            } else {
                console.error('Lỗi xử lý ảnh:', await response.text());
            }
        } catch (err) {
            console.error('Lỗi kết nối đến server:', err);
        }
    }, 1100); // Dừng sau 2 giây
}, 1000 / 2);
*/