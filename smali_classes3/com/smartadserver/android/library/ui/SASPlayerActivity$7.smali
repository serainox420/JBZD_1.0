.class Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;
.super Ljava/lang/Object;
.source "SASPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/SASPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->l(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->l(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/smartadserver/android/library/f/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->m(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->finish()V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->m(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$7;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->j(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)V

    goto :goto_0
.end method
