package de.hfu;

import java.util.Scanner;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
		System.out.println("Input: ");
		Scanner scanner = new Scanner(System.in);
		String input = scanner.nextLine();
		System.out.println(input.toUpperCase());
    }
}
