window.onload = function () {

    var socket = new WebSocket("ws://localhost:8080/server");


    //открытие соединения
    socket.onopen = function (event) {
        tm1.innerHTML = "соединение установлено "
    }

    //закрытие соединения
    socket.onclose = function (event) {
        if (event.wasClean) {
            tm1.innerHTML = "соединение закрыто";
        } else {
            tm1.innerHTML = "соединение как-то закрыто";
        }
        tm1.innerHTML += " код : " + event.code + "\n" + "причина:" + event.reason;
    }

    //возникновение ошибки
    socket.onerror = function (event) {
        tm1.innerHTML = "ошибка:" + event.message;


    }
    //получение сообщения
    socket.onmessage = function (event) {
        var data = JSON.parse(event.data);

        var $message;
        $message = $($('.message_template').clone().html());
        $message.addClass("left appeared").find('.text').html("пришли данные от " + data.name + "\n сообщение : " + data.message);
        $('.messages').append($message);

    }

    //отправка сообщения
    document.forms["form"].onsubmit = function () {
        var letter = {
            name: this.name.value,
            message: this.message.value
        }

        socket.send(JSON.stringify(letter));
        return false;
    }


}