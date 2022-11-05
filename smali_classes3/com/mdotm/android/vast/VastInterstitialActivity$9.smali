.class Lcom/mdotm/android/vast/VastInterstitialActivity$9;
.super Ljava/lang/Thread;
.source "VastInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->clicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

.field private final synthetic val$clickedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iput-object p2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->val$clickedUrl:Ljava/lang/String;

    .line 791
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 794
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->adClicked()V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clicked to migrate url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->val$clickedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 798
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->val$clickedUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 797
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 799
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$22(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$9;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$22(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V

    .line 816
    :cond_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
