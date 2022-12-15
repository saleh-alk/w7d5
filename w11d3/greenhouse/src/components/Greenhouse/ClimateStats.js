import { useClimate } from '../../context/ClimateContext';
import './ClimateStats.css';


function ClimateStats() {
  const { humidity, temp } = useClimate();
  return (
    <div className="climate-stats">
      <div className="temperature">
        Temperature {temp}°F
      </div>
      <div className="humidity">
        Humidity {humidity}%
      </div>
    </div>
  )
}

export default ClimateStats;