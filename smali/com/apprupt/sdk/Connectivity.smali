.class Lcom/apprupt/sdk/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# instance fields
.field private final a:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 32
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    goto :goto_0
.end method

.method public static a(II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 155
    if-ne p0, v0, :cond_0

    .line 199
    :goto_0
    :pswitch_0
    return v0

    .line 157
    :cond_0
    if-nez p0, :cond_1

    .line 158
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 196
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 160
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 162
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 164
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 166
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 168
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 170
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 190
    goto :goto_0

    :cond_1
    move v0, v1

    .line 199
    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

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

.method public b()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Connectivity;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 123
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 79
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    const-string v0, "WIFI"

    goto :goto_0

    .line 81
    :cond_1
    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 84
    :pswitch_0
    const-string v0, "1xRTT"

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v0, "CDMA"

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    .line 90
    :pswitch_3
    const-string v0, "EVDO_0"

    goto :goto_0

    .line 92
    :pswitch_4
    const-string v0, "EVDO_A"

    goto :goto_0

    .line 94
    :pswitch_5
    const-string v0, "GPRS"

    goto :goto_0

    .line 96
    :pswitch_6
    const-string v0, "HSDPA"

    goto :goto_0

    .line 98
    :pswitch_7
    const-string v0, "HSPA"

    goto :goto_0

    .line 100
    :pswitch_8
    const-string v0, "HSUPA"

    goto :goto_0

    .line 102
    :pswitch_9
    const-string v0, "UMTS"

    goto :goto_0

    .line 108
    :pswitch_a
    const-string v0, "EHRPD"

    goto :goto_0

    .line 110
    :pswitch_b
    const-string v0, "EVDO_B"

    goto :goto_0

    .line 112
    :pswitch_c
    const-string v0, "HSPAP"

    goto :goto_0

    .line 114
    :pswitch_d
    const-string v0, "IDEN"

    goto :goto_0

    .line 116
    :pswitch_e
    const-string v0, "LTE"

    goto :goto_0

    .line 123
    :cond_2
    const-string v0, "NONE"

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public e()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 127
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/Connectivity;->a:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "error"

    const-string v2, "Cannot retrieve connection info"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v0, "isConnected"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v0, "isMobile"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v0, "type"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v0, "isFast"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :goto_0
    return-object v1

    .line 136
    :cond_0
    const-string v0, "error"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 137
    const-string v0, "isConnected"

    invoke-virtual {p0}, Lcom/apprupt/sdk/Connectivity;->a()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    const-string v0, "isMobile"

    invoke-virtual {p0}, Lcom/apprupt/sdk/Connectivity;->b()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/apprupt/sdk/Connectivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v0, "isFast"

    invoke-virtual {p0}, Lcom/apprupt/sdk/Connectivity;->c()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Cannot create JSON!"

    aput-object v4, v3, v5

    invoke-interface {v2, v0, v3}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
