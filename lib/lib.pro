TEMPLATE  = subdirs

SUBDIRS  += zcore

SUBDIRS  += zgui

SUBDIRS  += zcameraacquisition
zcameraacquisition.depends = zcore

SUBDIRS  += zcameracalibration
zcameracalibration.depends = zcore

SUBDIRS  += zcalibratedcamera
zcalibratedcamera.depends = zcameraacquisition zcameracalibration

SUBDIRS  += zcameracalibrator
zcameracalibrator.depends = zcalibratedcamera zcameraacquisition zcameracalibration

SUBDIRS  += zstructuredlight
zstructuredlight.depends = zcore zcalibratedcamera zcameraacquisition zcameracalibration zcameracalibrator

!android:{
    SUBDIRS  += zpointcloud
    zpointcloud.depends = zcalibratedcamera zcameraacquisition zcameracalibration
}
