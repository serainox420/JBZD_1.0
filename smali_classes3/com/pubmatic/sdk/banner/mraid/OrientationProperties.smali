.class public Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;
.super Ljava/lang/Object;
.source "OrientationProperties.java"


# instance fields
.field private allowOrientationChange:Z

.field private forceOrientation:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->allowOrientationChange:Z

    .line 58
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->None:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->forceOrientation:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    .line 63
    return-void
.end method

.method public static propertiesFromArgs(Ljava/util/Map;)Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v1, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;

    invoke-direct {v1}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;-><init>()V

    .line 32
    :try_start_0
    const-string v0, "false"

    const-string v2, "allowOrientationChange"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->setAllowOrientationChange(Z)V

    .line 34
    const-string v0, "forceOrientation"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->None:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->setForceOrientation(Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;)V

    .line 54
    :cond_0
    :goto_1
    return-object v1

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_2
    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->Portrait:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->setForceOrientation(Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;)V

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    goto :goto_1

    .line 43
    :cond_3
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->Landscape:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->setForceOrientation(Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getAllowOrientationChange()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->allowOrientationChange:Z

    return v0
.end method

.method public getForceOrientation()Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->forceOrientation:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    return-object v0
.end method

.method public setAllowOrientationChange(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->allowOrientationChange:Z

    .line 73
    return-void
.end method

.method public setForceOrientation(Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->forceOrientation:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    const-string v0, "false"

    .line 89
    iget-boolean v1, p0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->allowOrientationChange:Z

    if-eqz v1, :cond_0

    .line 90
    const-string v0, "true"

    .line 92
    :cond_0
    const-string v1, "none"

    .line 93
    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties$1;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$ForceOrientation:[I

    iget-object v3, p0, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->forceOrientation:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 106
    :goto_0
    const-string v2, "{allowOrientationChange:%s,forceOrientation:\'%s\'}"

    .line 107
    new-instance v3, Ljava/util/Formatter;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 108
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 109
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 112
    return-object v0

    .line 96
    :pswitch_0
    const-string v1, "none"

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v1, "portrait"

    goto :goto_0

    .line 102
    :pswitch_2
    const-string v1, "landscape"

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
