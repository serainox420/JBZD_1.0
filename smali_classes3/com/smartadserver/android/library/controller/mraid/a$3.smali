.class Lcom/smartadserver/android/library/controller/mraid/a$3;
.super Ljava/lang/Object;
.source "SASMRAIDController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a;->resize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/smartadserver/android/library/controller/mraid/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a;IIII)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    iput p2, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->a:I

    iput p3, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->b:I

    iput p4, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->c:I

    iput p5, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 379
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v1, "resized"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;Ljava/lang/String;Z)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->a:I

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->b:I

    iget v4, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->c:I

    iget v5, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->d:I

    iget-object v7, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v7}, Lcom/smartadserver/android/library/controller/mraid/a;->d(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/d;

    move-result-object v7

    iget-boolean v7, v7, Lcom/smartadserver/android/library/controller/mraid/d;->f:Z

    const-string v9, "none"

    move v8, v6

    move v10, v6

    invoke-virtual/range {v0 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V

    .line 393
    const-string v0, "none"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->d(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/d;

    move-result-object v1

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$3$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a$3$1;-><init>(Lcom/smartadserver/android/library/controller/mraid/a$3;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->d(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonPosition(I)V

    .line 403
    :cond_1
    return-void
.end method
