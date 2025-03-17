package com.email.email_generator;


import lombok.Data;

@Data
public class EmailRequest {
    private String emailContent;
    private String tone;
}
