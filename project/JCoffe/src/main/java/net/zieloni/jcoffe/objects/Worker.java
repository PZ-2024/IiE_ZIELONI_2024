package net.zieloni.jcoffe.objects;

public class Worker {
    enum Role{
        WORKER,
        MANAGER,
        ADMIN
    }
    private String email;
    private String name;
    private String surname;
    private Role role;
    private WorkingHours workingHours;

    public Worker(String email, String name, String surname, Role role) {
        this.email = email;
        this.name = name;
        this.surname = surname;
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public WorkingHours getWorkingHours() {
        return workingHours;
    }

    public void setWorkingHours(WorkingHours workingHours) {
        this.workingHours = workingHours;
    }
}
