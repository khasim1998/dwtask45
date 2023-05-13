%dw 2.0
output application/xml
//Here i removed the fields based on my o/p requirement
---
users:
(payload.users mapObject {
user:{
    //Here i removed the ssn field
 personal_information:  $.personal_information - "ssn",
 //here i removed the password field
 login_information: $.login_information - "password"
}
})