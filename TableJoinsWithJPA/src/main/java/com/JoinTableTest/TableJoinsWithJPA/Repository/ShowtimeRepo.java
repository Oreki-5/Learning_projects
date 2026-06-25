package com.JoinTableTest.TableJoinsWithJPA.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;
import com.JoinTableTest.TableJoinsWithJPA.Models.Movie;
import com.JoinTableTest.TableJoinsWithJPA.Models.Showtime;

public interface ShowtimeRepo extends JpaRepository<Showtime, Long>{
    
}
