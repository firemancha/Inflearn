import { useParams } from "react-router-dom";
import { useState, useEffect } from "react";

function Detail() {
  const [loading, setLoading] = useState(true);
  const [movie, setMovie] = useState([]);
  const { id } = useParams();
  const getMovie = async () => {
    const json = await (
      await fetch(`https://yts.mx/api/v2/movie_details.json?movie_id=${id}`)
    ).json();
    setMovie(json.data.movie);
    setLoading(false);
  };
  useEffect(() => {
    getMovie();
  }, []);
  return (
    <div>
      {loading ? (
        <h1>Loading...</h1>
      ) : (
        <div>
          <img src={movie.medium_cover_image} alt="" />
          <h1>{movie.title}</h1>
          <h3>Description</h3>
          <p>
            {movie.description_full.length > 235
              ? movie.description_full.slice(0, 232) + "..."
              : movie.description_full}
          </p>
          <h3>Info</h3>
          <div>
            <span style={{ margin: "20px" }}>
              <b>{movie.year}</b>year
            </span>
            <span style={{ margin: "20px" }}>
              (<b>{movie.rating}</b>/10)rating
            </span>
            <span style={{ margin: "20px" }}>
              <b>runtime: </b>
              {Math.floor(movie.runtime / 60)} H {movie.runtime % 60} M
            </span>
          </div>
          <h3>Genres</h3>
          <ul>
            {movie.genres.map((g) => (
              <li key={g}>{g}</li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
}

export default Detail;
