import { useCoffeeContext } from "../context/CoffeeContext";


const SelectedCoffeeBean = () => {

  const {coffeeBean, setCoffeeBean} = useCoffeeContext();
  return (
    <div className="selected-coffee">
      <h2>Set Bean</h2>
      {coffeeBean.name}
    </div>
  );

}

export default SelectedCoffeeBean;
