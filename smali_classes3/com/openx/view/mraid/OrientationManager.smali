.class public Lcom/openx/view/mraid/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/mraid/OrientationManager$2;,
        Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private initialOrientation:I

.field private mOrientationListener:Lcom/openx/view/mraid/OrientationAllowChangeEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/openx/view/mraid/OrientationManager;->context:Landroid/content/Context;

    .line 74
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/openx/view/mraid/OrientationManager;->initialOrientation:I

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/mraid/OrientationManager;ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/openx/view/mraid/OrientationManager;->displayForcedOrientation(ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V

    return-void
.end method

.method private currentOrientation()I
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method private displayForcedOrientation(ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/openx/view/mraid/OrientationManager$2;->$SwitchMap$com$openx$view$mraid$OrientationManager$ForcedOrientation:[I

    invoke-virtual {p2}, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 134
    :pswitch_0
    if-nez p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->keepInititalOrientation()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->setOrientationSensor()V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->setOrientationPortrait()V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->setOrientationLandscape()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private keepInititalOrientation()V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->currentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->setOrientationPortrait()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->currentOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->setOrientationLandscape()V

    goto :goto_0
.end method

.method private setOrientationEventListener()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    iget-object v1, p0, Lcom/openx/view/mraid/OrientationManager;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->mOrientationListener:Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    .line 108
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->mOrientationListener:Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    new-instance v1, Lcom/openx/view/mraid/OrientationManager$1;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/OrientationManager$1;-><init>(Lcom/openx/view/mraid/OrientationManager;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->setOrientationInitialShowedListener(Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationInitialShowedListener;)V

    .line 120
    return-void
.end method

.method private setOrientationLandscape()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setOrientationPortrait()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 161
    return-void

    .line 160
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setOrientationSensor()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method


# virtual methods
.method public disableOrientationListener()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->mOrientationListener:Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->mOrientationListener:Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->disable()V

    .line 189
    :cond_0
    return-void
.end method

.method public enableOrientationListener()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->mOrientationListener:Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->mOrientationListener:Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->enable()V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/openx/view/mraid/OrientationManager;->setOrientationEventListener()V

    goto :goto_0
.end method

.method public getOrientationEventListener()Lcom/openx/view/mraid/OrientationAllowChangeEventListener;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->mOrientationListener:Lcom/openx/view/mraid/OrientationAllowChangeEventListener;

    return-object v0
.end method

.method public onOrientationPropertiesChanged(ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V
    .locals 0

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/openx/view/mraid/OrientationManager;->enableOrientationListener()V

    .line 94
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/openx/view/mraid/OrientationManager;->displayForcedOrientation(ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V

    .line 96
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/mraid/OrientationManager;->disableOrientationListener()V

    goto :goto_0
.end method

.method public restoreInitialOrientation()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/openx/view/mraid/OrientationManager;->initialOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 194
    return-void
.end method
