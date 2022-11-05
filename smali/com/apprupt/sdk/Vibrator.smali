.class public Lcom/apprupt/sdk/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/Vibrator$Wrapper;,
        Lcom/apprupt/sdk/Vibrator$Dummy;,
        Lcom/apprupt/sdk/Vibrator$API;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/apprupt/sdk/Vibrator$API;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/apprupt/sdk/Vibrator$Wrapper;

    invoke-direct {v1, v0, v2}, Lcom/apprupt/sdk/Vibrator$Wrapper;-><init>(Landroid/os/Vibrator;Lcom/apprupt/sdk/Vibrator$1;)V

    move-object v0, v1

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/apprupt/sdk/Vibrator$Dummy;

    invoke-direct {v0, v2}, Lcom/apprupt/sdk/Vibrator$Dummy;-><init>(Lcom/apprupt/sdk/Vibrator$1;)V

    goto :goto_0
.end method
