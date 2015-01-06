function getBirth(value) {
            if (!value) {
                return "";
            }
            var year = "1900";
            var month = "1";
            var day = "1";
            if (value.length == 15) {
                year = "19" + value.substr(6, 2);
                month = value.substr(8, 2);
                day = value.substr(10, 2);
            } else if (value.length == 18) {
                year = value.substr(6, 4);
                month = value.substr(10, 2);
                day = value.substr(12, 2);
            } else {
                return "";
            }
            newDate = new Date(year, month - 1, day);
            if (newDate.toString() == "NaN") {
                            return "";
            }
            else {
                return year + "-" + month + "-" + day;
            }
        }



        function getSex(value) {
            if (!value) {
                return "未知";
            } else if (value.length == 15) {
                return parseInt(value.substr(14, 1),10)%2?"男":"女";
            } else if (value.length == 18) {
                return parseInt(value.substr(17, 1),10)%2?"男":"女";
            } else {
               return "未知";
            }
       }