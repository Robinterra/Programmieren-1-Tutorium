package controller;

import java.io.IOException;
import java.util.Scanner;
import java.util.Timer;

import controller.input.Handler;
import controller.input.ListenerFrame;
import model.board.Board;
import model.snake.Head;
import model.snake.SnakeFactory;

/**
 * Main class of this project. The program is initialized here
 * 
 * @author David Gemen
 * @author Andriyan Lapychak
 */
class Main {

    private static Timer timer = new Timer();

    /**
     * Main function, program starts here
     * 
     * @param args command line arguments
     * @throws IOException
     */
    public static void main(String[] args) throws IOException {

        // collect input
        Scanner scanner = new Scanner(System.in);
        System.out.print("Breite des Spielfeldes: ");
        int width = scanner.nextInt();
        System.out.print("Höhe des Spielfeldes: ");
        int height = scanner.nextInt();
        System.out.print("Frame-Rate (in ms): ");
        int frameRate = scanner.nextInt();
        scanner.close();

        // create snake and board
        Head snake = SnakeFactory.createSnake(3);
        Board board = new Board(width, height);

        // create key event listener
        new ListenerFrame(new Handler(snake));

        // create and schedule controller
        Controller controller = new Controller(board, snake);
        timer.scheduleAtFixedRate(controller, 0, frameRate);
    }

    /**
     * Quits the program after printing the passed string
     * 
     * @param message the message to print before the program terminates
     */
    public static void exitGame(String message) {
        timer.cancel();
        timer.purge();
        System.out.println(message);
        System.exit(0);
    }
}