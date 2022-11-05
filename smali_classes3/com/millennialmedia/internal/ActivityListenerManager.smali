.class public Lcom/millennialmedia/internal/ActivityListenerManager;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;,
        Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;,
        Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/millennialmedia/internal/ActivityListenerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager;->b(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    .locals 3

    .prologue
    .line 409
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    .line 410
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 411
    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    invoke-direct {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;-><init>()V

    .line 412
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_0
    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static getLifecycleState(I)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 4

    .prologue
    .line 393
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 395
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->b(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b()Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v0

    .line 400
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lifecycle state <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> for activity ID <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_1
    return-object v0
.end method

.method public static getLifecycleState(Landroid/app/Activity;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 2

    .prologue
    .line 380
    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->getLifecycleState(I)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 384
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    const-string v1, "Lifecycle state <UNKNOWN> for null activity"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$1;

    invoke-direct {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$1;-><init>()V

    .line 316
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 317
    return-void
.end method

.method public static registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 3

    .prologue
    .line 322
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to register activity listener.\n\tactivity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tactivity listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    if-nez p1, :cond_1

    .line 328
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    const-string v1, "Unable to register activity listener, provided instance is null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->b(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    goto :goto_0
.end method

.method public static setInitialStateForUnknownActivity(ILcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)V
    .locals 4

    .prologue
    .line 357
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to set lifecycle state for unknown activity.\n\tactivity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tlifecycle state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->b(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    if-eq v1, v2, :cond_1

    .line 368
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set lifecycle state. Activity already exists with state <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    invoke-static {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-static {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    goto :goto_0
.end method

.method public static unregisterListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to unregister activity listener.\n\tactivity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tactivity listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    if-nez p1, :cond_2

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->b(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    goto :goto_0
.end method
