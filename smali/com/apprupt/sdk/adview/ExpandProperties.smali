.class public Lcom/apprupt/sdk/adview/ExpandProperties;
.super Lcom/apprupt/sdk/adview/ResizeProperties;
.source "ExpandProperties.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lcom/apprupt/sdk/adview/ResizeProperties;-><init>()V

    .line 14
    const/16 v0, 0xb3

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 47
    iput p1, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    .line 48
    const-string v0, "COLOR"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "expand color set to"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ExpandProperties;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public a(Lcom/apprupt/sdk/SimpleJSON;)V
    .locals 3

    .prologue
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    invoke-super {p0, p1}, Lcom/apprupt/sdk/adview/ResizeProperties;->a(Lcom/apprupt/sdk/SimpleJSON;)V

    .line 19
    const-string v0, "useCustomClose"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ExpandProperties;->a()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 20
    const-string v1, "backgroundColor"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    if-eqz v0, :cond_0

    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->HIDDEN:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    :goto_0
    iput-object v0, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    .line 22
    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/adview/ExpandProperties;->a(Ljava/lang/String;)V

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    .line 55
    const-string v0, "COLOR"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "expand color set to"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ExpandProperties;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    .line 34
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->HIDDEN:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    :goto_0
    iput-object v0, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->a:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->HIDDEN:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 39
    const-string v0, "rgba(%d,%d,%d,%f)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/apprupt/sdk/adview/ExpandProperties;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ExpandProperties;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v1, "height"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ExpandProperties;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string v1, "useCustomClose"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ExpandProperties;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 68
    const-string v1, "backgroundColor"

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/ExpandProperties;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v1, "isModal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_0
    :try_start_2
    monitor-exit p0

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method
