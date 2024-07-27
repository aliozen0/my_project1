
"use strict";

let Skeleton2D = require('./Skeleton2D.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let Keypoint2Di = require('./Keypoint2Di.js');
let Skeleton3D = require('./Skeleton3D.js');
let Keypoint3D = require('./Keypoint3D.js');
let PlaneStamped = require('./PlaneStamped.js');
let Keypoint2Df = require('./Keypoint2Df.js');
let Object = require('./Object.js');
let BoundingBox2Df = require('./BoundingBox2Df.js');
let RGBDSensors = require('./RGBDSensors.js');
let PosTrackStatus = require('./PosTrackStatus.js');
let ObjectsStamped = require('./ObjectsStamped.js');
let BoundingBox2Di = require('./BoundingBox2Di.js');

module.exports = {
  Skeleton2D: Skeleton2D,
  BoundingBox3D: BoundingBox3D,
  Keypoint2Di: Keypoint2Di,
  Skeleton3D: Skeleton3D,
  Keypoint3D: Keypoint3D,
  PlaneStamped: PlaneStamped,
  Keypoint2Df: Keypoint2Df,
  Object: Object,
  BoundingBox2Df: BoundingBox2Df,
  RGBDSensors: RGBDSensors,
  PosTrackStatus: PosTrackStatus,
  ObjectsStamped: ObjectsStamped,
  BoundingBox2Di: BoundingBox2Di,
};
