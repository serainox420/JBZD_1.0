.class Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;
.super Ljava/lang/Object;
.source "MoPubNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->createLoadListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$1100(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 7

    .prologue
    .line 100
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$002(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Lcom/mopub/nativeads/BaseNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    .line 101
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    instance-of v0, v0, Lcom/mopub/nativeads/StaticNativeAd;

    if-eqz v0, :cond_3

    .line 102
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    const-string v2, "headline"

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$100(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    const-string v2, "description"

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    const-string v2, "cta"

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$300(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    const-string v2, "icon"

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$400(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    const-string v2, "main"

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$500(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    iget-object v6, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/ad/NativeAd$a;-><init>(Lcom/intentsoftware/addapptr/ad/NativeAd;DD)V

    invoke-static {v6, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$600(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$702(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/StaticNativeAd;->getPrivacyInformationIconImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$700(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$802(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$900(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V

    .line 127
    :goto_1
    return-void

    .line 118
    :cond_2
    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$800(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/m;->loadBitmapForView(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    const-string v1, "Unsupported type of native ad returned."

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$1000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;)V

    goto :goto_1
.end method
