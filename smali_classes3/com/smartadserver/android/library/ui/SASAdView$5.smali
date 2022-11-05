.class Lcom/smartadserver/android/library/ui/SASAdView$5;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;J)V
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
    .line 2222
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setVisibility(I)V

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->u(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->setVisibility(I)V

    .line 2229
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setScrollListenerEnabled(Z)V

    .line 2230
    return-void
.end method
