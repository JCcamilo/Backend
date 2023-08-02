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

    public Dog enterDog() {

        System.out.println("Ingrese la raza");
        String breed = scan.next();

        return new Dog(breed);
    }

    public ArrayList fabricateDogs() {

        boolean verify;

        do {
            hound.add(enterDog());

            System.out.println("¿Desea ingresar más razas? (Y/N)");
            verify = scan.next().equalsIgnoreCase("Y");
        } while (verify);

        return hound;
    }

    /**
     * Releases the first encounter of dog with the same breed
     */
    public void freeDog() {
        System.out.println("\nIngrese la raza de perro que desea eliminar");
        String breedToRemove = scan.next();

        for (int i = 0; i < hound.size(); i++) {
            if (hound.get(i).getBreed().equals(breedToRemove)) {
                hound.remove(i);
                System.out.println("Se ha liberado a " + breedToRemove);
                return ;
            }
        }
        System.out.println("La raza " + breedToRemove + " no existe");
    }

    public void printDogs() {
        System.out.println("Las razas de perros son:");
        for (Dog dog : hound) {
            System.out.println(dog);
        }
        System.out.println("La cantidad total de razas es " + hound.size());
    }

}
