.class Lcom/smartadserver/android/library/controller/mraid/f$2;
.super Ljava/lang/Object;
.source "SASMRAIDVideoController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 279
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->n(Lcom/smartadserver/android/library/controller/mraid/f;)V

    .line 283
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->c(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    .line 294
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->c(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Lcom/smartadserver/android/library/controller/mraid/f;Z)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->o(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->o(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/smartadserver/android/library/f/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$2;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    goto :goto_0
.end method
