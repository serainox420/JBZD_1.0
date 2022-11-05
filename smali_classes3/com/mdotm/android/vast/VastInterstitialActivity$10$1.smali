.class Lcom/mdotm/android/vast/VastInterstitialActivity$10$1;
.super Ljava/lang/Object;
.source "VastInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/vast/VastInterstitialActivity$10;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10$1;->this$1:Lcom/mdotm/android/vast/VastInterstitialActivity$10;

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10$1;->this$1:Lcom/mdotm/android/vast/VastInterstitialActivity$10;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->access$0(Lcom/mdotm/android/vast/VastInterstitialActivity$10;)Lcom/mdotm/android/vast/VastInterstitialActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$33(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 882
    return-void
.end method
