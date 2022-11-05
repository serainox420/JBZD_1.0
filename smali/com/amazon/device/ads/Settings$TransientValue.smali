.class Lcom/amazon/device/ads/Settings$TransientValue;
.super Lcom/amazon/device/ads/Settings$Value;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransientValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 597
    iput-object p1, p0, Lcom/amazon/device/ads/Settings$TransientValue;->this$0:Lcom/amazon/device/ads/Settings;

    .line 598
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/Settings$TransientValue;->isTransientData:Z

    .line 600
    return-void
.end method
