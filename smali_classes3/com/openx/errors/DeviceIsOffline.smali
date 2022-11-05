.class public Lcom/openx/errors/DeviceIsOffline;
.super Lcom/openx/errors/AdError;
.source "DeviceIsOffline.java"


# static fields
.field private static final serialVersionUID:J = -0x20393d980a9d09ffL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/openx/errors/AdError;-><init>()V

    .line 14
    const-string v0, "Device is currently offline. Please check connection."

    invoke-super {p0, v0}, Lcom/openx/errors/AdError;->setMessage(Ljava/lang/String;)V

    .line 15
    return-void
.end method
