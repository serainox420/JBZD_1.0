.class Lcom/smartadserver/android/library/ui/SASAdView$33;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1034
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setEnableStateChangeEvent(Z)V

    .line 1035
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/d;->setInAppBrowserMode(Z)V

    .line 1036
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonVisibility(I)V

    .line 1037
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->expand(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->setEnableStateChangeEvent(Z)V

    .line 1039
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$33;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    .line 1040
    return-void
.end method
