package com.JoinTableTest.TableJoinsWithJPA.Models;

import java.time.Instant;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

@Entity
@Table(name = "showtime")
public class Showtime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long show_id;

    @Column
    private Instant showTime;

    @OneToOne
    @JoinColumn(name = "movie_id", referencedColumnName = "movie_id")
    private Movie movie;

    public long getShowID() {
        return show_id;
    }


    public Instant getShowTime() {
        return showTime;
    }

    public void setShowTime(Instant value) {
        this.showTime = value;
    }

    // public Movie getMovie() {
    //     return movie;
    // }

    // public void setMovie(Movie movie) {
    //     this.movie = movie;
    // }
}
