.class Lcom/amazon/device/ads/Settings$Value;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Value"
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public isTransientData:Z

.field final synthetic this$0:Lcom/amazon/device/ads/Settings;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
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
    .line 580
    iput-object p1, p0, Lcom/amazon/device/ads/Settings$Value;->this$0:Lcom/amazon/device/ads/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p2, p0, Lcom/amazon/device/ads/Settings$Value;->clazz:Ljava/lang/Class;

    .line 582
    iput-object p3, p0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    .line 583
    return-void
.end method
