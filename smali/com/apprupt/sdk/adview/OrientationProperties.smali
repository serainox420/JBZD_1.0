.class public Lcom/apprupt/sdk/adview/OrientationProperties;
.super Ljava/lang/Object;
.source "OrientationProperties.java"


# instance fields
.field private a:Z

.field private b:Lcom/apprupt/sdk/adview/Orientation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->a:Z

    .line 12
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation;->NONE:Lcom/apprupt/sdk/adview/Orientation;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->b:Lcom/apprupt/sdk/adview/Orientation;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    const-string v1, "allowOrientationChange"

    iget-boolean v2, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    const-string v1, "forceOrientation"

    iget-object v2, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->b:Lcom/apprupt/sdk/adview/Orientation;

    invoke-virtual {v2}, Lcom/apprupt/sdk/adview/Orientation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_0
    :try_start_2
    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Lcom/apprupt/sdk/SimpleJSON;)V
    .locals 2

    .prologue
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    const-string v0, "allowOrientationChange"

    iget-boolean v1, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->a:Z

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->a:Z

    .line 17
    const-string v0, "forceOrientation"

    iget-object v1, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->b:Lcom/apprupt/sdk/adview/Orientation;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/Orientation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/apprupt/sdk/adview/Orientation;->PORTRAIT:Lcom/apprupt/sdk/adview/Orientation;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/Orientation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation;->PORTRAIT:Lcom/apprupt/sdk/adview/Orientation;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->b:Lcom/apprupt/sdk/adview/Orientation;

    .line 25
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 20
    :cond_0
    sget-object v1, Lcom/apprupt/sdk/adview/Orientation;->LANDSCAPE:Lcom/apprupt/sdk/adview/Orientation;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/Orientation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation;->LANDSCAPE:Lcom/apprupt/sdk/adview/Orientation;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->b:Lcom/apprupt/sdk/adview/Orientation;

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 23
    :cond_1
    :try_start_1
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation;->NONE:Lcom/apprupt/sdk/adview/Orientation;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->b:Lcom/apprupt/sdk/adview/Orientation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b()Lcom/apprupt/sdk/adview/Orientation;
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->b:Lcom/apprupt/sdk/adview/Orientation;

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lcom/apprupt/sdk/adview/OrientationProperties;->a:Z

    monitor-exit p0

    return v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
