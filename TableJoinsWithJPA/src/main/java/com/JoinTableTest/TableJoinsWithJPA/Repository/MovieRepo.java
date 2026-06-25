package com.JoinTableTest.TableJoinsWithJPA.Repository;

import java.time.Instant;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.JoinTableTest.TableJoinsWithJPA.Models.Movie;
import com.JoinTableTest.TableJoinsWithJPA.Models.Showtime;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface MovieRepo extends JpaRepository<Movie, Long> {
    // public List<Movie> findMovieById(long id);

    // public List<Movie> findMovieByShowtimes(Instant time);

    // @Query(nativeQuery = true, value="SELECT  m.* FROM movie m left join showtime s on m.movie_id=s.movie_id group by s.show_time, m.movie_id order by s.show_time")
    // public List<Movie> findShoees();

}
