function boardWriteAjax(){
    let params = $('#writeFrom').serialize();

    if(dataCheck($('#title').val())){
        alert("제목을 입력해주세요.");
        return false;
    }else if(dataCheck($('#content').val())){
        alert(" 내용을 입력해주세요.");
        return false;
    }else{
        $.ajax({
            url: '/board/insertBoard',
            type: 'POST',
            data: params,
            contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
            dataType: 'text',
            success: function (result) {
                if(result > 0){
                    alert("게시글을 등록하였습니다.");
                    location.href = "/";
                }else{
                    alert("게시글 등록에 실패하였습니다.");
                    return false;
                }
            },
            error: function (error){
                alert("게시글 등록에 실패하였습니다.");
                return false;
            }
        });
    }
}

function boardEidtAjax(){
    let params = $('#writeFrom').serialize();

    if(dataCheck($('#title').val())){
        alert("제목을 입력해주세요.");
        return false;
    }else if(dataCheck($('#content').val())){
        alert(" 내용을 입력해주세요.");
        return false;
    }else{
        $.ajax({
            url: '/board/updateBoard',
            type: 'POST',
            data: params,
            contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
            dataType: 'text',
            success: function (result) {
                if(result > 0){
                    alert("게시글을 수정하였습니다.");
                    location.href = "/";
                }else{
                    alert("게시글 수정에 실패하였습니다.");
                    return false;
                }
            },
            error: function (error){
                alert("게시글 수정에 실패하였습니다.");
                return false;
            }
        });
    }
}

function boardDeleteAjax(boardid){
    if(confirm("삭제하시겠습니까?")){
        $.ajax({
            url: '/board/deleteBoard',
            type: 'POST',
            data: {'boardid' : boardid},
            contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
            dataType: 'text',
            success: function (result) {
                if(result > 0){
                    alert("게시글을 삭제하였습니다.");
                    location.href = "/";
                }else{
                    alert("게시글 삭제에 실패하였습니다.");
                    return false;
                }
            },
            error: function (error){
                alert("게시글 삭제에 실패하였습니다.");
                return false;
            }
        });
    }else{
        return false;
    }
}


function dataCheck(data){
    if(data == '' || data == 'undefine' || data == null){
        return true;
    }else {
        return false;
    }
}