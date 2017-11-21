package com.zl.Java8;

import com.zl.Interface.Java8Interface;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

/**
 * Created by Administrator on 2017/11/1.
 */
public class Java8Tester2{
    public static void main(String args[]){



        Java8Tester2 tester = new Java8Tester2();
        Java8Interface Options =  (a, b) -> a + b;
        int s = Options.Options(3,6);
        System.out.println(s);

        // 类型声明
        MathOperation addition = (int a, int b) -> a + b;

        // 不用类型声明
        MathOperation subtraction = (a, b) -> a - b;

        // 大括号中的返回语句
        MathOperation multiplication = (int a, int b) -> { return a * b; };

        // 没有大括号及返回语句
        MathOperation division = (int a, int b) -> a / b;

        System.out.println("10 + 5 = " + tester.operate(10, 5, addition));
        System.out.println("10 - 5 = " + tester.operate(10, 5, subtraction));
        System.out.println("10 x 5 = " + tester.operate(10, 5, multiplication));
        System.out.println("10 / 5 = " + tester.operate(10, 5, division));

        // 不用括号
        GreetingService greetService1 = message ->
                System.out.println("Hello " + message);

        // 用括号
        GreetingService greetService2 = (message) ->
                System.out.println("Hello " + message);

        greetService1.sayMessage("Runoob");
        greetService2.sayMessage("Google");
    }

   public void Test(){
        String str = "dddd";
       List<String> list = new ArrayList<String>();
       Predicate predicate = s -> s.equals(str);
       
   }

    interface MathOperation {
        int operation(int a, int b);
    }

    interface GreetingService {
        void sayMessage(String message);
    }

    private int operate(int a, int b, MathOperation mathOperation){
        return mathOperation.operation(a, b);
    }
}