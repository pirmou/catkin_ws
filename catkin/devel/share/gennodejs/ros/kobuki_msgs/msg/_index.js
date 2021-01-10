
"use strict";

let VersionInfo = require('./VersionInfo.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let ExternalPower = require('./ExternalPower.js');
let ButtonEvent = require('./ButtonEvent.js');
let KeyboardInput = require('./KeyboardInput.js');
let DigitalOutput = require('./DigitalOutput.js');
let BumperEvent = require('./BumperEvent.js');
let DockInfraRed = require('./DockInfraRed.js');
let ControllerInfo = require('./ControllerInfo.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let SensorState = require('./SensorState.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let CliffEvent = require('./CliffEvent.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let Sound = require('./Sound.js');
let ScanAngle = require('./ScanAngle.js');
let MotorPower = require('./MotorPower.js');
let Led = require('./Led.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingResult = require('./AutoDockingResult.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingAction = require('./AutoDockingAction.js');

module.exports = {
  VersionInfo: VersionInfo,
  PowerSystemEvent: PowerSystemEvent,
  ExternalPower: ExternalPower,
  ButtonEvent: ButtonEvent,
  KeyboardInput: KeyboardInput,
  DigitalOutput: DigitalOutput,
  BumperEvent: BumperEvent,
  DockInfraRed: DockInfraRed,
  ControllerInfo: ControllerInfo,
  DigitalInputEvent: DigitalInputEvent,
  SensorState: SensorState,
  RobotStateEvent: RobotStateEvent,
  CliffEvent: CliffEvent,
  WheelDropEvent: WheelDropEvent,
  Sound: Sound,
  ScanAngle: ScanAngle,
  MotorPower: MotorPower,
  Led: Led,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingResult: AutoDockingResult,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingAction: AutoDockingAction,
};
