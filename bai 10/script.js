var danhsachbaihat = [
            {
                id : 1,
                ten :"Nếu Như Ta Chẳng Còn - MCK (ft. A$AP Ướt Mi)",
                duongDanAnh : " neunhutachangcon.png",
                duongDanYoutube : "https://www.youtube.com/embed/W9RBSncxrCc?si=GBTFA8fmsFnlIK9m"
            },
            {
                id : 2,
                ten : "Mắt Môi Tay Chân - MCK",
                duongDanAnh : "matmoitaychan.png",
                duongDanYoutube : "https://www.youtube.com/embed/_m2bFhFrAwQ?si=juSKfCob7QxX3fet"
            },
            {
                id : 3,
                ten : "Kẻ Say Tình - Quốc Thiên",
                duongDanAnh : "kesaytinh.png",
                duongDanYoutube : "https://www.youtube.com/embed/F_cUk80nn-s?si=nTII2-Nj"
            },
            {
                id : 4,
                ten : "Kẻ Say Tình 2 - Quốc Thiên",
                duongDanAnh : "kesaytinh2.png",
                duongDanYoutube : "https://www.youtube.com/embed/uUQG8sk7cLs?si=_P9FXtEDiVyrd1Ql"
            },
            
        ]
        function chonBai(id){
            for (let i = 0; i < danhsachbaihat.length; i++){
                if(danhsachbaihat[i].id == id){
                    document.getElementsByClassName("video")[0].src = danhsachbaihat[i].duongDanYoutube;
                }
            }
        }