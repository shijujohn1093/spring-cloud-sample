package com.shiju.fooservice.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SomeController {

	@Value("${eureka.instance.metadataMap.instanceId}")
	private String instanceID;

    @GetMapping(value = "/hello")
    public ResponseEntity<String> someMethod() {
        return new ResponseEntity<>("Hello This is "+instanceID, HttpStatus.OK);
    }
}