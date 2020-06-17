-- test variables
local energycoreSide = "right"
local fluxgateSide = "back"

os.loadAPI("lib/f")

local version = "0.25"

local autoOutputGate = 1
local curOutputGate = 500000

-- monitor
local mon, monitor, monX, monY

-- peripherals
local fluxgate
local energycore

monitor = f.periphSearch("monitor")
fluxgate = peripheral.wrap(fluxgateSide)
energycore = peripheral.wrap(energycoreSide)

if monitor == null then
	error("No valid monitor was found")
end

if fluxgate == null then
	error("No valid fluxgate was found")
end

if energycore == null then
	error("No valid energycore was found")
end

monX, monY = monitor.getSize()
mon = {}
mon.monitor,mon.X, mon.Y = monitor, monX, monY

--write settings tto config file
function save_config()
  sw = fs.open("config.txt", "w")   
  sw.writeLine(version)
  sw.writeLine(autoOutputGate)
  sw.writeLine(curOutputGate)
  sw.close()
end

--read settings from file
function load_config()
  sr = fs.open("config.txt", "r")
  version = sr.readLine()
  autoOutputGate = tonumber(sr.readLine())
  curOutputGate = tonumber(sr.readLine())
  sr.close()
end

-- 1st time? save our settings, if not, load our settings
if fs.exists("config.txt") == false then
  save_config()
else
  load_config()
end

local energy = energycore.getEnergyStored
if (energy/energycore.getMaxEnergyStored()) < 0.6 then
  fluxgate.setSignalLowFlow(100000)
else
  fluxgate.setSignalLowFlow(500000)
end
