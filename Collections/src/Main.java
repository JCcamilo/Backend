import Service.DogService;

public class Main {
    public static void main(String[] args) {

        DogService dogService = new DogService();

        dogService.fabricateDogs();

        dogService.printDogs();
    }
}