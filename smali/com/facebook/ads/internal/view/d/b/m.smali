.class public abstract Lcom/facebook/ads/internal/view/d/b/m;
.super Landroid/widget/RelativeLayout;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/facebook/ads/internal/view/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/d/b/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/view/d/b/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/m;->b:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;->a(Lcom/facebook/ads/internal/view/m;)V

    return-void
.end method

.method protected getVideoView()Lcom/facebook/ads/internal/view/m;
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/view/d/b/m;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/m;->b:Lcom/facebook/ads/internal/view/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/m;->b:Lcom/facebook/ads/internal/view/m;

    return-object v0
.end method
