.class Lcom/mopub/mraid/MraidController$b$a$1;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidController$b$a;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController$b$a;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$b$a$1;->a:Lcom/mopub/mraid/MraidController$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b$a$1;->a:Lcom/mopub/mraid/MraidController$b$a;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController$b$a;->a(Lcom/mopub/mraid/MraidController$b$a;)[Landroid/view/View;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 395
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 396
    :cond_0
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$b$a$1;->a:Lcom/mopub/mraid/MraidController$b$a;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController$b$a;->b(Lcom/mopub/mraid/MraidController$b$a;)V

    .line 393
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/mopub/mraid/MraidController$b$a$1$1;

    invoke-direct {v5, p0, v3}, Lcom/mopub/mraid/MraidController$b$a$1$1;-><init>(Lcom/mopub/mraid/MraidController$b$a$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 412
    :cond_2
    return-void
.end method
