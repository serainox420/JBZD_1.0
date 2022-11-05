.class Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;
.super Ljava/lang/Object;
.source "SASPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 202
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->b()V

    .line 207
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->k(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->k(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/smartadserver/android/library/f/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->a(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->a()V

    .line 212
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->k(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASPlayerActivity$6;->a:Lcom/smartadserver/android/library/ui/SASPlayerActivity;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASPlayerActivity;->k(Lcom/smartadserver/android/library/ui/SASPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/smartadserver/android/library/f/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
