.class Lcom/facebook/ads/internal/util/ad$2;
.super Lcom/facebook/ads/internal/g/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/util/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/g/s",
        "<",
        "Lcom/facebook/ads/internal/view/d/a/p;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/facebook/ads/internal/util/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/util/ad$2;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/ads/internal/util/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/ad$2;->b:Lcom/facebook/ads/internal/util/ad;

    invoke-direct {p0}, Lcom/facebook/ads/internal/g/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/p;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/p;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/p;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/ad$2;->a(Lcom/facebook/ads/internal/view/d/a/p;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/p;)V
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/util/ad$2;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/ad$2;->b:Lcom/facebook/ads/internal/util/ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/util/ad$2;->b:Lcom/facebook/ads/internal/util/ad;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/util/ad$2;->b:Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ad;->h()V

    goto :goto_0
.end method
