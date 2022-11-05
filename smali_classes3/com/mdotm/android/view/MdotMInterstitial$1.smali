.class Lcom/mdotm/android/view/MdotMInterstitial$1;
.super Ljava/lang/Object;
.source "MdotMInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMInterstitial;->finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMInterstitial;

.field private final synthetic val$vastAd:Lcom/mdotm/android/vast/VastAd;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMInterstitial;Lcom/mdotm/android/vast/VastAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitial$1;->this$0:Lcom/mdotm/android/view/MdotMInterstitial;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMInterstitial$1;->val$vastAd:Lcom/mdotm/android/vast/VastAd;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitial$1;->val$vastAd:Lcom/mdotm/android/vast/VastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastAd;->getError()Ljava/util/ArrayList;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 338
    :cond_0
    return-void

    .line 332
    :cond_1
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v3

    .line 333
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMInterstitial$1;->this$0:Lcom/mdotm/android/view/MdotMInterstitial;

    invoke-static {v4}, Lcom/mdotm/android/view/MdotMInterstitial;->access$0(Lcom/mdotm/android/view/MdotMInterstitial;)Landroid/app/Activity;

    move-result-object v4

    .line 332
    invoke-virtual {v3, v0, v4}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "fire error code"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
