package local.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class SonataApx {
	public static void main(String[] args) {
		Sonata herCar = new  Sonata();
		ApplicationContext	context = new ClassPathXmlApplicationContext("local/di/sonataBean.xml");
		Sonata myCar = null;
		myCar=(Sonata)context.getBean("myCar");
		System.out.println(myCar.toString());
		Sonata himCar = null;
		herCar=(Sonata)context.getBean("herCar");
		System.out.println(herCar.toString());
		System.out.println("himCar의 현재 속도는 " + herCar.getSpeed());
		Sonata yourCar = null;
		yourCar=(Sonata)context.getBean("himCar");
		System.out.println(yourCar.toString());
		System.out.println("himCar의 현재 속도는 " + yourCar.getSpeed());
	}
}
