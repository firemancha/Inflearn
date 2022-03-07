import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import About from "./routes/About";
import Home from "./routes/Home";
import Navigation from "./components/Navigation";
import Detail from "./components/Detail";
import "./App.css";

function App() {
  return (
    <Router>
      <Navigation />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<About />} />
        <Route path="/movie-detail" element={<Detail />} />
      </Routes>
    </Router>
  );
}

export default App;
