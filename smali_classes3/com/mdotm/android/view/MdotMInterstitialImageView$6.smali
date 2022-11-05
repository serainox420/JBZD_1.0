.class Lcom/mdotm/android/view/MdotMInterstitialImageView$6;
.super Ljava/lang/Thread;
.source "MdotMInterstitialImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMInterstitialImageView;->hideActivityIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$6;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    .line 615
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$6;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$10(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$6;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$10(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 623
    :cond_0
    return-void
.end method
