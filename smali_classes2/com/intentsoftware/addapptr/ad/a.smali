.class public abstract Lcom/intentsoftware/addapptr/ad/a;
.super Ljava/lang/Object;
.source "Ad.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private config:Lcom/intentsoftware/addapptr/b;

.field private fallbackDismissListener:Lcom/intentsoftware/addapptr/n;

.field private final handler:Landroid/os/Handler;

.field private interactionListener:Lcom/intentsoftware/addapptr/ad/b;

.field private loadListener:Lcom/intentsoftware/addapptr/ad/c;

.field private loading:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/ad/c;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->loadListener:Lcom/intentsoftware/addapptr/ad/c;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/ad/b;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->interactionListener:Lcom/intentsoftware/addapptr/ad/b;

    return-object v0
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/ad/a;)Lcom/intentsoftware/addapptr/n;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->fallbackDismissListener:Lcom/intentsoftware/addapptr/n;

    return-object v0
.end method


# virtual methods
.method protected fallbackNotifyListenerThatAdWasDismissed()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intentsoftware/addapptr/ad/a$7;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/ad/a$7;-><init>(Lcom/intentsoftware/addapptr/ad/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getConfig()Lcom/intentsoftware/addapptr/b;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->config:Lcom/intentsoftware/addapptr/b;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 1

    .prologue
    .line 27
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a;->activity:Landroid/app/Activity;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/ad/a;->loading:Z

    .line 29
    return-void
.end method

.method protected notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/ad/a;->loading:Z

    if-eqz v0, :cond_1

    .line 75
    iput-boolean v3, p0, Lcom/intentsoftware/addapptr/ad/a;->loading:Z

    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intentsoftware/addapptr/ad/a$3;

    invoke-direct {v1, p0, p1}, Lcom/intentsoftware/addapptr/ad/a$3;-><init>(Lcom/intentsoftware/addapptr/ad/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Redundant \'failed to load ad\' notification from %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected notifyListenerThatAdIsShown()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intentsoftware/addapptr/ad/a$5;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/ad/a$5;-><init>(Lcom/intentsoftware/addapptr/ad/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method protected notifyListenerThatAdWasClicked()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intentsoftware/addapptr/ad/a$4;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/ad/a$4;-><init>(Lcom/intentsoftware/addapptr/ad/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method protected notifyListenerThatAdWasLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/ad/a;->loading:Z

    if-eqz v0, :cond_1

    .line 43
    iput-boolean v3, p0, Lcom/intentsoftware/addapptr/ad/a;->loading:Z

    .line 45
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intentsoftware/addapptr/ad/a$1;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/ad/a$1;-><init>(Lcom/intentsoftware/addapptr/ad/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Redundant \'ad loaded\' notification from %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected notifyListenerThatShowingEmpty()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intentsoftware/addapptr/ad/a$2;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/ad/a$2;-><init>(Lcom/intentsoftware/addapptr/ad/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method protected notifyListenerThatUserEarnedIncentive()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/a;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intentsoftware/addapptr/ad/a$6;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/ad/a$6;-><init>(Lcom/intentsoftware/addapptr/ad/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a;->activity:Landroid/app/Activity;

    .line 39
    return-void
.end method

.method public setConfig(Lcom/intentsoftware/addapptr/b;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a;->config:Lcom/intentsoftware/addapptr/b;

    .line 153
    return-void
.end method

.method public setFallbackDismissListener(Lcom/intentsoftware/addapptr/n;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a;->fallbackDismissListener:Lcom/intentsoftware/addapptr/n;

    .line 149
    return-void
.end method

.method public setInteractionListener(Lcom/intentsoftware/addapptr/ad/b;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a;->interactionListener:Lcom/intentsoftware/addapptr/ad/b;

    .line 145
    return-void
.end method

.method public setLoadListener(Lcom/intentsoftware/addapptr/ad/c;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/a;->loadListener:Lcom/intentsoftware/addapptr/ad/c;

    .line 141
    return-void
.end method

.method public abstract unload()V
.end method
