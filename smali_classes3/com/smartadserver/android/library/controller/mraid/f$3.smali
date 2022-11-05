.class Lcom/smartadserver/android/library/controller/mraid/f$3;
.super Ljava/lang/Object;
.source "SASMRAIDVideoController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 297
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$3;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$3;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    const-string v1, "Cannot play movie!"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Lcom/smartadserver/android/library/controller/mraid/f;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$3;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->n(Lcom/smartadserver/android/library/controller/mraid/f;)V

    .line 302
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$3;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->p(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$3;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->p(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$3;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    .line 305
    const/4 v0, 0x1

    return v0
.end method
