package com.lddx.test;

public class Test {

    public static void main(String[] args) {
        Student stu = new Student();

        Student stu2 = new Student(3, "ddd");
        System.out.println(stu2.id + stu2.name);
    }

}
