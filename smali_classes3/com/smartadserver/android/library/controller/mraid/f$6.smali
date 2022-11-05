.class Lcom/smartadserver/android/library/controller/mraid/f$6;
.super Ljava/lang/Object;
.source "SASMRAIDVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 332
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$6;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$6;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$6;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->t(Lcom/smartadserver/android/library/controller/mraid/f;)V

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$6;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->u(Lcom/smartadserver/android/library/controller/mraid/f;)V

    .line 339
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$6;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Lcom/smartadserver/android/library/controller/mraid/f;Z)V

    goto :goto_0
.end method
