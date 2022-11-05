.class public Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityWatcher"
.end annotation


# instance fields
.field a:I

.field b:Landroid/graphics/Rect;

.field volatile c:Z

.field volatile d:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field volatile e:Z

.field volatile f:Z

.field volatile g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

.field volatile i:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

.field public volatile viewable:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->b:Landroid/graphics/Rect;

    .line 51
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->c:Z

    .line 53
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->e:Z

    .line 54
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->f:Z

    .line 59
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    .line 64
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating viewability watcher <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> for view <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    .line 69
    iput-object p2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->h:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    .line 73
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;-><init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->i:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 90
    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 306
    .line 310
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 311
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->d:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    sget-object v3, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->b:Landroid/graphics/Rect;

    .line 312
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    .line 321
    cmp-long v6, v2, v8

    if-lez v6, :cond_0

    cmp-long v6, v4, v8

    if-lez v6, :cond_0

    .line 322
    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    div-long/2addr v2, v4

    .line 323
    iget v4, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    .line 327
    :cond_0
    iget-boolean v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    if-eq v2, v1, :cond_2

    .line 328
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    .line 330
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->h:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    if-eqz v1, :cond_2

    .line 331
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying listener of viewability change.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tViewable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->h:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    iget-boolean v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    invoke-interface {v1, v0, v2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;->onViewableChanged(Landroid/view/View;Z)V

    .line 341
    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->f:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to set view tree observer when already set"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding ViewTreeObserver.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tViewTreeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->f:Z

    goto :goto_0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 264
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 265
    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 269
    :cond_0
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->e:Z

    if-nez v1, :cond_2

    .line 270
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->i:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/ActivityListenerManager;->registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->getLifecycleState(I)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->d:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 277
    :cond_1
    :goto_1
    iput-boolean p2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->e:Z

    .line 279
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a()V

    goto :goto_0

    .line 273
    :cond_2
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->e:Z

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->i:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->unregisterListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a()V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->f:Z

    if-nez v0, :cond_1

    .line 237
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to remove view tree observer when not set"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing ViewTreeObserver.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tViewTreeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 258
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->f:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->c:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a()V

    .line 301
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->c:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a()V

    .line 290
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachedToWindow called.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->c:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Landroid/view/View;)V

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Landroid/view/View;Z)V

    .line 188
    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 194
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewDetachedFromWindow called.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->c:Z

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->b(Landroid/view/View;)V

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a(Landroid/view/View;Z)V

    .line 204
    :cond_1
    return-void
.end method

.method public setMinViewabilityPercent(I)V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the viewability percentage.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tPercentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    iput p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->a:I

    .line 102
    return-void
.end method

.method public startWatching()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting watcher.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    .line 110
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;-><init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public stopWatching()V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping watcher.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    .line 151
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$3;-><init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method
