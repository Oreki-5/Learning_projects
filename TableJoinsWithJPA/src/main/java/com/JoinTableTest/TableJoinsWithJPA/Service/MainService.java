package com.JoinTableTest.TableJoinsWithJPA.Service;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Streamable;
import org.springframework.stereotype.Service;

import com.JoinTableTest.TableJoinsWithJPA.Models.Movie;
import com.JoinTableTest.TableJoinsWithJPA.Models.ResponseObject;
import com.JoinTableTest.TableJoinsWithJPA.Models.Showtime;
import com.JoinTableTest.TableJoinsWithJPA.Repository.MovieRepo;
import com.JoinTableTest.TableJoinsWithJPA.Repository.ShowtimeRepo;

@Service
public class MainService {

    @Autowired
    private MovieRepo movieRepo;

    @Autowired
    private ShowtimeRepo showtimeRepo;


    // public ResponseObject getMovies(long id){
    //     List<Movie> movies = new ArrayList<>();
    //     Streamable.of(movieRepo.findMovieById(id)).forEach(movies::add);
    //     ResponseObject responseObj = new ResponseObject();
    //     responseObj.setResponseObject(movies);
    //     return responseObj;
    // }

    // public ResponseObject getMoviesByTime(Instant time){
    //     List<Movie> movies = new ArrayList<>();
    //     Streamable.of(movieRepo.findMovieByShowtimes(time)).forEach(movies::add);
    //     ResponseObject responseObj = new ResponseObject();
    //     responseObj.setResponseObject(movies);
    //     return responseObj;
    // }


    // public ResponseObject getShowtimes(){
    //     List<Showtime> showtimes = new ArrayList<>();
    //     Streamable.of(showtimeRepo.findAll()).forEach(showtimes::add);
    //     ResponseObject responseObj = new ResponseObject();
    //     responseObj.setResponseObject(showtimes);
    //     return responseObj;
    // }
    
    public ResponseObject getShowtimes(){
        List<Movie> movies = new ArrayList<>();
        Streamable.of(movieRepo.findAll()).forEach(movies::add);
        ResponseObject responseObj = new ResponseObject();
        responseObj.setResponseObject(movies);
        return responseObj;
    }
}
