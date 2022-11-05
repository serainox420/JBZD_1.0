.class Lcom/moat/analytics/mobile/aol/ActivityStateImpl;
.super Ljava/lang/Object;
.source "ActivityStateImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/ActivityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoatActivityState"


# instance fields
.field private final app:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private isInBackground:Z

.field private listening:Z

.field private final myActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    invoke-interface {p2}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v1, "MoatActivityState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listening to Activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->app:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->myActivity:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->listening:Z

    .line 37
    return-void

    .line 31
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    return-object v0
.end method

.method static synthetic access$202(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->isInBackground:Z

    return p1
.end method

.method static synthetic access$300(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->app:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->myActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->myActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public isOutOfFocus()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->isInBackground:Z

    return v0
.end method

.method public listen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->listening:Z

    if-nez v0, :cond_0

    .line 46
    new-instance v1, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;-><init>(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;Lcom/moat/analytics/mobile/aol/ActivityStateImpl$1;)V

    .line 47
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->app:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 49
    :cond_0
    return-void
.end method
