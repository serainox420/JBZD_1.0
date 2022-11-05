.class Lcom/mdotm/android/vast/VastInterstitialActivity$8;
.super Ljava/lang/Object;
.source "VastInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->getVideoLayout()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

.field private final synthetic val$linearAd:Lcom/mdotm/android/vast/LinearAd;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;Lcom/mdotm/android/vast/LinearAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iput-object p2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->val$linearAd:Lcom/mdotm/android/vast/LinearAd;

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 694
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->val$linearAd:Lcom/mdotm/android/vast/LinearAd;

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v0, v0, Lcom/mdotm/android/vast/VastIcons;->iconClickTracking:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 695
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->val$linearAd:Lcom/mdotm/android/vast/LinearAd;

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v0, v0, Lcom/mdotm/android/vast/VastIcons;->iconClickTracking:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clicked to migrate icon url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->val$linearAd:Lcom/mdotm/android/vast/LinearAd;

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v1, v1, Lcom/mdotm/android/vast/VastIcons;->iconClickThrough:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 700
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->val$linearAd:Lcom/mdotm/android/vast/LinearAd;

    iget-object v2, v2, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v2, v2, Lcom/mdotm/android/vast/VastIcons;->iconClickThrough:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 699
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 701
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_1
    return-void

    .line 696
    :cond_1
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->val$linearAd:Lcom/mdotm/android/vast/LinearAd;

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v0, v0, Lcom/mdotm/android/vast/VastIcons;->iconClickTracking:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$8;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v3}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 695
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
