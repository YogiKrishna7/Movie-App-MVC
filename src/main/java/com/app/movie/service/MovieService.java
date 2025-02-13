package com.app.movie.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.app.movie.entity.MovieEntity;

@Service
public class MovieService {
    private List<MovieEntity> movieList = new ArrayList<>();

    public MovieService() {
        movieList.add(new MovieEntity(
                1,
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS2uZIj7-mLfVp1TYvfTEPBMGL5fCn8Hm40LEKFPPE6BHVIPA7fDyUM9e5zXKvyWdUyqzXOEg",
                "Kung Fu Panda", "A story about a panda who becomes a kung fu master.", 90, "2008-06-06", "Animation/Action",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                2,
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSrEnW4Qes8q3NiwQS3grDaqN5ENSQdFTik1C2fdEeSAXTDQAzs",
                "Kung Fu Panda 2", "The panda faces a new villain threatening his homeland.", 140, "2011-05-26", "Animation/Action",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                3,
                "https://lumiere-a.akamaihd.net/v1/images/image_0e6ad10d.jpeg?region=0%2C0%2C1400%2C2100",
                "Kung Fu Panda 3", "Po reunites with his long-lost father.", 120, "2015-01-29", "Animation/Action",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                4,
                "https://assets.gadgets360cdn.com/pricee/assets/product/202311/Kung-Fu-Panda-4-Poster_1700827659.jpg",
                "Kung Fu Panda 4", "Po embarks on a new adventure.", 90, "2024-03-08", "Animation/Action",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                5,
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTJOxjD49uzIVF4gBVI_eopbb0AS53-Ta-wExU2C8s8hlDN5UQs-fXihh4AYxJnwh2ShJNj",
                "Die Hard 4", "John McClane faces cyber terrorists.", 90, "2007-06-27", "Action/Thriller",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                6,
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQUuM488ffxIbhzFEUA-rimo81Gmbnfo1R1n_XH8ga09-Fy5W2rG3NcKESX0UorZrXEBVzq_Q",
                "Mr. Bean", "Comical adventures of Mr. Bean.", 90, "2008-01-01", "Comedy",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                7,
                "https://m.media-amazon.com/images/I/91vIHsL-zjL.jpg",
                "Interstellar", "A journey through space and time.", 90, "2011-11-07", "Sci-Fi/Drama",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                8,
                "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcROqmrMVzOXm78bp2aJec_ZFj5qXEnRLZAiCFXTxygy7w_f1d-k2GJ0kwuqhRVxIUkut4vSJQ",
                "Alien", "A crew encounters an alien lifeform.", 90, "1967-05-25", "Horror/Sci-Fi",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                9,
                "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRNF36FavofYcx1JFn6em8xKWcHYqu5dBg-TeB_I_FWIwrqsw2WxE3BDy13Y6q9XavceWwYGA",
                "Aliens", "Ellen Ripley returns to face more aliens.", 120, "1978-07-18", "Horror/Sci-Fi",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                10,
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTMQp_9_bE2JOeH4JtApxU0rDthouxCNR_TvZ3c-mb8FROFwS3PWXTLeLUEpnBA7TpT7k3x",
                "Cars", "A race car learns the value of friendship.", 120, "2012-06-24", "Animation/Family",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                11,
                "https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/chameleon/title-movie/244665_open_season_2006_1400x2100.jpg?itok=YLszgqmY",
                "Open Season", "A domesticated grizzly bear meets a wild deer.", 90, "2011-09-29", "Animation/Comedy",
                true, new Date(), null, "Admin", null));

        movieList.add(new MovieEntity(
                12,
                "https://lumiere-a.akamaihd.net/v1/images/p_walle_19753_69f7ff00.jpeg?region=0%2C0%2C540%2C810",
                "Wall E", "A robot left on Earth finds love.", 140, "2006-06-23", "Animation/Sci-Fi",
                true, new Date(), null, "Admin", null));
    }

    public List<MovieEntity> getAllMovies() {
        return movieList;
    }

    public MovieEntity getMovieById(int movieId) {
        for (MovieEntity movie : movieList) {
            if (movie.getId() == movieId) {
                return movie;
            }
        }
        return null;
    }
}