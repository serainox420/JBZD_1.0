.class public abstract Lcom/facebook/drawee/controller/AbstractDraweeController;
.super Ljava/lang/Object;
.source "AbstractDraweeController.java"

# interfaces
.implements Lcom/facebook/drawee/components/DeferredReleaser$Releasable;
.implements Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;
.implements Lcom/facebook/drawee/interfaces/DraweeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/components/DeferredReleaser$Releasable;",
        "Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;",
        "Lcom/facebook/drawee/interfaces/DraweeController;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mCallerContext:Ljava/lang/Object;

.field private mContentDescription:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mControllerOverlay:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDataSource:Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDeferredReleaser:Lcom/facebook/drawee/components/DeferredReleaser;

.field private mDrawable:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private mFetchedImage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHasFetchFailed:Z

.field private mId:Ljava/lang/String;

.field private mInitTrace:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsAttached:Z

.field private mIsRequestSubmitted:Z

.field private mIsVisibleInViewportHint:Z

.field private mRetainImageOnFailure:Z

.field private mRetryManager:Lcom/facebook/drawee/components/RetryManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUiThreadImmediateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/facebook/drawee/controller/AbstractDraweeController;

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/components/DeferredReleaser;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->newInstance()Lcom/facebook/drawee/components/DraweeEventTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 106
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDeferredReleaser:Lcom/facebook/drawee/components/DeferredReleaser;

    .line 107
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mUiThreadImmediateExecutor:Ljava/util/concurrent/Executor;

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p3, p4, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->init(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/drawee/controller/AbstractDraweeController;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mInitTrace:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/facebook/drawee/controller/AbstractDraweeController;->onNewResultInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/controller/AbstractDraweeController;->onFailureInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;FZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/controller/AbstractDraweeController;->onProgressUpdateInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;FZ)V

    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_INIT_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 124
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->isUnclosedTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mInitTrace:Ljava/lang/Throwable;

    .line 128
    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDeferredReleaser:Lcom/facebook/drawee/components/DeferredReleaser;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDeferredReleaser:Lcom/facebook/drawee/components/DeferredReleaser;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaser;->cancelDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V

    .line 132
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsAttached:Z

    .line 133
    iput-boolean v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsVisibleInViewportHint:Z

    .line 134
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseFetch()V

    .line 135
    iput-boolean v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetainImageOnFailure:Z

    .line 137
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/RetryManager;->init()V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    invoke-virtual {v0}, Lcom/facebook/drawee/gestures/GestureDetector;->init()V

    .line 142
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/gestures/GestureDetector;->setClickListener(Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    instance-of v0, v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    if-eqz v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    check-cast v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;->clearListeners()V

    .line 149
    :goto_0
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    .line 151
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->reset()V

    .line 153
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0, v2}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setControllerOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    .line 156
    :cond_4
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerOverlay:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v1, "controller %x %s -> %s: initialize"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    :cond_5
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mCallerContext:Ljava/lang/Object;

    .line 163
    return-void

    .line 147
    :cond_6
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    goto :goto_0
.end method

