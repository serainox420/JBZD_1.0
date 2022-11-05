.class final Lcom/amazon/device/ads/CalendarEventParameters$1;
.super Ljava/util/ArrayList;
.source "CalendarEventParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/CalendarEventParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const-string v0, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "yyyy-MM-dd\'T\'HH:mm"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
