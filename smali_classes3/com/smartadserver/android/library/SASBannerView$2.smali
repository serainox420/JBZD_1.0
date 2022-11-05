.class Lcom/smartadserver/android/library/SASBannerView$2;
.super Ljava/lang/Object;
.source "SASBannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASBannerView;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/smartadserver/android/library/SASBannerView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASBannerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartadserver/android/library/SASBannerView$2;->b:Lcom/smartadserver/android/library/SASBannerView;

    iput-object p2, p0, Lcom/smartadserver/android/library/SASBannerView$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/smartadserver/android/library/SASBannerView$2;->b:Lcom/smartadserver/android/library/SASBannerView;

    iget-object v1, p0, Lcom/smartadserver/android/library/SASBannerView$2;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASBannerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/smartadserver/android/library/SASBannerView$2;->b:Lcom/smartadserver/android/library/SASBannerView;

    iget-object v1, p0, Lcom/smartadserver/android/library/SASBannerView$2;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASBannerView;->removeView(Landroid/view/View;)V

    .line 81
    :cond_0
    return-void
.end method
