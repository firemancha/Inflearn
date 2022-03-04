import React from "react";
import PropTypes from "prop-types";

function Food({ rating, name, picture }) {
  return (
    <div>
      <h2>I like {name}</h2>
      <h4>{rating}/5.0</h4>
      <img src={picture} alt="" width="450" />
    </div>
  );
}

const foodILike = [
  {
    id: 1,
    name: "kimchi",
    image:
      "https://img.koreatimes.co.kr/upload/newsV2/images/202106/dd467848c7e349e9b456fea85ff36c1f.jpg/dims/resize/740/optimize",
    rating: 5.0,
  },
  {
    id: 2,
    name: "ramyun",
    image:
      "https://upload.wikimedia.org/wikipedia/commons/f/fb/Ramyun_cooking_image.png",
    rating: 4.9,
  },
  {
    id: 3,
    name: "samgyeopsal",
    image:
      "http://www.gildedgingerbread.com/wp-content/uploads/2017/08/Samgyeopsal-1.jpg",
    rating: 4.8,
  },
  {
    id: 4,
    name: "chukumi",
    image: "https://blogthatcake.files.wordpress.com/2013/08/113.jpg",
    rating: 4.7,
  },
  {
    id: 5,
    name: "kimbap",
    image:
      "https://img-global.cpcdn.com/recipes/3369e901d707eda6/1200x630cq70/photo.jpg",
    rating: 4.8,
  },
];

Food.propTypes = {
  name: PropTypes.string.isRequired,
  picture: PropTypes.string.isRequired,
  rating: PropTypes.number,
};

function App() {
  return (
    <div>
      {foodILike.map((dish) => (
        <Food
          key={dish.id}
          name={dish.name}
          picture={dish.image}
          rating={dish.rating}
        />
      ))}
    </div>
  );
}

export default App;
