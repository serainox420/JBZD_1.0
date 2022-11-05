.class Lcom/smartadserver/android/library/ui/SASCloseButton$2;
.super Ljava/lang/Object;
.source "SASCloseButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASCloseButton;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASCloseButton;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASCloseButton;Z)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    iput-boolean p2, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->a:Z

    if-eqz v0, :cond_0

    .line 273
    const-wide/16 v0, 0xfa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASCloseButton;->b(Lcom/smartadserver/android/library/ui/SASCloseButton;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 274
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v2, v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(Lcom/smartadserver/android/library/ui/SASCloseButton;J)J

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->c(Lcom/smartadserver/android/library/ui/SASCloseButton;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->d(Lcom/smartadserver/android/library/ui/SASCloseButton;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->d(Lcom/smartadserver/android/library/ui/SASCloseButton;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->e(Lcom/smartadserver/android/library/ui/SASCloseButton;)Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setVisibility(I)V

    .line 289
    :goto_1
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(Lcom/smartadserver/android/library/ui/SASCloseButton;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->d(Lcom/smartadserver/android/library/ui/SASCloseButton;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;->b:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASCloseButton;->c(Lcom/smartadserver/android/library/ui/SASCloseButton;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
