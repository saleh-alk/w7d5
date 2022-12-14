import SelectedCoffeeBean from "./components/SelectedCoffeeBean";
import coffeeBeans from "./mockData/coffeeBeans.json";
import { useCoffeeContext } from "./context/CoffeeContext";
import SetCoffeeBean from "./components/SetCoffeeBean";

function App() {
  return (
    <div>
      <h1>Welcome to Coffee App</h1>
      {/* passing props on line 11 below */}
      <SetCoffeeBean coffeeBeans={coffeeBeans} />
      <SelectedCoffeeBean />
    </div>
  );
}

export default App;
