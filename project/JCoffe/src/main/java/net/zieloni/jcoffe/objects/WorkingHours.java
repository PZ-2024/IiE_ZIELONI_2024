package net.zieloni.jcoffe.objects;

import java.time.Duration;
import java.time.LocalTime;

public class WorkingHours {
    private LocalTime startHour;
    private LocalTime endHour;

    public String duration(){
        Duration duration = Duration.between(startHour,endHour);

        long hours = duration.toHours();
        long minutes = duration.toMinutes() % 60;

        // Print the time difference
        return "Czas pracy: " + hours + " godzin, " + minutes + " minut";
    }
}
