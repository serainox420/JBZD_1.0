.class Lcom/mdotm/android/view/MdotMInterstitialImageView$3;
.super Ljava/lang/Thread;
.source "MdotMInterstitialImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMInterstitialImageView;->initializeAdView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

.field private final synthetic val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 274
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMInterstitialImageView$3;)Lcom/mdotm/android/view/MdotMInterstitialImageView;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    .line 279
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getOriginalImageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 278
    invoke-static {v1, v2, v3}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$7(Lcom/mdotm/android/view/MdotMInterstitialImageView;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    .line 280
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMInterstitialImageView$3$1;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v1, p0, v2}, Lcom/mdotm/android/view/MdotMInterstitialImageView$3$1;-><init>(Lcom/mdotm/android/view/MdotMInterstitialImageView$3;Lcom/mdotm/android/model/MdotMAdResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method
