.class Lcom/smartadserver/android/library/controller/mraid/f$5;
.super Ljava/lang/Object;
.source "SASMRAIDVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/controller/mraid/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/f;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->q(Lcom/smartadserver/android/library/controller/mraid/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentPosition()I

    move-result v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Lcom/smartadserver/android/library/controller/mraid/f;I)I

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->r(Lcom/smartadserver/android/library/controller/mraid/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->b(Lcom/smartadserver/android/library/controller/mraid/f;Z)Z

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->s(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
