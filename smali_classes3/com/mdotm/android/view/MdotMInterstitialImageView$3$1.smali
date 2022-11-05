.class Lcom/mdotm/android/view/MdotMInterstitialImageView$3$1;
.super Ljava/lang/Object;
.source "MdotMInterstitialImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/view/MdotMInterstitialImageView$3;

.field private final synthetic val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMInterstitialImageView$3;Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3$1;->this$1:Lcom/mdotm/android/view/MdotMInterstitialImageView$3;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3$1;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3$1;->this$1:Lcom/mdotm/android/view/MdotMInterstitialImageView$3;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->access$0(Lcom/mdotm/android/view/MdotMInterstitialImageView$3;)Lcom/mdotm/android/view/MdotMInterstitialImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3$1;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3$1;->this$1:Lcom/mdotm/android/view/MdotMInterstitialImageView$3;

    invoke-static {v2}, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->access$0(Lcom/mdotm/android/view/MdotMInterstitialImageView$3;)Lcom/mdotm/android/view/MdotMInterstitialImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/mdotm/android/view/MdotMInterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->displayImageView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/graphics/Bitmap;)V

    .line 287
    return-void
.end method
