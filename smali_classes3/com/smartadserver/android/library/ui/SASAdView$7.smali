.class Lcom/smartadserver/android/library/ui/SASAdView$7;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Z)V
    .locals 0

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-boolean p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->v(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2351
    return-void

    .line 2350
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
