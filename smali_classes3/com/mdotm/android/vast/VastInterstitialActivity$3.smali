.class Lcom/mdotm/android/vast/VastInterstitialActivity$3;
.super Ljava/lang/Object;
.source "VastInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch Companoin:: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$0(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$1(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V

    .line 237
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$3;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$2(Lcom/mdotm/android/vast/VastInterstitialActivity;)V

    .line 240
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
