import React from "react";

function Food({ name, picture }) {
  return (
    <div>
      <h2>I like {name}</h2>;
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
  },
  {
    id: 2,
    name: "ramyun",
    image:
      "https://upload.wikimedia.org/wikipedia/commons/f/fb/Ramyun_cooking_image.png",
  },
  {
    id: 3,
    name: "samgyeopsal",
    image:
      "http://www.gildedgingerbread.com/wp-content/uploads/2017/08/Samgyeopsal-1.jpg",
  },
  {
    id: 4,
    name: "chukumi",
    image: "https://blogthatcake.files.wordpress.com/2013/08/113.jpg",
  },
  {
    id: 5,
    name: "kimbap",
    image:
      "https://img-global.cpcdn.com/recipes/3369e901d707eda6/1200x630cq70/photo.jpg",
  },
];

function App() {
  return (
    <div>
      {foodILike.map((dish) => (
        <Food key={dish.id} name={dish.name} picture={dish.image} />
      ))}
    </div>
  );
}

export default App;
