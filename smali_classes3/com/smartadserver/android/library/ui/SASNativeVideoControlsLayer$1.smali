.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;
.super Ljava/lang/Object;
.source "SASNativeVideoControlsLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v3

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 129
    :goto_1
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    return-void

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_1

    :cond_2
    move v1, v2

    .line 129
    goto :goto_2
.end method
