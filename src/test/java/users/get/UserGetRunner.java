package users.get;

import com.intuit.karate.junit5.Karate;

public class UserGetRunner {
    @Karate.Test
    Karate userGet(){
        //en el run meto el nombre si quiere ejecutar un solo feature
        return Karate.run().relativeTo(getClass());
    }
}
