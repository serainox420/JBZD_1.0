.class Lcom/smartadserver/android/library/controller/mraid/f$4;
.super Ljava/lang/Object;
.source "SASMRAIDVideoController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 309
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$4;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$4;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->p(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 313
    return-void
.end method
