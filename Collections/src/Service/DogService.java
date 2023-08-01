package Service;

import Entities.Dog;
import java.util.ArrayList;
import java.util.Scanner;

public class DogService {

    Scanner scan;
    ArrayList<Dog> hound;

    public DogService(){
        this.scan = new Scanner(System.in).useDelimiter("\n");
        this.hound = new ArrayList();
    }

    public Dog createDog() {

        System.out.println("Ingrese la raza");
        String breed = scan.next();

        return new Dog(breed);
    }

    public ArrayList fabricateDogs() {

        boolean verify;

        do {
            hound.add(createDog());

            System.out.println("¿Desea ingresar más razas? (Y/N)");
            verify = scan.next().equalsIgnoreCase("Y");
        } while (verify);

        return hound;
    }

    public void printDogs() {
        System.out.println("Las razas de perros son:");
        for (Dog dog : hound) {
            System.out.println(dog);
        }
        System.out.println("La cantidad total de razas es " + hound.size());
    }

}
