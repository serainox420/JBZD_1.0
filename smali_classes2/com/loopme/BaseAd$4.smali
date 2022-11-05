.class Lcom/loopme/BaseAd$4;
.super Ljava/lang/Object;
.source "BaseAd.java"

# interfaces
.implements Lcom/loopme/common/ExpirationTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/BaseAd;->startExpirationTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/BaseAd;


# direct methods
.method constructor <init>(Lcom/loopme/BaseAd;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/loopme/BaseAd$4;->this$0:Lcom/loopme/BaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/loopme/BaseAd$4;->this$0:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->onAdExpired()V

    .line 343
    return-void
.end method
