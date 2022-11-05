.class Lcom/mdotm/android/vast/VastInterstitialActivity$2;
.super Landroid/webkit/WebViewClient;
.source "VastInterstitialActivity.java"


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
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    .line 213
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inside reciecve error"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$3(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$4(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V

    .line 220
    return-void
.end method
