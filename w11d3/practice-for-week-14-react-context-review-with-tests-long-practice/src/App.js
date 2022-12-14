import SelectedCoffeeBean from "./components/SelectedCoffeeBean";
import coffeeBeans from "./mockData/coffeeBeans.json";

function App() {
  return (
    <div>
      <SelectedCoffeeBean >
        <div className="selected-coffee">
          <h1>Welcome to Coffee App</h1>
          <h2> </h2>
        </div> 
    </SelectedCoffeeBean>
    </div>
  );
}

export default App;