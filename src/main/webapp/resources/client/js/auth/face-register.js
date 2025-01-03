// /*
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
                const rectWidth = 150; //100
                const rectHeight = 200; //133
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

// Ghi hình trong 30 giây và gửi ảnh lên server
recordButton.addEventListener('click', async () => {
    if (recording) return; // Ngăn người dùng nhấn nhiều lần
    recording = true;
    var startTime = Date.now();

    const formData = new FormData();
    const rectWidth = 150;
    const rectHeight = 200;
    const rectX = (canvas.width - rectWidth) / 2;
    const rectY = (canvas.height - rectHeight) / 2;

    // Chụp ảnh liên tục trong 30 giây
    const captureInterval = setInterval(() => {
        context.drawImage(video, 0, 0, canvas.width, canvas.height);

        // Vẽ khung hình chữ nhật (vị trí chính giữa)
        const rectWidth = 150; //100
        const rectHeight = 200; //133
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
            formData.append('images', blob, 'frame-${Date.now()}.jpg');
        }, 'image/jpeg');

        // Cập nhật thời gian ghi hình
        const timeLeft = 16 - Math.floor((Date.now() - startTime) / 1000);
        document.getElementById('time').textContent = `Đang ghi hình... ${timeLeft} giây còn lại`;
    }, 1000 / 2); // 50 FPS

    // Sau 16 giây, dừng ghi hình và gửi ảnh lên server
    setTimeout(async () => {
        clearInterval(captureInterval);
        recording = false;

        try {

            const sessionId = document.getElementById('sessionId').getAttribute('data-user-id');
            formData.append("id", sessionId);

            const response = await fetch('http://127.0.0.1:5000/save_images', {
                method: 'POST',
                body: formData
            });

            // Xử lý kết quả từ server
            const modalMessage = document.getElementById('modalMessage');
            const modalTitle = document.getElementById('faceRegisterModalLabel')
            if (response.ok) {
                const data = await response.json();
                modalTitle.textContent = 'Có lỗi xảy ra';
                if (data.status === 'success') {
                    // resultImg.src = data.result;
                    modalTitle.textContent = 'Đăng ký thành công';
                    modalMessage.textContent = 'Bạn đã đăng ký thành công chức năng xác nhận khuôn mặt!';
                } else {
                    modalMessage.textContent = `Lỗi: ${data.message}`;
                }
            } else {
                modalMessage.textContent = `Lỗi xử lý ảnh: ${await response.text()}`;
            }

            // Hiển thị modal thông báo
            $('#faceRegisterModal').modal('show');

        } catch (err) {
            // console.error('Lỗi kết nối đến server:', err);

            console.error('Lỗi kết nối đến server:', err);
            document.getElementById('faceRegisterModalLabel').textContent = 'Có lỗi xảy ra';
            document.getElementById('modalMessage').textContent = 'Không thể kết nối đến server.';
            $('#faceRegisterModal').modal('show');
        }
    }, 16000); // Dừng sau 16 giây
});

// Redirect to home page when modal is closed
$('#faceRegisterModal').on('hidden.bs.modal', function () {
    window.location.href = '/';
});

// $(document).ready(function () {
//     $('#welcomeModal').modal('show');
// });

// */
// =============================================================================================
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
                const rectWidth = 150; //100
                const rectHeight = 200; //133
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
recordButton.addEventListener('click', async () => {
    if (recording) return; // Ngăn người dùng nhấn nhiều lần
    recording = true;
    var startTime = Date.now();

    const formData = new FormData();
    const rectWidth = 150;
    const rectHeight = 200;
    const rectX = (canvas.width - rectWidth) / 2;
    const rectY = (canvas.height - rectHeight) / 2;

    // Chụp ảnh liên tục trong 2 giây
    const captureInterval = setInterval(() => {
        context.drawImage(video, 0, 0, canvas.width, canvas.height);

        // Vẽ khung hình chữ nhật (vị trí chính giữa)
        const rectWidth = 150; //100
        const rectHeight = 200; //133
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



        document.getElementById('time').textContent = `Đang ghi hình... ${31 - Math.floor((Date.now() - startTime) / 1000)} giây còn lại`;
    }, 1000 / 2); // 50 FPS

    // Sau 2 giây, dừng ghi hình và gửi ảnh lên server
    setTimeout(async () => {
        clearInterval(captureInterval);
        recording = false;

        try {

            const sessionId = document.getElementById('sessionId').getAttribute('data-user-id');
            formData.append("id", sessionId);

            const response = await fetch('http://127.0.0.1:5000/save_images', {
                method: 'POST',
                body: formData
            });
            if (response.ok) {
                const data = await response.json();
                const status = data.status;

                if (status === 'success') {
                    resultImg.src = data.result;
                    document.getElementById('status').textContent = 'Đã lưu ảnh thành công';
                } else {
                    console.error('Lỗi xử lý ảnh:', data.message);
                }
            } else {
                console.error('Lỗi xử lý ảnh:', await response.text());
            }
        } catch (err) {
            console.error('Lỗi kết nối đến server:', err);
        }
    }, 16000); // Dừng sau 2 giây
});
*/