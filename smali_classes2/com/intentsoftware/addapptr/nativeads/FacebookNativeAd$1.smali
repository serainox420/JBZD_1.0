.class Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$1;
.super Ljava/lang/Object;
.source "FacebookNativeAd.java"

# interfaces
.implements Lcom/facebook/ads/ImpressionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->createImpressionListener()Lcom/facebook/ads/ImpressionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V

    .line 38
    return-void
.end method
