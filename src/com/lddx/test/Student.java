package com.lddx.test;

public class Student {
    public int id;//学号
    public String name;//姓名

    //构造方法
    //无参构造
    public Student() {
        System.out.println("无参构造");
    }

    //有参构造
    public Student(int id, String name) {
        this.id = id;
        this.name = name;
    }
}
