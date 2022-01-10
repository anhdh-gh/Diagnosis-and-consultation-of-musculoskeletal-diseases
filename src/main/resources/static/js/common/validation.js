jQuery.validator.addMethod("notBlank", function (value, element) {
    return value.trim().length > 0;
}, "No space please and don't leave it empty");

jQuery.validator.addMethod("checkJson", function (value, element) {
    try {
        jQuery.parseJSON(value);
    } catch (e) {
        return false;
    }
    return true;
}, "Không đúng định dạng json");