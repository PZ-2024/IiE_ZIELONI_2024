package net.zieloni.jcoffe.objects;

import java.util.Date;

public class Order {
    enum Status{
        NEW,
        IN_PROGRESS,
        COMPLETED
    }
    enum Priority{
        LOW,
        NORMAL,
        HIGH
    }
    private Date createdAt;
    private Status status;
    private Priority priority;
    private Worker worker;
    private Product[] content;

    public Order(Status status, Priority priority, Worker worker, Product[] content) {
        this.createdAt = new Date();
        this.status = status;
        this.priority = priority;
        this.worker = worker;
        this.content = content;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Priority getPriority() {
        return priority;
    }

    public void setPriority(Priority priority) {
        this.priority = priority;
    }

    public Worker getWorker() {
        return worker;
    }

    public void setWorker(Worker worker) {
        this.worker = worker;
    }

    public Product[] getContent() {
        return content;
    }

    public void setContent(Product[] content) {
        this.content = content;
    }
}
