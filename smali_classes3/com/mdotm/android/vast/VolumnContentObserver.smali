.class public Lcom/mdotm/android/vast/VolumnContentObserver;
.super Landroid/database/ContentObserver;
.source "VolumnContentObserver.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private muteUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private previousVolume:I

.field private trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

.field private unMuteUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    iput-object p1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->mHandler:Landroid/os/Handler;

    .line 33
    iget-object v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;

    .line 34
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/media/AudioManager;

    .line 35
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    .line 37
    iput-object p3, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->muteUrl:Ljava/util/ArrayList;

    .line 38
    iput-object p4, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->unMuteUrl:Ljava/util/ArrayList;

    .line 39
    iget v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    if-nez v0, :cond_0

    .line 40
    const-string v0, "valumn Mute impression when video started:: "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :cond_0
    const-string v0, "Volumn listener"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VolumnContentObserver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;

    return-object v0
.end method

.method private sendImpression(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/vast/VolumnContentObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/vast/VolumnContentObserver$1;-><init>(Lcom/mdotm/android/vast/VolumnContentObserver;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 55
    iget-object v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;

    .line 56
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    check-cast v0, Landroid/media/AudioManager;

    .line 57
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 59
    if-nez v0, :cond_1

    iget v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    if-eqz v1, :cond_1

    .line 60
    const-string v1, "valumn Mute  impression :: "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    iput v0, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    .line 67
    return-void

    .line 62
    :cond_1
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver;->previousVolume:I

    if-nez v1, :cond_0

    .line 63
    const-string v1, "valumn unMute impression :: "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
