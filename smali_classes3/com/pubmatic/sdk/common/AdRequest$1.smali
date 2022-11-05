.class Lcom/pubmatic/sdk/common/AdRequest$1;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/AdRequest;->retrieveAndroidAid(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/common/AdRequest;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/AdRequest;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdRequest$1;->this$0:Lcom/pubmatic/sdk/common/AdRequest;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/AdRequest$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pubmatic/sdk/common/AdRequest;->mUDID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
