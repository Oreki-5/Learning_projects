package com.JoinTableTest.TableJoinsWithJPA.Controller;

import java.time.Instant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.JoinTableTest.TableJoinsWithJPA.Models.ResponseObject;
import com.JoinTableTest.TableJoinsWithJPA.Service.MainService;

@RestController
@RequestMapping("/")
public class Controller {

    @Autowired
    private MainService mainService;

    @GetMapping("/showtimes")
    public ResponseObject getMovies(){
        return mainService.getShowtimes();
    }
    // @GetMapping("/showtimes")
    // public ResponseObject getMovies(@RequestParam long id){
    //     return mainService.getMovies(id);
    // }
    // @GetMapping("/showtimes/time")
    // public ResponseObject getMoviesByTime(@RequestParam Instant time){
    //     return mainService.getMoviesByTime(time);
    // }
}
