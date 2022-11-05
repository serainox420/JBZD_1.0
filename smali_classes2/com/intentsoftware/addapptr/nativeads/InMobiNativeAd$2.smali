.class Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;
.super Ljava/lang/Object;
.source "InMobiNativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->attachToLayout(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$100(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)Lcom/inmobi/monetization/IMNative;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMNative;->handleClick(Ljava/util/HashMap;)V

    .line 121
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$1100(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)V

    .line 122
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$800(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$800(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$1200(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    :cond_0
    return-void
.end method
