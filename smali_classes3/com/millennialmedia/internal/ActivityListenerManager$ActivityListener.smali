.class public Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/ActivityListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity created"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity destroyed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity paused"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity resumed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity started"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity stopped"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method
