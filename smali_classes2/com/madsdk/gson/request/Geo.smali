.class public Lcom/madsdk/gson/request/Geo;
.super Ljava/lang/Object;
.source "Geo.java"


# instance fields
.field public lat:Ljava/lang/String;

.field public lon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/madsdk/gson/request/Geo;->lat:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/madsdk/gson/request/Geo;->lon:Ljava/lang/String;

    .line 13
    return-void
.end method
