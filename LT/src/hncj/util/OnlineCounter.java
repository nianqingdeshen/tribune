package hncj.util;

public class OnlineCounter {
	private static long onlineCounter=1;
	public static void addCounter() {
		onlineCounter++;
	}
	public static void reduceCounter() {
		onlineCounter--;
	}
	public static long getCounter() {
		return onlineCounter;
	}
}
