.class Lcom/intentsoftware/addapptr/y;
.super Lcom/intentsoftware/addapptr/x;
.source "ReporterAPI14.java"


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/intentsoftware/addapptr/ab;Lcom/intentsoftware/addapptr/ac;Lcom/intentsoftware/addapptr/aa;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/intentsoftware/addapptr/ab;",
            "Lcom/intentsoftware/addapptr/ac;",
            "Lcom/intentsoftware/addapptr/aa;",
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/intentsoftware/addapptr/x;-><init>(Lcom/intentsoftware/addapptr/ab;Lcom/intentsoftware/addapptr/ac;Lcom/intentsoftware/addapptr/aa;Ljava/util/List;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/y;->registerActivityCallback(Landroid/app/Application;)V

    .line 17
    return-void
.end method

.method private createActivityLifecycleCallback()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/intentsoftware/addapptr/y$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/y$1;-><init>(Lcom/intentsoftware/addapptr/y;)V

    return-object v0
.end method

.method private registerActivityCallback(Landroid/app/Application;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/y;->createActivityLifecycleCallback()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onPause(Z)V
    .locals 0

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/x;->onPause(Z)V

    .line 25
    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 0

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/x;->onResume(Z)V

    .line 33
    :cond_0
    return-void
.end method
