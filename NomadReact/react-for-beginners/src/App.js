import { useEffect, useState } from "react";
function App() {
  const [loading, setLoading] = useState(true);
  const [coins, setCoins] = useState([]);
  const [dollar, setDollar] = useState("");
  useEffect(() => {
    fetch("https://api.coinpaprika.com/v1/tickers")
      .then((response) => response.json())
      .then((json) => {
        setCoins(json);
        setLoading(false);
      });
  }, []);
  const onChange = (event) => setDollar(event.target.value);
  return (
    <div>
      <h1>The Coins!({coins.length})</h1>
      <label htmlFor="dollar">Dollar </label>
      <input
        id="dollar"
        onChange={onChange}
        type="number"
        value={dollar}
        placeholder="Write dollar you have..."
      />
      {loading ? (
        <strong>Loading...</strong>
      ) : (
        <ul>
          {coins.map((coin) => (
            <li>
              {coin.name} ({coin.symbol}): {coin.quotes.USD.price} USD :{"\t"}
              {dollar / coin.quotes.USD.price} EA
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

export default App;
