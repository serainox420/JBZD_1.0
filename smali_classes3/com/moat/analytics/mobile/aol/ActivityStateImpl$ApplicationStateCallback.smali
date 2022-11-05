.class Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;
.super Ljava/lang/Object;
.source "ActivityStateImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/ActivityStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;Lcom/moat/analytics/mobile/aol/ActivityStateImpl$1;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;-><init>(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)V

    return-void
.end method

.method private isMyActivity(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$400(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$100(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->isMyActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$202(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;Z)Z

    .line 111
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$300(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$100(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->isMyActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$202(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;Z)Z

    .line 88
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$100(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->isMyActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$202(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;Z)Z

    .line 78
    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$100(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->isMyActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$202(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;Z)Z

    .line 68
    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$100(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->isMyActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ActivityStateImpl$ApplicationStateCallback;->this$0:Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;->access$202(Lcom/moat/analytics/mobile/aol/ActivityStateImpl;Z)Z

    .line 98
    :cond_1
    return-void
.end method
