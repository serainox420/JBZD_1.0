.class public Lcom/intentsoftware/addapptr/c/e;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/intentsoftware/addapptr/c/e;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 14
    return-void
.end method

.method static isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/intentsoftware/addapptr/c/e;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsingFastConnection()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 18
    sget-object v2, Lcom/intentsoftware/addapptr/c/e;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 23
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 24
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 26
    if-ne v3, v1, :cond_2

    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    if-nez v3, :cond_0

    .line 29
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 49
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 37
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 39
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 43
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 45
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 47
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 55
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 57
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 59
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 63
    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
