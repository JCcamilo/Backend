import Service.DogService;

public class Main {
    public static void main(String[] args) {

        DogService ds = new DogService();

        ds.fabricateDogs();
        ds.printDogs();

        ds.freeDog();
        ds.printDogs();
    }
}