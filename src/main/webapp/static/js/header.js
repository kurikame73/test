document.addEventListener('DOMContentLoaded', function() {
    var hamburgerMenu = document.querySelector('.hamburger-menu');
    var mobileMenu = document.querySelector('.mobile-menu');

    // 햄버거 메뉴 클릭 시 모바일 메뉴 토글
    hamburgerMenu.addEventListener('click', function() {
        mobileMenu.classList.toggle('active');
    });

    // 로그인 상태를 저장할 변수 (여기서는 예제용으로 false로 설정)
    var isLoggedIn = false; // 실제 로그인 상태를 여기에 맞게 설정

    var userMenu = document.querySelector('.user-menu');
    var mobileMenu = document.querySelector('.mobile-menu');

    // 로그인 상태에 따라 user-menu 및 mobile-menu 업데이트
    if (isLoggedIn) {
        userMenu.classList.add('logged-in');
        mobileMenu.classList.add('logged-in');
    } else {
        userMenu.classList.remove('logged-in');
        mobileMenu.classList.remove('logged-in');
    }

    // 로그아웃 버튼 클릭 시 처리 (로그아웃 로직을 여기에 추가)
    document.querySelector('.user-menu .logout a').addEventListener('click', function(event) {
        event.preventDefault();
        // 여기에 로그아웃 로직 추가
        location.reload(); // 예제에서는 페이지를 새로고침하여 상태 변경
    });

    document.querySelector('.mobile-menu .logout-mobile a').addEventListener('click', function(event) {
        event.preventDefault();
        // 여기에 로그아웃 로직 추가
        location.reload(); // 예제에서는 페이지를 새로고침하여 상태 변경
    });
});
