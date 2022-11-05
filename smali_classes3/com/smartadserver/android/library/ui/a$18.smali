.class Lcom/smartadserver/android/library/ui/a$18;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 2155
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/smartadserver/android/library/ui/SASAdView$i;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 2158
    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/SASAdView$i;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Landroid/view/View;Landroid/view/View;I)[I

    move-result-object v0

    .line 2161
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v2, v1

    .line 2162
    aget v1, v0, v4

    int-to-float v3, v1

    .line 2163
    const/4 v1, 0x2

    aget v5, v0, v1

    .line 2164
    const/4 v1, 0x3

    aget v4, v0, v1

    .line 2167
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setVisibility(I)V

    .line 2170
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0, v5, v4}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;II)V

    .line 2175
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/smartadserver/android/library/ui/a$18$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/a$18$1;-><init>(Lcom/smartadserver/android/library/ui/a$18;FFII)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2242
    :cond_0
    return-void
.end method
