.class public Lcom/intentsoftware/addapptr/c/d;
.super Ljava/lang/Object;
.source "NativeAdViewImpressionTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/c/d$a;
    }
.end annotation


# static fields
.field private static final VISIBILITY_CHECK_DELAY:I = 0x64


# instance fields
.field private final checkVisibilityRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/intentsoftware/addapptr/c/d$a;

.field private passedVisibilityChecks:I

.field private reportedImpression:Z

.field private final requiredPassedVisibilityChecks:I

.field private final requiredPercentage:I

.field private view:Landroid/view/View;

.field private visibilityCheckScheduled:Z


# direct methods
.method public constructor <init>(IILcom/intentsoftware/addapptr/c/d$a;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c/d;->visibilityCheckScheduled:Z

    .line 27
    iput-object p3, p0, Lcom/intentsoftware/addapptr/c/d;->listener:Lcom/intentsoftware/addapptr/c/d$a;

    .line 28
    iput p2, p0, Lcom/intentsoftware/addapptr/c/d;->requiredPercentage:I

    .line 29
    div-int/lit8 v0, p1, 0x64

    iput v0, p0, Lcom/intentsoftware/addapptr/c/d;->requiredPassedVisibilityChecks:I

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->handler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/intentsoftware/addapptr/c/d$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/c/d$1;-><init>(Lcom/intentsoftware/addapptr/c/d;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->checkVisibilityRunnable:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/c/d;Z)Z
    .locals 0

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/c/d;->visibilityCheckScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/c/d;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c/d;->checkImpression()V

    return-void
.end method

.method private cancelVisibilityCheck()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c/d;->checkVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method private checkImpression()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/intentsoftware/addapptr/c/d;->visiblePercentage(Landroid/view/View;)I

    move-result v0

    .line 90
    iget v1, p0, Lcom/intentsoftware/addapptr/c/d;->requiredPercentage:I

    if-le v0, v1, :cond_2

    .line 91
    iget v1, p0, Lcom/intentsoftware/addapptr/c/d;->passedVisibilityChecks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/intentsoftware/addapptr/c/d;->passedVisibilityChecks:I

    .line 92
    iget v1, p0, Lcom/intentsoftware/addapptr/c/d;->passedVisibilityChecks:I

    iget v2, p0, Lcom/intentsoftware/addapptr/c/d;->requiredPassedVisibilityChecks:I

    if-lt v1, v2, :cond_0

    .line 93
    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/c/d;->reportedImpression:Z

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intentsoftware/addapptr/c/d;->reportedImpression:Z

    .line 95
    iget-object v1, p0, Lcom/intentsoftware/addapptr/c/d;->listener:Lcom/intentsoftware/addapptr/c/d$a;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/intentsoftware/addapptr/c/d;->listener:Lcom/intentsoftware/addapptr/c/d$a;

    invoke-interface {v1}, Lcom/intentsoftware/addapptr/c/d$a;->onImpressionDetected()V

    .line 104
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c/d;->reportedImpression:Z

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c/d;->scheduleVisibilityCheck()V

    .line 107
    :cond_1
    return-void

    .line 101
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/intentsoftware/addapptr/c/d;->passedVisibilityChecks:I

    goto :goto_0
.end method

.method private scheduleVisibilityCheck()V
    .locals 4

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c/d;->visibilityCheckScheduled:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c/d;->visibilityCheckScheduled:Z

    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c/d;->checkVisibilityRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    :cond_0
    return-void
.end method

.method private visiblePercentage(Landroid/view/View;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 125
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 129
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public attachToView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 44
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c/d;->cancelVisibilityCheck()V

    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 65
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    .line 66
    iput-object v1, p0, Lcom/intentsoftware/addapptr/c/d;->listener:Lcom/intentsoftware/addapptr/c/d$a;

    .line 67
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c/d;->reportedImpression:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c/d;->scheduleVisibilityCheck()V

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c/d;->cancelVisibilityCheck()V

    .line 49
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 52
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c/d;->reportedImpression:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/d;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 58
    :cond_0
    return-void
.end method
