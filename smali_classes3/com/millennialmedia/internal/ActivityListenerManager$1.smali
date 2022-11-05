.class final Lcom/millennialmedia/internal/ActivityListenerManager$1;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/ActivityListenerManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 181
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity onCreate called for activity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->a(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->CREATED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 187
    invoke-virtual {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a()Ljava/util/List;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 189
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onCreated of activity listener <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for activity ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;->onCreated(Landroid/app/Activity;)V

    goto :goto_0

    .line 195
    :cond_2
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 281
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity onDestroy called for activity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->a(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 285
    if-nez v0, :cond_2

    .line 286
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find activity state for activity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->DESTROYED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 294
    invoke-virtual {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a()Ljava/util/List;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 296
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onDestroyed of activity listener <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for activity ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_3
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;->onDestroyed(Landroid/app/Activity;)V

    goto :goto_1

    .line 303
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 241
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity onPause called for activity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->a(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->PAUSED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 247
    invoke-virtual {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a()Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 249
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onPaused of activity listener <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for activity ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;->onPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 255
    :cond_2
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 221
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity onResume called for activity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->a(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 227
    invoke-virtual {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a()Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 229
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onResumed of activity listener <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for activity ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;->onResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 235
    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 310
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity onSaveInstanceState called for activity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 201
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity onStart called for activity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->a(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->STARTED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 207
    invoke-virtual {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a()Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 209
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onStarted of activity listener <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for activity ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;->onStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 215
    :cond_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 261
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity onStop called for activity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->a(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->STOPPED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 267
    invoke-virtual {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a()Ljava/util/List;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 269
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onStopped of activity listener <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for activity ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;->onStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 275
    :cond_2
    return-void
.end method
