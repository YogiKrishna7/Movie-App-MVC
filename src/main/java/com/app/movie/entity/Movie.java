package com.app.movie.entity;

public class Movie {
	private int movieId;
	private String movieUrl;
	private String movieName;
	private String movieRating;
	private String releaseYear;
	private double duration;
	public Movie(int movieId, String movieUrl, String movieName, String movieRating, String releaseYear,
			double duration) {
		super();
		this.movieId = movieId;
		this.movieUrl = movieUrl;
		this.movieName = movieName;
		this.movieRating = movieRating;
		this.releaseYear = releaseYear;
		this.duration = duration;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieUrl() {
		return movieUrl;
	}
	public void setMovieUrl(String movieUrl) {
		this.movieUrl = movieUrl;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMovieRating() {
		return movieRating;
	}
	public void setMovieRating(String movieRating) {
		this.movieRating = movieRating;
	}
	public String getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(String releaseYear) {
		this.releaseYear = releaseYear;
	}
	public double getDuration() {
		return duration;
	}
	public void setDuration(double duration) {
		this.duration = duration;
	}



}
