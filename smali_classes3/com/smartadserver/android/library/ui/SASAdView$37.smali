.class Lcom/smartadserver/android/library/ui/SASAdView$37;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$37;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$37;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setVisibility(I)V

    .line 1869
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$37;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$37;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$37;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_1

    .line 1878
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$37;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$37;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->a()V

    .line 1887
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$37;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->p(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1891
    return-void

    .line 1882
    :catch_0
    move-exception v0

    goto :goto_0
.end method
