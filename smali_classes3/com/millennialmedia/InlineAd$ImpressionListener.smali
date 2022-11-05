.class Lcom/millennialmedia/InlineAd$ImpressionListener;
.super Ljava/lang/Object;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImpressionListener"
.end annotation


# instance fields
.field a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field b:I

.field volatile c:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field volatile d:Z

.field e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/InlineAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;JI)V
    .locals 3

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->d:Z

    .line 318
    iput p5, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->b:I

    .line 319
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->e:Ljava/lang/ref/WeakReference;

    .line 321
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v1, Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/millennialmedia/InlineAd$ImpressionListener$1;-><init>(Lcom/millennialmedia/InlineAd$ImpressionListener;J)V

    invoke-direct {v0, p2, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 366
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget v1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->b:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->setMinViewabilityPercent(I)V

    .line 376
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    goto :goto_0
.end method
