.class Lcom/mdotm/android/view/MdotMInterstitialImageView$2;
.super Ljava/lang/Object;
.source "MdotMInterstitialImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMInterstitialImageView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V
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
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$2;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$2;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$4(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$2;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$5(Lcom/mdotm/android/view/MdotMInterstitialImageView;Z)V

    .line 206
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$2;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setClickable(Z)V

    .line 207
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$2;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$2;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$6(Lcom/mdotm/android/view/MdotMInterstitialImageView;Landroid/content/Context;)V

    .line 210
    :cond_0
    return-void
.end method
