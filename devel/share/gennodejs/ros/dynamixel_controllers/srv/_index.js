
"use strict";

let TorqueEnable = require('./TorqueEnable.js')
let SetComplianceMargin = require('./SetComplianceMargin.js')
let SetCompliancePunch = require('./SetCompliancePunch.js')
let StopController = require('./StopController.js')
let RestartController = require('./RestartController.js')
let SetComplianceSlope = require('./SetComplianceSlope.js')
let SetSpeed = require('./SetSpeed.js')
let StartController = require('./StartController.js')
let SetTorqueLimit = require('./SetTorqueLimit.js')

module.exports = {
  TorqueEnable: TorqueEnable,
  SetComplianceMargin: SetComplianceMargin,
  SetCompliancePunch: SetCompliancePunch,
  StopController: StopController,
  RestartController: RestartController,
  SetComplianceSlope: SetComplianceSlope,
  SetSpeed: SetSpeed,
  StartController: StartController,
  SetTorqueLimit: SetTorqueLimit,
};
