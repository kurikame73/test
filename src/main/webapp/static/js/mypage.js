/**
 * 
 */

     // 마이페이지 li 클릭 시 팝업 열기
        document.querySelector('.support a').onclick = function(event) {
            event.preventDefault(); // 기본 링크 동작 막기
            document.getElementById("myPageModal").style.display = "flex";
        }

        // 팝업 닫기
        function closeModal() {
            document.getElementById("myPageModal").style.display = "none";
        }

        // 오버레이 클릭 시 팝업 닫기
        document.getElementById("myPageModal").onclick = function(event) {
            if (event.target == this) {
                closeModal();
            }
        }