$(function() {
    function t(t) {
        var e;
        try {
            e = $.datepicker.parseDate(a, t.value)
        } catch (n) {
            e = null
        }
        return e
    }
    var a = "dd/mm/yy",
        e = $("#field-tanggal_daftar").datepicker({
            defaultDate: "+1w",
            changeMonth: !0,
            numberOfMonths: 3
        }).on("change", function() {
            n.datepicker("option", "minDate", t(this))
        }),
        n = $("#field-tanggal_habis").datepicker({
            defaultDate: "+1w",
            changeMonth: !0,
            numberOfMonths: 3
        }).on("change", function() {
            e.datepicker("option", "maxDate", t(this))
        })
});