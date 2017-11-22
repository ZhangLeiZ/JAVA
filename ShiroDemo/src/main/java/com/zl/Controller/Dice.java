package com.zl.Controller;

import javax.swing.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/9/29.
 */
public class Dice {
    public static Integer turnScore = 0;
    public static List<Integer> listplayer = new ArrayList<Integer>();
    public static  List<Integer> listcomputer = new ArrayList<Integer>();
    public static Integer rollDice(){
        Integer die1=(int)(1 + 6*Math.random());
        return die1;
    }

    public static String strDice(Integer num){
        if(num == 1)
            return " one";
        if(num == 2)
            return " two";
        if(num == 3)
            return " three";
        if(num == 4)
            return " four";
        if(num == 5)
            return " five";
        else
            return " six";
    }

    public static Integer round(String you) {

        Integer num1 = rollDice();
        Integer num2 = rollDice();
        System.out.println(you + "'s turn sum is:" + strDice(num1) + " +" + strDice(num2));
        if (num1 != 0 && num2 != 0) {
            if (num1 == 1 && num2 == 1) {
                turnScore = 25;
                System.out.println("roll again!");
            } else if (num1 == 1 && num2 != 1 || num1 != 1 && num2 == 1) {
                turnScore = 0;
            } else if (num1 == num2) {
                turnScore = (num1 + num2) * 2;
                System.out.println("roll again!");
            } else if (num1 != num2) {
                turnScore = num1 + num2;
            }
        }

        return turnScore;
    }
    public static void getPlaerAndComputer() {
        for (int j = 0; j < 3; j++) {
            System.out.println("Player's turn:");
            Integer turnScoreP = round("Player");
            if(turnScoreP == 0){
                System.out.println("TURN OVER! TURN sum is zero!");
                //System.exit(0);
            }
            listplayer.add(turnScoreP);
            if (listplayer.size() >= 2) {
                for (int a=0;a<listplayer.size()-1;a++) {
                    turnScore += listplayer.get(a);
                    if (turnScore >= 100) {
                        System.out.println("*****PLAYER WINS!!*****");
                    }
                }
                System.out.println("Player turn sum is:" + turnScoreP + " and game sum would be:" + (turnScore));
            }else{
                System.out.println("Player turn sum is:" + turnScoreP);
            }


            //------------------------------------------------------------

            System.out.println("Computer's turn:");
            Integer turnScoreC = round("Computer");
            if(turnScoreC == 0){
                System.out.println("TURN OVER! TURN sum is zero!");
                //System.exit(0);
            }
            listcomputer.add(turnScoreC);
            if(listcomputer.size() >= 2) {
                for (int c=0;c<listcomputer.size()-1;c++) {
                    turnScore += listcomputer.get(c);
                    if (turnScore >= 100) {
                        System.out.println("*****COMPUTER WINS!!*****");
                    }
                }
                System.out.println("Computer turn sum is:" + turnScoreC + " and game sum would be:" + (turnScore));
            }else{
                System.out.println("Computer turn sum is:" + turnScoreC);


            }


        }
    }

    public static void main(String[] args) {
        getPlaerAndComputer();
    }
}
