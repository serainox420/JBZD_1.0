.class Lcom/mopub/nativeads/l$b;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/l$b;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method a(JI)Z
    .locals 5

    .prologue
    .line 270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;Landroid/view/View;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 283
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/l$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/mopub/nativeads/l$b;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/mopub/nativeads/l$b;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 294
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 296
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 300
    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    int-to-long v6, p3

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
