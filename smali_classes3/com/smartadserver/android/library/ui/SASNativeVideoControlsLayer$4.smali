.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;
.super Ljava/lang/Object;
.source "SASNativeVideoControlsLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setPlaying(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;ZZ)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iput-boolean p2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;->a:Z

    iput-boolean p3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/ImageView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;->b:Z

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b(Z)V

    .line 223
    return-void

    .line 221
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
