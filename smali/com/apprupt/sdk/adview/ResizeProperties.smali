.class public Lcom/apprupt/sdk/adview/ResizeProperties;
.super Ljava/lang/Object;
.source "ResizeProperties.java"


# instance fields
.field protected a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->b:I

    .line 12
    iput v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->c:I

    .line 13
    iput v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->d:I

    .line 14
    iput v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->e:I

    .line 15
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/SimpleJSON;)V
    .locals 2

    .prologue
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    const-string v0, "width"

    iget v1, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->d(Ljava/lang/String;Ljava/lang/Number;)I

    move-result v0

    iput v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->b:I

    .line 21
    const-string v0, "height"

    iget v1, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->d(Ljava/lang/String;Ljava/lang/Number;)I

    move-result v0

    iput v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->c:I

    .line 24
    const-string v0, "customClosePosition"

    iget-object v1, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    .line 40
    :goto_0
    monitor-exit p0

    .line 41
    return-void

    .line 27
    :cond_0
    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 29
    :cond_1
    :try_start_1
    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    goto :goto_0

    .line 31
    :cond_2
    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    goto :goto_0

    .line 33
    :cond_3
    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    goto :goto_0

    .line 35
    :cond_4
    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-virtual {v1}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    goto :goto_0

    .line 38
    :cond_5
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    iput-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ResizeProperties;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string v1, "height"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ResizeProperties;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v1, "offsetX"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ResizeProperties;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string v1, "offsetY"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ResizeProperties;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v1, "customClosePosition"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ResizeProperties;->f()Lcom/apprupt/sdk/adview/CloseButtonPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "allowOffscreen"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ResizeProperties;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    :try_start_2
    monitor-exit p0

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->b:I

    monitor-exit p0

    return v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->c:I

    monitor-exit p0

    return v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Lcom/apprupt/sdk/adview/CloseButtonPosition;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->d:I

    monitor-exit p0

    return v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->e:I

    monitor-exit p0

    return v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/apprupt/sdk/adview/ResizeProperties;->f:Z

    monitor-exit p0

    return v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
