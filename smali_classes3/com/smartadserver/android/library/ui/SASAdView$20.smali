.class Lcom/smartadserver/android/library/ui/SASAdView$20;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->d(Z)V
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
    .line 3064
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3067
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->setMediationView(Landroid/view/View;)V

    .line 3068
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Z)V

    .line 3069
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->p(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 3071
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->a()V

    .line 3073
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setVisibility(I)V

    .line 3076
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3084
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$20;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)Z

    .line 3085
    return-void

    .line 3080
    :catch_0
    move-exception v0

    goto :goto_0
.end method
