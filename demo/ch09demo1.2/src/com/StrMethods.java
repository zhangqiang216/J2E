package com;

import java.util.Scanner;

public class StrMethods {
	public static String upper(String x) {
		return x.toUpperCase();
	}
	public static int length(String x) {
		return x.length();
	}
	public static int Sum(int a,int b) {
		
		return a+b;
	}
	public static void Reverse() {
		Scanner sc=new Scanner(System.in);
		String a=null;
		System.out.print("请输入任意字符串:");
		a=sc.nextLine();
		System.out.print("你输入的字符串的倒序为:");
		for(int i=a.length()-1;i>=0;i--) {
			System.out.print(a.charAt(i));
		}
	}
	

}