.method private isExpectedDataSource(Ljava/lang/String;Lcom/facebook/datasource/DataSource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 603
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-nez v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logMessageAndFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 627
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v1, "controller %x %s: %s: failure: %s"

    .line 631
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 628
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    :cond_0
    return-void
.end method

.method private logMessageAndImage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 614
    invoke-static {v5}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v1, "controller %x %s: %s: image: %s %x"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 618
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x3

    .line 621
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getImageClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 622
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getImageHash(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 615
    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    :cond_0
    return-void
.end method

.method private onFailureInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->isExpectedDataSource(Ljava/lang/String;Lcom/facebook/datasource/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    const-string v0, "ignore_old_datasource @ onFailure"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 584
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p4, :cond_1

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 565
    if-eqz p4, :cond_4

    .line 566
    const-string v0, "final_failed @ onFailure"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 568
    iput-boolean v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mHasFetchFailed:Z

    .line 570
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetainImageOnFailure:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setImage(Landroid/graphics/drawable/Drawable;FZ)V

    .line 577
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/facebook/drawee/controller/ControllerListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 562
    :cond_1
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_1

    .line 572
    :cond_2
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->shouldRetryOnTap()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0, p3}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setRetry(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0, p3}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setFailure(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 580
    :cond_4
    const-string v0, "intermediate_failed @ onFailure"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/facebook/drawee/controller/ControllerListener;->onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onNewResultInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZ)V
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;TT;FZZ)V"
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->isExpectedDataSource(Ljava/lang/String;Lcom/facebook/datasource/DataSource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    const-string v0, "ignore_old_datasource @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndImage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseImage(Ljava/lang/Object;)V

    .line 507
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p5, :cond_3

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 515
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->createDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mFetchedImage:Ljava/lang/Object;

    .line 523
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 524
    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mFetchedImage:Ljava/lang/Object;

    .line 525
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 528
    if-eqz p5, :cond_4

    .line 529
    :try_start_1
    const-string v0, "set_final_result @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndImage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 531
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v4, p6}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setImage(Landroid/graphics/drawable/Drawable;FZ)V

    .line 532
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getImageInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getAnimatable()Landroid/graphics/drawable/Animatable;

    move-result-object v5

    invoke-interface {v0, p1, v4, v5}, Lcom/facebook/drawee/controller/ControllerListener;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :goto_2
    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_2

    .line 542
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_2
    if-eqz v2, :cond_0

    if-eq v2, p3, :cond_0

    .line 545
    const-string v0, "release_previous_result @ onNewResult"

    invoke-direct {p0, v0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndImage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseImage(Ljava/lang/Object;)V

    goto :goto_0

    .line 510
    :cond_3
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string v1, "drawable_failed @ onNewResult"

    invoke-direct {p0, v1, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndImage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseImage(Ljava/lang/Object;)V

    .line 519
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/facebook/drawee/controller/AbstractDraweeController;->onFailureInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 535
    :cond_4
    :try_start_2
    const-string v0, "set_intermediate_result @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndImage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0, v1, p4, p6}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setImage(Landroid/graphics/drawable/Drawable;FZ)V

    .line 537
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getImageInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lcom/facebook/drawee/controller/ControllerListener;->onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 541
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_5

    .line 542
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_5
    if-eqz v2, :cond_6

    if-eq v2, p3, :cond_6

    .line 545
    const-string v1, "release_previous_result @ onNewResult"

    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndImage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseImage(Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method private onProgressUpdateInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;FZ)V"
        }
    .end annotation

    .prologue
    .line 592
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->isExpectedDataSource(Ljava/lang/String;Lcom/facebook/datasource/DataSource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    const-string v0, "ignore_old_datasource @ onProgress"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    if-nez p4, :cond_0

    .line 598
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setProgress(FZ)V

    goto :goto_0
.end method

.method private releaseFetch()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    .line 182
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    .line 183
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mHasFetchFailed:Z

    .line 184
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    invoke-interface {v1}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 186
    iput-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 192
    iput-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mContentDescription:Ljava/lang/String;

    .line 194
    :cond_2
    iput-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mFetchedImage:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 196
    const-string v1, "release"

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mFetchedImage:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->logMessageAndImage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mFetchedImage:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseImage(Ljava/lang/Object;)V

    .line 198
    iput-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mFetchedImage:Ljava/lang/Object;

    .line 200
    :cond_3
    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/ControllerListener;->onRelease(Ljava/lang/String;)V

    .line 203
    :cond_4
    return-void
.end method

.method private shouldRetryOnTap()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mHasFetchFailed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/RetryManager;->shouldRetryOnTap()Z

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
.method public addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<-TINFO;>;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    instance-of v0, v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    check-cast v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 271
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-static {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;->createInternal(Lcom/facebook/drawee/controller/ControllerListener;Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    goto :goto_0

    .line 270
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    goto :goto_0
.end method

.method protected abstract createDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method public getAnimatable()Landroid/graphics/drawable/Animatable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCachedImage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallerContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mCallerContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<TINFO;>;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Lcom/facebook/drawee/controller/BaseControllerListener;->getNoOpListener()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    goto :goto_0
.end method

.method protected getControllerOverlay()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerOverlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected abstract getDataSource()Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected getGestureDetector()Lcom/facebook/drawee/gestures/GestureDetector;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    return-object v0
.end method

.method public getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    return-object v0
.end method

.method protected getImageClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 650
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<null>"

    goto :goto_0
.end method

.method protected getImageHash(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract getImageInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected getRetryManager()Lcom/facebook/drawee/components/RetryManager;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    return-object v0
.end method

.method protected initialize(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->init(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 120
    return-void
.end method

.method public onAttach()V
    .locals 5

    .prologue
    .line 357
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v2, "controller %x %s: onAttach: %s"

    .line 361
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    if-eqz v0, :cond_2

    const-string v0, "request already submitted"

    .line 358
    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 366
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDeferredReleaser:Lcom/facebook/drawee/components/DeferredReleaser;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaser;->cancelDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsAttached:Z

    .line 369
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    if-nez v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->submitRequest()V

    .line 372
    :cond_1
    return-void

    .line 361
    :cond_2
    const-string v0, "request needs submit"

    goto :goto_0
.end method

.method public onClick()Z
    .locals 4

    .prologue
    .line 425
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v1, "controller %x %s: onClick"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->shouldRetryOnTap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/RetryManager;->notifyTapToRetry()V

    .line 430
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->reset()V

    .line 431
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->submitRequest()V

    .line 432
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 376
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v1, "controller %x %s: onDetach"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsAttached:Z

    .line 381
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDeferredReleaser:Lcom/facebook/drawee/components/DeferredReleaser;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaser;->scheduleDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V

    .line 382
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 399
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v2, "controller %x %s: onTouchEvent %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    if-nez v1, :cond_2

    .line 409
    :cond_1
    :goto_0
    return v0

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    invoke-virtual {v1}, Lcom/facebook/drawee/gestures/GestureDetector;->isCapturingGesture()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->shouldHandleGesture()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 407
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onViewportVisibilityHint(Z)V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    .line 387
    if-eqz v0, :cond_0

    .line 388
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsVisibleInViewportHint:Z

    if-nez v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;->onDraweeViewportEntry(Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsVisibleInViewportHint:Z

    .line 395
    return-void

    .line 390
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsVisibleInViewportHint:Z

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;->onDraweeViewportExit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_RELEASE_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 168
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/RetryManager;->reset()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    invoke-virtual {v0}, Lcom/facebook/drawee/gestures/GestureDetector;->reset()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->reset()V

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->releaseFetch()V

    .line 178
    return-void
.end method

.method protected abstract releaseDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract releaseImage(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public removeControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<-TINFO;>;)V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    instance-of v0, v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    check-cast v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;->removeListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    if-ne v0, p1, :cond_0

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mContentDescription:Ljava/lang/String;

    .line 253
    return-void
.end method

.method protected setControllerOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 344
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerOverlay:Landroid/graphics/drawable/Drawable;

    .line 345
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerOverlay:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setControllerOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_0
    return-void
.end method

.method public setControllerViewportVisibilityListener(Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerViewportVisibilityListener:Lcom/facebook/drawee/controller/ControllerViewportVisibilityListener;

    .line 297
    return-void
.end method

.method protected setGestureDetector(Lcom/facebook/drawee/gestures/GestureDetector;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/gestures/GestureDetector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    .line 233
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mGestureDetector:Lcom/facebook/drawee/gestures/GestureDetector;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/gestures/GestureDetector;->setClickListener(Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V
    .locals 5
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeHierarchy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 314
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v1, "controller %x %s: setHierarchy: %s"

    .line 318
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    .line 315
    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 325
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDeferredReleaser:Lcom/facebook/drawee/components/DeferredReleaser;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaser;->cancelDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V

    .line 327
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->release()V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0, v4}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setControllerOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iput-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    .line 335
    :cond_2
    if-eqz p1, :cond_3

    .line 336
    instance-of v0, p1, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 337
    check-cast p1, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    .line 338
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mControllerOverlay:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setControllerOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_3
    return-void

    .line 322
    :cond_4
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0
.end method

.method protected setRetainImageOnFailure(Z)V
    .locals 0

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetainImageOnFailure:Z

    .line 241
    return-void
.end method

.method protected setRetryManager(Lcom/facebook/drawee/components/RetryManager;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/components/RetryManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mRetryManager:Lcom/facebook/drawee/components/RetryManager;

    .line 223
    return-void
.end method

.method protected shouldHandleGesture()Z
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->shouldRetryOnTap()Z

    move-result v0

    return v0
.end method

.method protected submitRequest()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getCachedImage()Ljava/lang/Object;

    move-result-object v3

    .line 439
    if-eqz v3, :cond_0

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 441
    iput-boolean v5, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    .line 442
    iput-boolean v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mHasFetchFailed:Z

    .line 443
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SUBMIT_CACHE_HIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 444
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mCallerContext:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/drawee/controller/ControllerListener;->onSubmit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/controller/AbstractDraweeController;->onNewResultInternal(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZ)V

    .line 494
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_SUBMIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->recordEvent(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 449
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getControllerListener()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mCallerContext:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/drawee/controller/ControllerListener;->onSubmit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mSettableDraweeHierarchy:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v5}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->setProgress(FZ)V

    .line 451
    iput-boolean v5, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    .line 452
    iput-boolean v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mHasFetchFailed:Z

    .line 453
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 454
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->TAG:Ljava/lang/Class;

    const-string v1, "controller %x %s: submitRequest: dataSource: %x"

    .line 458
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 460
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 455
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mId:Ljava/lang/String;

    .line 463
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    invoke-interface {v1}, Lcom/facebook/datasource/DataSource;->hasResult()Z

    move-result v1

    .line 464
    new-instance v2, Lcom/facebook/drawee/controller/AbstractDraweeController$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController$1;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Z)V

    .line 493
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mDataSource:Lcom/facebook/datasource/DataSource;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mUiThreadImmediateExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, v1}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 663
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsAttached:Z

    .line 664
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isRequestSubmitted"

    iget-boolean v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mIsRequestSubmitted:Z

    .line 665
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "hasFetchFailed"

    iget-boolean v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mHasFetchFailed:Z

    .line 666
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "fetchedImage"

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mFetchedImage:Ljava/lang/Object;

    .line 667
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getImageHash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "events"

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->mEventTracker:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 668
    invoke-virtual {v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    return-object v0
.end method
