.class Landroid/support/v4/app/g;
.super Ljava/lang/Object;
.source "ActivityManagerCompatKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public static a(Landroid/app/ActivityManager;)Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0
.end method
