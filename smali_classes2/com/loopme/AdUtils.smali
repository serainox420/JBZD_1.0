.class public Lcom/loopme/AdUtils;
.super Ljava/lang/Object;
.source "AdUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/loopme/AdUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/AdUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startAdActivity(Lcom/loopme/BaseAd;)V
    .locals 3

    .prologue
    .line 13
    if-eqz p0, :cond_0

    .line 14
    sget-object v0, Lcom/loopme/AdUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Starting Ad Activity"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/loopme/LoopMeAdHolder;->putAd(Lcom/loopme/BaseAd;)V

    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/loopme/AdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    const-string v1, "appkey"

    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getAdFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    :cond_0
    return-void
.end method
