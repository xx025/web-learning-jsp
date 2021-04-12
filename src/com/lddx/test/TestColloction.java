package com.lddx.test;

import java.util.ArrayList;
import java.util.Iterator;

public class TestColloction {
    public static void main(String[] args) {
        //Java中的集合=容器
        //数组也是容器

        //ArrayList 线性集合，有序的放取可以有重复数据

        // HashSet  数据是无序的，不能放重复数据
        // HashMap  一个键值对的方式存取数据key，value

        ArrayList<String> list = new ArrayList<String>();

        list.add("a");
        list.add("b");
        list.add("c");
        list.add("a");
        System.out.println(list);//[a, b, c, a]

        System.out.println(list.get(1)); //获取集合中的数据

        //删除集合中的数据
        list.remove(1);
        list.set(2, "m");
        System.out.println(list);
        list.remove("m");//直接删除元素
        list.add("hello");
        System.out.println(list);


        //*输出遍历数组中的数据

        //方式1：通过for循环根据下标依次输出所有数据
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));

        }
        //方式2：通过for-each循环取数据
        for (String s :
                list) {
            System.out.println(s);
        }


        System.out.println("**********迭代器**********");
        //方式3 通过迭代器获取数据
        //将集合中的数据放在迭代器中
        Iterator<String> it = list.iterator();

        //it.next()
        //it.hasNext()
        while (it.hasNext()) {
            System.out.println(it.next());
        }

    }
}
