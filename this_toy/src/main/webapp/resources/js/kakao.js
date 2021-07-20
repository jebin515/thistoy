window.Kakao.init("4d1664dc6b548ee32ad033c3c31ce6dd");

function kakaoLogin() {
    Kakao.Auth.login({
        scope: 'profile_nickname, account_email, gender',
        success: function(res) {
            console.log(res);
            Kakao.API.request({
                url: '/v2/user/me',
                success: res => {
                    const kakao_account = res.kakao_account;
                    console.log(kakao_account);
                }
            });
        }
    });
}
// Kakao.init("4d1664dc6b548ee32ad033c3c31ce6dd"); //발급받은 키 중 javascript키를 사용해준다.
// console.log(Kakao.isInitialized()); // sdk초기화여부판단
// //카카오로그인
// function kakaoLogin() {
//     Kakao.Auth.login({
//     scope: 'profile_nickname, account_email, gender',
//       success: function (response) {
//         Kakao.API.request({
//           url: '/v2/user/me',
//           success: function (response) {
//         	  console.log(response)
//           },
//           fail: function (error) {
//             console.log(error)
//           },
//         })
//       },
//       fail: function (error) {
//         console.log(error)
//       },
//     })
//   }
// //카카오로그아웃  
// function kakaoLogout() {
//     if (Kakao.Auth.getAccessToken()) {
//       Kakao.API.request({
//         url: '/v1/user/unlink',
//         success: function (response) {
//         	console.log(response)
//         },
//         fail: function (error) {
//           console.log(error)
//         },
//       })
//       Kakao.Auth.setAccessToken(undefined)
//     }
//   }  
