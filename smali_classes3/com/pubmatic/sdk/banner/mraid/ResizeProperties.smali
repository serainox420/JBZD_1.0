.class public Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;
.super Ljava/lang/Object;
.source "ResizeProperties.java"


# instance fields
.field private allowOffscreen:Z

.field private customClosePosition:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

.field private height:I

.field private offsetX:I

.field private offsetY:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->width:I

    .line 78
    iput v1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->height:I

    .line 79
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->customClosePosition:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 80
    iput v1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->offsetX:I

    .line 81
    iput v1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->offsetY:I

    .line 82
    iput-boolean v1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->allowOffscreen:Z

    .line 87
    return-void
.end method

.method public static propertiesFromArgs(Ljava/util/Map;)Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;

    invoke-direct {v1}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;-><init>()V

    .line 33
    :try_start_0
    const-string v0, "width"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setWidth(I)V

    .line 34
    const-string v0, "height"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setHeight(I)V

    .line 35
    const-string v0, "offsetX"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setOffsetX(I)V

    .line 36
    const-string v0, "offsetY"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setOffsetY(I)V

    .line 37
    const-string v0, "true"

    const-string v2, "allowOffscreen"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setAllowOffscreen(Z)V

    .line 39
    const-string v0, "customClosePosition"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    const-string v2, "top-left"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setCustomClosePosition(Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;)V

    .line 74
    :cond_0
    :goto_0
    return-object v1

    .line 44
    :cond_1
    const-string v2, "top-center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setCustomClosePosition(Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;)V

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0

    .line 48
    :cond_2
    const-string v2, "top-right"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setCustomClosePosition(Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string v2, "center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->Center:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setCustomClosePosition(Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;)V

    goto :goto_0

    .line 56
    :cond_4
    const-string v2, "bottom-left"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setCustomClosePosition(Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;)V

    goto :goto_0

    .line 60
    :cond_5
    const-string v2, "bottom-center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 62
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setCustomClosePosition(Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;)V

    goto :goto_0

    .line 64
    :cond_6
    const-string v2, "bottom-right"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->setCustomClosePosition(Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getAllowOffscreen()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->allowOffscreen:Z

    return v0
.end method

.method public getCustomClosePosition()Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->customClosePosition:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->height:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->offsetY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->width:I

    return v0
.end method

.method public setAllowOffscreen(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->allowOffscreen:Z

    .line 147
    return-void
.end method

.method public setCustomClosePosition(Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->customClosePosition:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 117
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->height:I

    .line 107
    return-void
.end method

.method public setOffsetX(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->offsetX:I

    .line 127
    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->offsetY:I

    .line 137
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->width:I

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 152
    const-string v0, "top-right"

    .line 153
    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties$1;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->customClosePosition:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 178
    :goto_0
    const-string v1, "false"

    .line 179
    iget-boolean v2, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->allowOffscreen:Z

    if-eqz v2, :cond_0

    .line 180
    const-string v1, "true"

    .line 182
    :cond_0
    const-string v2, "{width:%d,height:%d,customClosePosition:\'%s\',offsetX:%d,offsetY:%d,allowOffscreen:%s}"

    .line 183
    new-instance v3, Ljava/util/Formatter;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 184
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v0, 0x3

    iget v5, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->offsetX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    iget v5, p0, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->offsetY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object v1, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 185
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 188
    return-object v0

    .line 156
    :pswitch_0
    const-string v0, "top-left"

    goto :goto_0

    .line 159
    :pswitch_1
    const-string v0, "top-center"

    goto :goto_0

    .line 162
    :pswitch_2
    const-string v0, "top-right"

    goto :goto_0

    .line 165
    :pswitch_3
    const-string v0, "center"

    goto :goto_0

    .line 168
    :pswitch_4
    const-string v0, "bottom-left"

    goto :goto_0

    .line 171
    :pswitch_5
    const-string v0, "bottom-center"

    goto :goto_0

    .line 174
    :pswitch_6
    const-string v0, "bottom-right"

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
