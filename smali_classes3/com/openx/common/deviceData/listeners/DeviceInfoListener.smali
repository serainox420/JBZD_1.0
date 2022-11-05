.class public interface abstract Lcom/openx/common/deviceData/listeners/DeviceInfoListener;
.super Ljava/lang/Object;
.source "DeviceInfoListener.java"


# virtual methods
.method public abstract canStorePicture()Z
.end method

.method public abstract createCalendarEvent(Lcom/openx/sdk/calendar/OXMCalendarEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCarrier()Ljava/lang/String;
.end method

.method public abstract getDeviceDensity()F
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceMacAddress()Ljava/lang/String;
.end method

.method public abstract getDeviceOrientation()I
.end method

.method public abstract getODIN1()Ljava/lang/String;
.end method

.method public abstract getScreenHeight()I
.end method

.method public abstract getScreenWidth()I
.end method

.method public abstract hasTelephony()Z
.end method

.method public abstract isPermissionGranted(Ljava/lang/String;)Z
.end method

.method public abstract isScreenLocked()Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract playVideo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract storePicture(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
