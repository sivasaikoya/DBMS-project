package com.dbms.controllers;

import java.util.*;

public class otpGenerator{

	
	    public static void main(String[] args)
	    {
	        // Length of your password as I have choose
	        // here to be 8
	        int length = 4;
	        System.out.println(geek_Password(length));
	    }

	    // This our Password generating method
	    // We have use static here, so that we not to
	    // make any object for it
	    public static char[] geek_Password(int len)
	    {
	        

	        String numbers = "0123456789";



	        String values = numbers ;

	        // Using random method
	        Random rndm_method = new Random();

	        char[] password = new char[len];

	        for (int i = 0; i < len; i++)
	        {
	           
	            password[i] =
	                    values.charAt(rndm_method.nextInt(values.length()));

	        }
	        return password;
	    }
	}

