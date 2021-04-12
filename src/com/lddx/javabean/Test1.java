package com.lddx.javabean;

import java.util.ArrayList;

public class Test1 {
    public static void main(String[] args) {
//        ArrayList list = new ArrayList();
//        list.add(1);
//        list.add("张三");
//        list.add(3000);
//        System.out.println(list);
        Emp p1 = new Emp();
        p1.setId(1);
        p1.setName("张三");
        p1.setSalary(30000.0);
        p1.setAge(28);

        Emp p2 = new Emp(2, "李四", 20000.0, 27);

        ArrayList<Emp> list = new ArrayList<>();
        list.add(p1);
        list.add(p2);

        System.out.println(list);
    }
}
