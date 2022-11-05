.class public Lcom/madsdk/gson/response/NativeAdResponse;
.super Ljava/lang/Object;
.source "NativeAdResponse.java"


# instance fields
.field public cur:Ljava/lang/String;

.field public ext:Lcom/madsdk/gson/response/ExtResponse;

.field public id:Ljava/lang/String;

.field public nbr:Ljava/lang/String;

.field public seatbid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/response/SeatBid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
