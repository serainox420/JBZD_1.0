.class Lcom/smartadserver/android/library/ui/SASAdView$34;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 1109
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1113
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1114
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$34;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$34$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$34$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$34;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 1123
    return-void
.end method
