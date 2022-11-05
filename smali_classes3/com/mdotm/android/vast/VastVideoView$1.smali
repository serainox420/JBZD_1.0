.class Lcom/mdotm/android/vast/VastVideoView$1;
.super Ljava/lang/Object;
.source "VastVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastVideoView;->prepareVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastVideoView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView$1;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$1;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$1;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$10(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onPlayError()V

    .line 84
    :cond_0
    return-void
.end method
